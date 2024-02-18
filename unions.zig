const Result = union {
    int: i64,
    float: f64,
    bool: bool,
};

test "simple union" {
    var result = Result{ .int = 1234 };
    // result.float = 12.34;
    result.int = 12;
}

const expect = @import("std").testing.expect;

const Tag = enum { a, b, c };

const Tagged = union(Tag) { a: u8, b: f32, c: bool };

test "switch on tagged union" {
    var value = Tagged{ .b = 1.5 };
    switch (value) {
        .a => |*byte| byte.* += 1,
        .b => |*float| float.* *= 2,
        .c => |*b| b.* = !b.*,
    }
    try expect(value.b == 3);
}

const Tagged2 = union(enum) {
    a: u8,
    b: f32,
    c: bool,
    var count: u32 = 0;
};

test "switch on tagged union 2" {
    var value = Tagged2.count;
    value = 3;
    try expect(value == 3);
}
