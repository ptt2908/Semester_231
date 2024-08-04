%Du lieu huan luyen mang NN
K = length(u); %so mau du lieu
X = [e(2:K)'; e(1:K-1)'];
D = [u(2:K)'];

%Khoi tao mang NN va huan luyen
N = 300; % so no ron o lop an
mynet = newff(X,D,N,{'tansig' 'purelin'});
mynet = train(mynet,X,D);

gensim(mynet); %tao khoi Simulink thuc hien NN vua huan luyen


