instance LexiconEng of Lexicon = 
    open LexemeEng, Prelude, TypesEng, UtilsEng in {
  oper
    fast = mkAdj "fast";
    hungry = mkAdj "hungry";
    tall = mkAdj "tall";

    boy = mkN_ Masc "boy";
    dog = mkN_ "dog";
    hunger = mkN_ True "hunger";
    name = mkN_ "name";
    picture = mkN_ "picture";
    student = mkN_ Masc "student";
    woman = mkN_ False Fem "woman" "women";

    alice = mkProperN Fem "Alice";
    bob = mkProperN Masc "Bob";
    eve = mkProperN Fem "Eve";
    joe = mkProperN Masc "Joe";

    beAdj = beVerb;
    beNP = beVerb;
    callSomeone = mkV "call";
    callSomeoneSomething = mkV "call";
    do = mkV "do" "done" "did";
    have = mkV "have" "having" "had" "have" "have" "has" "had" "had";
    meet = mkV "meet" "met";    
    see = mkV "see" "seen" "saw";
    sleep = mkV "sleep" "slept";
    take = mkV "take" "taken" "took";
}
