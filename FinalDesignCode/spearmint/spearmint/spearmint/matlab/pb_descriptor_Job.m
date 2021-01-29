function [descriptor] = pb_descriptor_Job()
%pb_descriptor_Job Returns the descriptor for message Job.
%   function [descriptor] = pb_descriptor_Job()
%
%   See also pb_read_Job
  
  descriptor = struct( ...
    'name', 'Job', ...
    'full_name', 'Job', ...
    'filename', 'spearmint.proto', ...
    'containing_type', '', ...
    'fields', [ ...
      struct( ...
        'name', 'id', ...
        'full_name', 'Job.id', ...
        'index', 1, ...
        'number', uint32(1), ...
        'type', uint32(4), ...
        'matlab_type', uint32(4), ...
        'wire_type', uint32(0), ...
        'label', uint32(2), ...
        'default_value', uint64(0), ...
        'read_function', @(x) typecast(x, 'uint64'), ...
        'write_function', @(x) typecast(uint64(x), 'uint64'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'expt_dir', ...
        'full_name', 'Job.expt_dir', ...
        'index', 2, ...
        'number', uint32(2), ...
        'type', uint32(9), ...
        'matlab_type', uint32(7), ...
        'wire_type', uint32(2), ...
        'label', uint32(2), ...
        'default_value', '', ...
        'read_function', @(x) char(x{1}(x{2} : x{3})), ...
        'write_function', @uint8, ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'name', ...
        'full_name', 'Job.name', ...
        'index', 3, ...
        'number', uint32(3), ...
        'type', uint32(9), ...
        'matlab_type', uint32(7), ...
        'wire_type', uint32(2), ...
        'label', uint32(2), ...
        'default_value', '', ...
        'read_function', @(x) char(x{1}(x{2} : x{3})), ...
        'write_function', @uint8, ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'language', ...
        'full_name', 'Job.language', ...
        'index', 4, ...
        'number', uint32(4), ...
        'type', uint32(14), ...
        'matlab_type', uint32(10), ...
        'wire_type', uint32(0), ...
        'label', uint32(2), ...
        'default_value', int32(1), ...
        'read_function', @(x) pblib_helpers_first(typecast(x, 'int32')), ...
        'write_function', @(x) typecast(int32(x), 'uint32'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'status', ...
        'full_name', 'Job.status', ...
        'index', 5, ...
        'number', uint32(5), ...
        'type', uint32(9), ...
        'matlab_type', uint32(7), ...
        'wire_type', uint32(2), ...
        'label', uint32(1), ...
        'default_value', '', ...
        'read_function', @(x) char(x{1}(x{2} : x{3})), ...
        'write_function', @uint8, ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'param', ...
        'full_name', 'Job.param', ...
        'index', 6, ...
        'number', uint32(6), ...
        'type', uint32(11), ...
        'matlab_type', uint32(9), ...
        'wire_type', uint32(2), ...
        'label', uint32(3), ...
        'default_value', struct([]), ...
        'read_function', @(x) pb_read_Parameter(x{1}, x{2}, x{3}), ...
        'write_function', @pblib_generic_serialize_to_string, ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'submit_t', ...
        'full_name', 'Job.submit_t', ...
        'index', 7, ...
        'number', uint32(7), ...
        'type', uint32(4), ...
        'matlab_type', uint32(4), ...
        'wire_type', uint32(0), ...
        'label', uint32(1), ...
        'default_value', uint64(0), ...
        'read_function', @(x) typecast(x, 'uint64'), ...
        'write_function', @(x) typecast(uint64(x), 'uint64'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'start_t', ...
        'full_name', 'Job.start_t', ...
        'index', 8, ...
        'number', uint32(8), ...
        'type', uint32(4), ...
        'matlab_type', uint32(4), ...
        'wire_type', uint32(0), ...
        'label', uint32(1), ...
        'default_value', uint64(0), ...
        'read_function', @(x) typecast(x, 'uint64'), ...
        'write_function', @(x) typecast(uint64(x), 'uint64'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'end_t', ...
        'full_name', 'Job.end_t', ...
        'index', 9, ...
        'number', uint32(9), ...
        'type', uint32(4), ...
        'matlab_type', uint32(4), ...
        'wire_type', uint32(0), ...
        'label', uint32(1), ...
        'default_value', uint64(0), ...
        'read_function', @(x) typecast(x, 'uint64'), ...
        'write_function', @(x) typecast(uint64(x), 'uint64'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'value', ...
        'full_name', 'Job.value', ...
        'index', 10, ...
        'number', uint32(10), ...
        'type', uint32(1), ...
        'matlab_type', uint32(5), ...
        'wire_type', uint32(1), ...
        'label', uint32(1), ...
        'default_value', double(0), ...
        'read_function', @(x) typecast(x, 'double'), ...
        'write_function', @(x) typecast(double(x), 'uint8'), ...
        'options', struct('packed', false) ...
      ), ...
      struct( ...
        'name', 'duration', ...
        'full_name', 'Job.duration', ...
        'index', 11, ...
        'number', uint32(11), ...
        'type', uint32(1), ...
        'matlab_type', uint32(5), ...
        'wire_type', uint32(1), ...
        'label', uint32(1), ...
        'default_value', double(0), ...
        'read_function', @(x) typecast(x, 'double'), ...
        'write_function', @(x) typecast(double(x), 'uint8'), ...
        'options', struct('packed', false) ...
      ) ...
    ], ...
    'extensions', [ ... % Not Implemented
    ], ...
    'nested_types', [ ... % Not implemented
    ], ...
    'enum_types', [ ... % Not Implemented
    ], ...
    'options', [ ... % Not Implemented
    ] ...
  );
  
  descriptor.field_indeces_by_number = java.util.HashMap;
  put(descriptor.field_indeces_by_number, uint32(1), 1);
  put(descriptor.field_indeces_by_number, uint32(2), 2);
  put(descriptor.field_indeces_by_number, uint32(3), 3);
  put(descriptor.field_indeces_by_number, uint32(4), 4);
  put(descriptor.field_indeces_by_number, uint32(5), 5);
  put(descriptor.field_indeces_by_number, uint32(6), 6);
  put(descriptor.field_indeces_by_number, uint32(7), 7);
  put(descriptor.field_indeces_by_number, uint32(8), 8);
  put(descriptor.field_indeces_by_number, uint32(9), 9);
  put(descriptor.field_indeces_by_number, uint32(10), 10);
  put(descriptor.field_indeces_by_number, uint32(11), 11);
  
