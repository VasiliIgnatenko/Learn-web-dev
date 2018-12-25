contract ERC20Interface {
    function totalSupply() public view returns (uint);
    function balanceOf(address tokenOwner) public view returns (uint balance);
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
    
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

contract IPS is ERC20Interface {
    string public name = "IPSFIN";
    string public name = "IPS";
    uint public decimals = 18;

    uint public supply;
    address public founder;

    mapping (address => uint) public balances;

    event Transfer(address indexed from, address indexed to, uint tokens);

    constructor() public {
        supply = 1000000;
        founder = msg.sender;
        balances[founder] = supply;
    }

    function totalSupply() public view returns (uint) {
        return supply;
    }

    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balanceOf[tokenOwner];
    }

    function transfer(address to, uint tokens) public returns (bool success) {
        require(balances[msg.sender] >= tokens && tokens > 0);

        balances[to] += tokens;
        balances[msg.sender] -= tokens;
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
}