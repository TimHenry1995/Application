classdef Phenotype
    %PHENOTYPE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        inputOutputNeuronCount;
        theta1;
        theta2;
    end
    
    methods
        function obj = Phenotype(genotype, inputOutputNeuronCount)
            %PHENOTYPE Construct an instance of this class
            %   Detailed explanation goes here
            obj.inputOutputNeuronCount = inputOutputNeuronCount;
            obj.theta1 = genotype.synapseInitializer.call(genotype.activationFunction.scale, inputOutputNeuronCount, genotype.networkSize.hiddenNeuronCount);
            obj.theta2 = genotype.synapseInitializer.call(genotype.activationFunction.scale, genotype.networkSize.hiddenNeuronCount, inputOutputNeuronCount);
        end
    end
end