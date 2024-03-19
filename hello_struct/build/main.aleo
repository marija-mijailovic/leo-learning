program hello_struct.aleo;

record token:
    owner as address.private;
    amount as u32.private;

struct message:
    sender as address;
    amount as u32;


function main:
    input r0 as address.public;
    input r1 as u32.public;
    gt r1 0u32 into r2;
    assert.eq r2 true;
    cast r0 r1 into r3 as message;
    output r3 as message.private;


function mint:
    input r0 as address.private;
    input r1 as u32.private;
    gt r1 0u32 into r2;
    assert.eq r2 true;
    cast r0 r1 into r3 as token.record;
    output r3 as token.record;
