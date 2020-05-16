
function db= dbUKbench()
    
    paths= localPaths();

    db.name= 'ukbench';
    db.dbPath= relja_expandUser([paths.dsetRootUKbench, 'full/']);

    db.qPath= db.dbPath;
    
    db.dbImageFns= relja_dir(db.dbPath);
    db.numImages= length(db.dbImageFns);
    assert(db.numImages==10200);
%     db.queryIDs= find( cellfun(@(s) rem(str2num(s(1:(end-4))), 100)==0, db.dbImageFns) );
    db.queryIDs=[1:10200];
    db.numQueries= length(db.queryIDs);
    assert(db.numQueries==10200);
    db.qImageFns= db.dbImageFns(db.queryIDs);
    
    db.posIDs= cell(db.numQueries, 1); 
    db.ignoreIDs= cell( db.numQueries, 1 );
    for iQuery= 1:db.numQueries
        db.ignoreIDs{iQuery}= [];
        db.posIDs{iQuery}= (fix((db.queryIDs(iQuery)-1) / 4) * 4 + 1) : (fix((db.queryIDs(iQuery)-1) / 4) * 4 + 4);
    end
    
    % Also potentially downscale to #pixels=1024x768, like in the original paper as well
    
%     if doRot
%         newDbPath= relja_expandUser([paths.dsetRootHolidays, 'jpg_rotated_1024x768/']);
%     else
%         newDbPath= relja_expandUser([paths.dsetRootHolidays, 'jpg_1024x768/']);
%     end
%     if ~exist(newDbPath, 'dir'), mkdir(newDbPath); end
%     
%     pixelNumThr= 1024*768;
%     
%     verbose= true;
%     prog= tic;
%     
%     for iIm= 1:db.numImages
%         if verbose
%             relja_progress(iIm, db.numImages, 'check if resized exists, otherwise resize', prog);
%         end
%         fnNew= [newDbPath, db.dbImageFns{iIm}];
%         if ~exist(fnNew, 'file')
%             fnOrig= [db.dbPath, db.dbImageFns{iIm}];
%             im= imread(fnOrig);
%             pixelNum= size(im,1)*size(im,2);
%             if pixelNum>pixelNumThr
%                 im= imresize( im, sqrt(pixelNumThr/pixelNum) );
%                 doWrite= true;
%             else
%                 doWrite= false;
%             end
%             
%             if doWrite
%                 imwrite(im, fnNew);
%             else
%                 copyfile(fnOrig, fnNew);
%             end
%         end
%     end
%     db.dbPath= newDbPath;
%     db.qPath= db.dbPath;
end
