program token_7888.aleo;

record token:
    owner as address.private;
    balance as u32.private;


function mint:
    input r0 as u32.private;
    cast self.caller r0 into r1 as token.record;
    output r1 as token.record;


function transfer:
    input r0 as address.private;
    input r1 as u32.private;
    input r2 as token.record;
    sub r2.balance r1 into r3;
    cast r0 r1 into r4 as token.record;
    cast self.caller r3 into r5 as token.record;
    output r4 as token.record;
    output r5 as token.record;
