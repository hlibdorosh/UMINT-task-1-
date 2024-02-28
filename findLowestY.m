function findLowestY(xp, step)
    k = 1;
    yp = 0.2 * xp.^4 + 0.2 * xp.^3 - 4 * xp.^2 + 10;

    % Define the range for x
    x_range = linspace(-6, 6, 100); % Adjust the number of points (100 in this case) as needed

    % Calculate the corresponding y values for your function (example: y = x^2)
    y = 0.2 * x_range.^4 + 0.2 * x_range.^3 - 4 * x_range.^2 + 10;

    % Plot the function
    plot(x_range, y);

    % Mark the point (xp, yp) with a '*'
    hold on;
    plot(xp, yp, 'o', 'MarkerSize', 5, 'Color', 'r');
    hold off;

    % Add labels and title
    xlabel('x');
    ylabel('y');
    title('Graph of y = 0.2x^4 + 0.2x^3 - 4x^2 + 10');



    % Add grid for better readability
    grid on;

    while k ~= 0
        yp = 0.2 * xp.^4 + 0.2 * xp.^3 - 4 * xp.^2 + 10;
        xsp = xp + step;
        xsm = xp - step;
        ysp = 0.2 * xsp.^4 + 0.2 * xsp.^3 - 4 * xsp.^2 + 10;
        ysm = 0.2 * xsm.^4 + 0.2 * xsm.^3 - 4 * xsm.^2 + 10;
        hold on;
        plot(xp, yp, '.', 'MarkerSize', 7, 'Color', 'r');
        hold off;
        

        if ysm < yp
            if ysm < ysp
                yp = ysm;
                xp = xsm;
            else
                ysp = yp;
                xsp = xp;
            end
        end

        if ysp < yp
            yp = ysp;
            xp = xsp;
        elseif ysm < yp
            ysm = yp;
            xsm = xp;
        elseif yp < ysm
            k = 0;
        end
        xp
    end

    xp
    yp

    hold on;
    plot(xp, yp, '*', 'MarkerSize', 10, 'Color', 'r');
    hold off;


end
