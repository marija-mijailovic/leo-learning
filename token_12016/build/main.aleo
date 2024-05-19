program token_12016.aleo;

record token:
    owner as address.private;
    amount as u64.private;


mapping account:
	key as address.public;
	value as u64.public;

function mint:
    input r0 as address.private;
    input r1 as u64.private;
    async mint r0 r1 into r2;
    output r2 as token_12016.aleo/mint.future;

finalize mint:
    input r0 as address.public;
    input r1 as u64.public;
    get.or_use account[r0] 0u64 into r2;
    add r2 r1 into r3;
    set r3 into account[r0];


function balance:
    input r0 as address.private;
    async balance r0 into r1;
    output r1 as token_12016.aleo/balance.future;

finalize balance:
    input r0 as address.public;
    get account[r0] into r1;
