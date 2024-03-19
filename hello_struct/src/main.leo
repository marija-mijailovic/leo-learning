// The 'hello_struct' program.
program hello_struct.aleo {

    record token {
        owner: address,
        amount: u32
      }

    struct message {
      sender: address,
      amount: u32
    }

    transition main(public sender: address, public a: u32) -> message {
       assert(a > 0u32);
       return message {
          sender: sender,
          amount: a
        };
    }

    transition mint(owner: address, amount: u32) -> token {
        assert(amount >0u32);
        return token {
            owner: owner,
            amount: amount
          };
      }
}
