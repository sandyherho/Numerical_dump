function vector_function()
    syms x y z

    %clear all---------------------------------------------------------------

    close all
    clc

    %request user function---------------------------------------------------

    prompt = 'Enter a i component of vector field:  ';
    x_in=input(prompt);
    prompt = 'Enter a j component of vector field:  ';
    y_in=input(prompt);
    prompt = 'Enter a k component of vector field:  ';
    z_in=input(prompt);
    V = [x_in,y_in,z_in];

    %plot figure 1 vector field------------------------------------------------

    figure(1)
    [X,Y,Z] = meshgrid(-2.4:.4:2.4,-2.4:.4:2.4,-2.4:.4:2.4);

    X = X(X~=0);
    Y = Y(Y~=0);
    Z = Z(Z~=0);

    F1=subs(x_in, [x y],{X,Y});
    F2=subs(y_in, [x y],{X,Y});
    F3=subs(z_in, [x y],{X,Y});

    set(gcf,'units','normalized','position',[0.6 0.2 0.35 0.4]);
    quiver3(X,Y,Z,F1,F2,F3,2,'color',[0 0 1],'linewidth', 2)
    shading flat
    hold on
    xlabel('ix')
    ylabel('jy')
    title(sprintf('Vector Field = i[%s] +j[%s] +k[%s] \n',V(1),V(2),V(3)))
    hold off
end