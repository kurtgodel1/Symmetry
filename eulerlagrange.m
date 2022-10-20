function EL=eulerlagrange(L,q,qdot,t)
    EL=diff(L,q)-diff(diff(L,qdot),t)==0;
end