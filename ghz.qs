namespace GHZ {
    open Microsoft.Quantum.Arrays;
    
    operation GHZ_State (qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        
        for q in Rest(qs) {
            CNOT(qs[0], q);
        }
    }
}
