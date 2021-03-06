#!/usr/bin/env ruby
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

class SwapUsage
  def initialize(options)
    @processes = {}
    @reverse   = options[:reverse]
    @number    = options[:number]
  end

  def get_processes
    Dir['/proc/[0-9]*'].map do |pid_dir|
      begin
        pid  = File.basename(pid_dir).to_i
        cmd  = File.read("#{pid_dir}/cmdline").tr("\x00", ' ').strip
        swap = File.read("#{pid_dir}/status")[/^VmSwap:\s+([0-9]+)\s+kB$/, 1].to_i

        @processes[pid] = { cmd: cmd, swap: swap } if swap.positive?
      rescue Errno::ENOENT
        next
      end
    end
  end

  def show
    @processes = @processes.sort_by { |_, v| v[:swap] }
    @processes = @processes.reverse if @reverse
    @processes = @processes.first(@number) if @number

    @processes.each do |pid, values|
      puts "#{values[:swap]} kB [#{pid}] #{values[:cmd]}"
    end
  end

  def run
    get_processes
    show
  end
end
