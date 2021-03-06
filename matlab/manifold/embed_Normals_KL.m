% setting parameters

figure(1)
clf;

params.n1 = 15;
params.n2 = 15;
params.min_theta1 = -2;
params.max_theta1 = 2;
params.min_theta2 = 0.1;
params.max_theta2 = 1;

div = @div_spherical_Normal;
[X,thetas,parallel_edges,D,P] = embed_manifold(params,div);

draw_results(X,thetas,parallel_edges)
offset = 0.2;
text(X(1,1)-0.1,X(1,2)+0.1,'(-2,0.1)','HorizontalAlignment','right')
text(X(end-params.n2+1,1)+0.1,X(end-params.n2+1,2)+0.1,'(2,0.1)','HorizontalAlignment','left')
text(X(params.n1,1)+0.1,X(params.n1,2),'(-2,1)','HorizontalAlignment','left')
text(X(end,1)-0.1,X(end,2),'(2,1)','HorizontalAlignment','right')
colorbar
