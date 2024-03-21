// The 'token_7888' program.
program token_7888.aleo {
  record token {
    owner: address,
    balance: u32
  }

  transition mint(balance: u32) -> token {
    return token {
        owner: self.caller,
        balance: balance
      };
  }

  transition transfer(receiver: address, amount: u32, input: token) -> (token, token) {
    let balance: u32 = input.balance - amount;
    let recipient: token = token {
        owner: receiver,
        balance: amount
      };
    let sender: token = token {
        owner: self.caller,
        balance
      };

    return (recipient, sender);
  }
}
