function M=Mmatrix(J1,J2,J3,K1,K2,K3)
    M=cell(4);
    M(:)={sym(zeros(length(J1)))};
    
    M{1,2}=K1; M{2,1}=-K1;    
    M{1,3}=K2; M{3,1}=-K2;
    M{1,4}=K3; M{4,1}=-K3;
    
    M{3,4}=J1; M{4,3}=-J1;
    M{4,2}=J2; M{2,4}=-J2;
    M{2,3}=J3; M{3,2}=-J3;
    
end
