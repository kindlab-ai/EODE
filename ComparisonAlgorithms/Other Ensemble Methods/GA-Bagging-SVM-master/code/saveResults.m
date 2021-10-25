function rs = saveResults(results)
  fid = [];
    if (exist([pwd filesep 'results.csv'], 'file') == 0)
        fid = fopen([pwd filesep 'results.csv'], 'w');
        fprintf(fid, '%s, %s\n', ...
            'Data Set','Accuracy');
    elseif (exist([pwd filesep 'results.csv'], 'file') == 2)
        fid = fopen([pwd filesep 'results.csv'], 'a');
    end
    fprintf(fid, '%s, ', results.p_name);
    fprintf(fid, '%f\n', ...
          results.acc);
    fclose(fid);
end



