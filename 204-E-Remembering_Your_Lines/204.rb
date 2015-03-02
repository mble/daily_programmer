#!/usr/bin ruby

arr = IO.readlines('macbeth.txt')

p arr.map.detect{|x| x.include?("break")}
