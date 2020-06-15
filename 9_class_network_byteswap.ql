import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(MacroInvocation i |
        i.getMacroName().regexpMatch("ntoh(s|l|ll)")
        and this=i.getExpr()
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap" 
