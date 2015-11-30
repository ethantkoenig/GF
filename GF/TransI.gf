incomplete concrete TransI of Trans = 
    open Grammar, Lexicon in {
  param
    ArgType = ArVoid | ArNP | ArAdj | ArNPNP;
  lincat
    AbsArgType = {a : ArgType};
    AbsArgStructure = ArgStructure;
  
    AbsAdj = Adj;

    AbsCP = CP;

    AbsD = D;

    AbsNP = NP;
    AbsProNP = ProNP;
    AbsReflexive = Reflexive;
    AbsProperN = ProperN;
    AbsN' = N';
    AbsN = N;
    AbsN_ = N_;

    AbsS_ = S_;
    AbsS = S;

    AbsVP = VP;
    AbsVP_ = VP_;
    AbsVP__ = VP__;
    AbsV' = V';
    AbsV = V;
  lin
    MakeNP = mkNP;
    Possessive = possessive;
    NPofProNP = npOfProNP;
    NPofReflexive = npOfReflexive;
    NPofProperN = npOfProperN;
    MakeN' = mkN';
    AdjoinN'Adj = adjoinN'Adj;
    AdjoinN'CP = adjoinN'CP;
    MakeVP__ = mkVP__;
    MakeV' _ v args = mkV' v args;

    MakeS_ = mkS_;
    MakeCP = mkCP;  

    ArgVoid = {a = ArVoid};
    ArgNP = {a = ArNP};
    ArgAdj = {a = ArAdj};
    ArgNPNP = {a = ArNPNP};

    Self = reflexive;
    NullNP = nullNP;
    Singular = singular;
    Plural = plural;

    Declarative = declarative;
    Interrogative = interrogative;

    Positive = positive;
    Negative = negative;
    Present = present;
    Past = past;
    Future = future;
    Cond = cond;
    AuxBe = auxBe;   
    AuxHave = auxHave;

    MakeArgVoid = mkArgVoid;
    MakeArgNP = mkArgNP;
    MakeArgAdj = mkArgAdj;
    MakeArgNPNP = mkArgNPNP;

    Fast = fast;
    Hungry = hungry;
    Tall = tall;

    A = indefinite;
    The = definite;
    VoidD = voidD;
  
    Boy = boy;
    Dog = dog;
    Hunger = hunger;
    Name = name;
    Picture = picture;
    Student = student;
    Woman = woman;

    Alice = alice;
    Bob = bob;
    Eve = eve;
    Joe = joe;

    I = i;
    You = you;
    He = he;
    She = she;
    We = we;
    Yall = yall;
    They = they; 

    BeAdj = beAdj;
    BeNP = beNP;
    CallSomeone = callSomeone;
    CallSomeoneSomething = callSomeoneSomething;
    Do = do;
    Have = have;
    Meet = meet;
    See = see;
    Sleep = sleep;
    Take = take;
}
