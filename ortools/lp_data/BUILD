package(default_visibility = ["//visibility:public"])

#W_FLOAT_CONVERSION = select({
#    "//tools/cc_target_os:android": [""],
#    "//tools/cc_target_os:ios": ["-Xclang-only=-Wfloat-conversion"],
#    "//conditions:default": ["-Xclang-only=-Wfloat-conversion"],
#})

#SAFE_FP_CODE = W_FLOAT_CONVERSION + ["-fno-fast-math"]
SAFE_FP_CODE = ["-fno-fast-math"]

cc_library(
    name = "base",
    srcs = ["lp_types.cc"],
    hdrs = ["lp_types.h"],
    deps = [
        "//ortools/base",
        "//ortools/base:hash",
        "//ortools/base:int_type",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/util:bitset",
    ],
)

cc_library(
    name = "permutation",
    hdrs = ["permutation.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        "//ortools/base",
        "//ortools/util:return_macros",
    ],
)

cc_library(
    name = "sparse_vector",
    hdrs = ["sparse_vector.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":permutation",
        "//ortools/base",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "//ortools/graph:iterators",
        "//ortools/util:return_macros",
    ],
)

cc_library(
    name = "sparse_column",
    srcs = ["sparse_column.cc"],
    hdrs = ["sparse_column.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":sparse_vector",
        "//ortools/base",
        "//ortools/base:random",
    ],
)

cc_library(
    name = "sparse_row",
    hdrs = ["sparse_row.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":sparse_vector",
        "//ortools/base",
    ],
)

cc_library(
    name = "sparse",
    srcs = ["sparse.cc"],
    hdrs = [
        "sparse.h",
    ],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":matrix_scaler_hdr",
        ":permutation",
        ":sparse_column",
        "//ortools/base",
        "//ortools/base:hash",
        "//ortools/base:int_type",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/base:random",
        "@com_google_absl//absl/strings",
        "//ortools/util:fp_utils",
        "//ortools/util:return_macros",
    ],
)

cc_library(
    name = "matrix_scaler",
    srcs = ["matrix_scaler.cc"],
    hdrs = ["matrix_scaler.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":lp_utils",
        ":sparse",
        "//ortools/base",
        "//ortools/base:hash",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/glop:parameters_cc_proto",
        "//ortools/glop:revised_simplex",
        "//ortools/glop:status",
        "//ortools/util:fp_utils",
    ],
)

cc_library(
    name = "matrix_scaler_hdr",
    hdrs = ["matrix_scaler.h"],
    deps = [
        ":base",
        "//ortools/base",
        "//ortools/base:int_type_indexed_vector",
    ],
)

cc_library(
    name = "lp_data",
    srcs = ["lp_data.cc"],
    hdrs = ["lp_data.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":lp_print_utils",
        ":lp_utils",
        ":matrix_utils",
        ":permutation",
        ":sparse",
        "//ortools/base",
        "//ortools/base:hash",
        "//ortools/base:int_type",
        "//ortools/base:int_type_indexed_vector",
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/container:flat_hash_set",
        "@com_google_absl//absl/strings",
        "//ortools/glop:parameters_cc_proto",
        "//ortools/util:fp_utils",
    ],
)

cc_library(
    name = "lp_data_utils",
    srcs = ["lp_data_utils.cc"],
    hdrs = ["lp_data_utils.h"],
    deps = [
        ":base",
        ":lp_data",
        ":matrix_scaler",
        "//ortools/glop:parameters_cc_proto",
    ],
)

cc_library(
    name = "lp_utils",
    srcs = ["lp_utils.cc"],
    hdrs = ["lp_utils.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":sparse_column",
        "//ortools/base",
        "//ortools/base:accurate_sum",
    ],
)

cc_library(
    name = "matrix_utils",
    srcs = ["matrix_utils.cc"],
    hdrs = ["matrix_utils.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":sparse",
        "//ortools/base",
        "//ortools/base:hash",
    ],
)

#cc_library(
#    name = "lp_parser",
#    testonly = 1,
#    srcs = ["lp_parser.cc"],
#    hdrs = ["lp_parser.h"],
#    copts = SAFE_FP_CODE,
#    deps = [
#        ":base",
#        ":lp_data",
#        "//ortools/base",
#        "@com_google_absl//absl/strings",
#        "//ortools/util/regexp/re2",
#    ],
#)

#cc_library(
#    name = "lp_constraint_classifier",
#    srcs = ["lp_constraint_classifier.cc"],
#    hdrs = ["lp_constraint_classifier.h"],
#    copts = SAFE_FP_CODE,
#    deps = [
#        ":lp_data",
#        "//ortools/util:fp_utils",
#    ],
#)

cc_library(
    name = "lp_print_utils",
    srcs = ["lp_print_utils.cc"],
    hdrs = ["lp_print_utils.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        "//ortools/base",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "//ortools/util:rational_approximation",
    ],
)

cc_library(
    name = "proto_utils",
    srcs = ["proto_utils.cc"],
    hdrs = ["proto_utils.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":lp_data",
        "//ortools/base",
        "//ortools/linear_solver:linear_solver_cc_proto",
    ],
)

cc_library(
    name = "mps_reader",
    srcs = ["mps_reader.cc"],
    hdrs = ["mps_reader.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":lp_data",
        ":lp_print_utils",
        "//ortools/base",
        "//ortools/base:file",
        "//ortools/base:filelineiter",
        "//ortools/base:hash",
        "//ortools/base:int_type",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/base:map_util",
        "//ortools/base:status",
        "@com_google_absl//absl/strings",
    ],
)

cc_library(
    name = "model_reader",
    srcs = ["model_reader.cc"],
    hdrs = ["model_reader.h"],
    deps = [
        ":lp_data",
        ":mps_reader",
        ":proto_utils",
        #        "//net/proto2/util/public:differencer",
        "//ortools/base",
        "//ortools/base:file",
        "//ortools/linear_solver:linear_solver_cc_proto",
        "//ortools/util:file_util",
    ],
)

cc_library(
    name = "lp_decomposer",
    srcs = ["lp_decomposer.cc"],
    hdrs = ["lp_decomposer.h"],
    copts = SAFE_FP_CODE,
    deps = [
        ":base",
        ":lp_data",
        ":lp_utils",
        "//ortools/algorithms:dynamic_partition",
        "//ortools/base",
        "//ortools/base:hash",
        "@com_google_absl//absl/synchronization",
        "//ortools/glop:parameters_cc_proto",
    ],
)
