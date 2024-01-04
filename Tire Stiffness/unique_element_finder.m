function [unique_samples,kept_ind,left_ind] = unique_element_finder(input_data)
    unique_samples = [];
    kept_ind = [];
    left_ind = [];
    for i = 1:length(input_data)
        test = ismembertol(input_data(i),unique_samples,1e-6);
        if test == 0
            unique_samples = [unique_samples;input_data(i)];
            kept_ind = [kept_ind;i];
        else
            left_ind = [left_ind;i];
        end
    end
end