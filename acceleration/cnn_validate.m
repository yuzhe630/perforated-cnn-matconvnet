function valInfo = cnn_validate(net, imdb, getBatch, val, batchSize, useGpu, prefetch)

[~,info] = cnn_train(net, imdb, getBatch, ...
  'numEpochs', 1, ...
  'useGpu', useGpu, ...
  'continue', false, ...
  'train', NaN, ...
  'val', val, ...
  'batchSize', batchSize, ...
  'conserveMemory', true, ...
  'sync', true, ...
  'verbose', false, ...
  'prefetch', prefetch);
valInfo = info.val;

end
