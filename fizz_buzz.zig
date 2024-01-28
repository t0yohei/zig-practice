const std = @import("std");

fn fizzBussIf(max: u8) void {
    for (1..max + 1) |num| {
        if (num % 15 == 0) {
            std.debug.print("{} is FizzBuzz\n", .{num});
        } else if (num % 5 == 0) {
            std.debug.print("{} is Buzz\n", .{num});
        } else if (num % 3 == 0) {
            std.debug.print("{} is Fizz\n", .{num});
        } else {
            std.debug.print("{}\n", .{num});
        }
    }
}

fn fizzBussSwitch(max: u8) void {
    for (1..(max + 1)) |num| {
        const is_fizz: u2 = @intFromBool(num % 3 == 0);
        const is_buzz: u2 = @intFromBool(num % 5 == 0);
        switch (is_fizz + is_buzz * 2) {
            0b01 => {
                std.debug.print("{} is Fizz\n", .{num});
            },
            0b10 => {
                std.debug.print("{} is Buzz\n", .{num});
            },
            0b11 => {
                std.debug.print("{} is FizzBuzz\n", .{num});
            },
            else => {
                std.debug.print("{}\n", .{num});
            },
        }
    }
}

pub fn main() void {
    fizzBussIf(50);
    fizzBussSwitch(50);
}
