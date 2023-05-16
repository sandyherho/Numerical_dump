function divergence()

    syms x y 

    %clear all---------------------------------------------------------------

    close all
    clc

    %request user function---------------------------------------------------

    prompt = 'Enter a i component of vector field:  ';
    x_in=input(prompt);
    prompt = 'Enter a j component of vector field:  ';
    y_in=input(prompt);


    %plot figure 1 vector field----------------------------------------------

    figure(1)
    [X,Y] = meshgrid(-2:.4:2,-2:.4:2);
    F1=subs(x_in, [x y],{X,Y});
    F2=subs(y_in, [x y],{X,Y});
    set(gcf,'units','normalized','position',[0.6 0.2 0.35 0.4]);
    quiver(X,Y,F1,F2,1,'color',[0 0 1],'linewidth', 2)
    shading flat
    xlabel('ix')
    ylabel('jy')
    title(sprintf('Vector Field = i [%s] +j [%s] \n', x_in,y_in))


    %calculate divergence----------------------------------------------------

    field = [x_in y_in];
    vars = [x y];
    div=divergence(field,vars);

    %plot figure 2 divergence of vector field--------------------------------

    figure(2)
    set(gcf,'units','normalized','position',[0.2 0.2 0.3 0.5]);
    shading interp;
    axis equal;
    box on
    view(-26,52);
    fsurf(div,[-2,2,-2,2])
    xlabel('x')
    ylabel('y')
    zlabel('div');
    title('Divergence');
    title(sprintf(['Divergence =    %s'],div))
    colorbar
    hold off
end