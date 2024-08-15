namespace GHZ {
    open Microsoft.Quantum.Arrays;
    
    operation GHZ_State (qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        
        // Library function Rest returns all array elements except for the first one
        for q in Rest(qs) {
            CNOT(qs[0], q);
        }
    }
}
