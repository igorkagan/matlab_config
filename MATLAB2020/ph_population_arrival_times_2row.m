function ph_population_arrival_times_2row(matfile)

load(matfile);
num_neurons = numel(population); % Get the number of neurons

% Transpose arrival times for each trial of each neuron
for i = 1:num_neurons
    % Extracting all trials for neuron i
    trials = population(i).trial;

    % Converting 'arrival_times' of each trial to a row vector
    % The output will be a cell array
    arrival_times_row = cellfun(@(x) x', {trials.arrival_times}, 'UniformOutput', false);

    % Reassigning the modified 'arrival_times' back to the structure
    [population(i).trial.arrival_times] = deal(arrival_times_row{:});
end

save([matfile(1:end-4) '_row.mat'],'population');
