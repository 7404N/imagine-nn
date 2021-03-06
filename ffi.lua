local ffi = require 'ffi'

ffi.cdef[[
void SpatialMaxPooling_updateOutput(THCudaTensor* input, THCudaTensor* output, THCudaTensor* indices, int kW, int kH, int dW, int dH);
void SpatialMaxPooling_updateGradInput(THCudaTensor* input, THCudaTensor* gradInput, THCudaTensor* gradOutput, THCudaTensor* indices, int kW, int kH, int dW, int dH);

void SpatialAveragePooling_updateOutput(THCudaTensor* input, THCudaTensor* output, int kW, int kH, int dW, int dH);
void SpatialAveragePooling_updateGradInput(THCudaTensor* input, THCudaTensor* gradInput, THCudaTensor* gradOutput, int kW, int kH, int dW, int dH);
void LRNforward(THCudaTensor* input, THCudaTensor* output, THCudaTensor* scale, int local_size, float alpha, float beta, float k);
void LRNbackward(THCudaTensor* input, THCudaTensor* output, THCudaTensor* gradOutput, THCudaTensor* gradInput, THCudaTensor* scale, int local_size, float alpha, float beta, float k);
]]

inn.C = ffi.load(package.searchpath('libinn', package.cpath))
