// The 'token_12016' program.
program token_12016.aleo {
    mapping account: address => u64;

    record token {
        owner: address,
        amount: u64
      }
    
    transition mint(owner: address, amount: u64) {
        return then finalize(owner, amount);
    }

    finalize mint(owner: address, amount: u64) {
      let current_amount: u64 = Mapping::get_or_use(account, owner, 0u64);
      Mapping::set(account, owner, current_amount + amount);
    }

    transition balance(owner: address) -> u64 {
      return then finalize(owner);   
    }
    
    finalize balance(owner: address) {
      Mapping::get(account, owner);
    }
}
