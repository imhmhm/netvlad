function paths= localPaths()
    
    % --- dependencies
    
    % refer to README.md for the information on dependencies
    
    paths.libReljaMatlab= '~/hengheng/retrieval/netvlad/relja_matlab/';
    paths.libMatConvNet= '~/matconvnet-1.0-beta25'; % should contain matlab/
    
    % If you have installed yael_matlab (**highly recommended for speed**),
    % provide the path below. Otherwise, provide the path as 'yael_dummy/':
    % this folder contains my substitutes for the used yael functions,
    % which are **much slower**, and only included for demonstration purposes
    % so do consider installing yael_matlab, or make your own faster
    % version (especially of the yael_nn function)
    paths.libYaelMatlab= '~/hengheng/retrieval/netvlad/yael_matlab/';
    
    % --- dataset specifications
    
    paths.dsetSpecDir= '~/hengheng/retrieval/netvlad/datasets/';
    
    % --- dataset locations
    paths.dsetRootPitts= '~/hengheng/retrieval/Datasets/Pittsburgh/'; % should contain images/ and queries/
    paths.dsetRootTokyo247= '~/hengheng/retrieval/Datasets/Tokyo247/'; % should contain images/ and query/
    paths.dsetRootTokyoTM= '~/hengheng/retrieval/Datasets/TokyoTM/'; % should contain images/
    paths.dsetRootOxford= '~/hengheng/retrieval/Datasets/OxfordBuildings/'; % should contain images/ and groundtruth/, and be writable
    paths.dsetRootParis= '~/hengheng/retrieval/Datasets/Paris/'; % should contain images/ (with subfolders defense, eiffel, etc), groundtruth/ and corrupt.txt, and be writable
    paths.dsetRootHolidays= '~/hengheng/retrieval/Datasets/Holidays/'; % should contain jpg/ for the original holidays, or jpg_rotated/ for rotated Holidays, and be writable
    paths.dsetRootUKbench= '~/hengheng/retrieval/Datasets/UKbench/';
    
    % --- our networks
    % models used in our paper, download them from our research page
    paths.ourCNNs= '~/hengheng/retrieval/netvlad/models/';
    
    % --- pretrained networks
    % off-the-shelf networks trained on other tasks, available from the MatConvNet
    % website: http://www.vlfeat.org/matconvnet/pretrained/
    paths.pretrainedCNNs= '~/hengheng/retrieval/MatConvNet_models/';
    
    % --- initialization data (off-the-shelf descriptors, clusters)
    % Not necessary: these can be computed automatically, but it is recommended
    % in order to use the same initialization as we used in our work
    paths.initData= '~/hengheng/retrieval/netvlad/initdata/';
    
    % --- output directory
    paths.outPrefix= '~/hengheng/retrieval/netvlad/output/';
end
