const std = @import("std");
const expect = std.testing.expect;

test "always succeeds" {
    try expect(true);
}

test "always fails" {
    try expect(false);
}
