function minimizeFunction()

    % Objective Function
    objectiveFunction = @(x) -(x^2) + 4;

    % Genetic Algorithm Options
    options = optimoptions(@ga, 'MaxGenerations', 50, 'PopulationSize', 50);

    % Run Genetic Algorithm
    x = ga(objectiveFunction, 1, [], [], [], [], -10, 10, [], options);

    % Display Results
    fprintf('Optimal x: %.4f\n', x);
    fprintf('Optimal y: %.4f\n', -objectiveFunction(x));

end
