; ModuleID = 'varasm.c'
source_filename = "varasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.anon = type { ptr, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.unnamed_section = type { %struct.section_common, ptr, ptr, ptr }
%struct.section_common = type { i32 }
%struct.named_section = type { %struct.section_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.constant_descriptor_rtx = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.object_block = type { ptr, i32, i64, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.noswitch_section = type { %struct.section_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.constant_descriptor_tree = type { ptr, ptr, i32 }
%struct.addr_const = type { ptr, i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.rtx_constant_pool = type { ptr, ptr, ptr, i64 }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.oc_outer_state = type { i32, i32 }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.alias_pair = type { ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"__templ\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"__offset\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@word_mode = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__align\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"__size\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@emutls_htab = internal global ptr null, align 8
@unnamed_sections = internal global ptr null, align 8
@section_htab = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"varasm.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%+D causes a section type conflict\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@first_function_block_is_cold = dso_local local_unnamed_addr global i8 0, align 1
@in_cold_section_p = dso_local local_unnamed_addr global i8 0, align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@flag_function_sections = external local_unnamed_addr global i32, align 4
@flag_data_sections = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c".text.\00", align 1
@readonly_data_section = dso_local local_unnamed_addr global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@flag_merge_constants = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c".rodata.cst%d\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@decode_reg_name.table = internal unnamed_addr constant [24 x %struct.anon] [%struct.anon { ptr @.str.12, i32 0 }, %struct.anon { ptr @.str.13, i32 1 }, %struct.anon { ptr @.str.14, i32 2 }, %struct.anon { ptr @.str.15, i32 3 }, %struct.anon { ptr @.str.16, i32 4 }, %struct.anon { ptr @.str.17, i32 5 }, %struct.anon { ptr @.str.18, i32 6 }, %struct.anon { ptr @.str.19, i32 7 }, %struct.anon { ptr @.str.20, i32 0 }, %struct.anon { ptr @.str.21, i32 1 }, %struct.anon { ptr @.str.22, i32 2 }, %struct.anon { ptr @.str.23, i32 3 }, %struct.anon { ptr @.str.24, i32 4 }, %struct.anon { ptr @.str.25, i32 5 }, %struct.anon { ptr @.str.26, i32 6 }, %struct.anon { ptr @.str.27, i32 7 }, %struct.anon { ptr @.str.28, i32 0 }, %struct.anon { ptr @.str.29, i32 1 }, %struct.anon { ptr @.str.30, i32 2 }, %struct.anon { ptr @.str.31, i32 3 }, %struct.anon { ptr @.str.32, i32 0 }, %struct.anon { ptr @.str.33, i32 1 }, %struct.anon { ptr @.str.34, i32 2 }, %struct.anon { ptr @.str.35, i32 3 }], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"eax\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"edx\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ecx\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ebx\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"esi\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"edi\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ebp\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ah\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"bh\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"alignment of %q+D is greater than maximum object file alignment.  Using %d\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_mudflap = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [37 x i8] c"register name not specified for %q+D\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"invalid register name for %q+D\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"data type of %q+D isn%'t suitable for a register\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"register specified for %q+D isn%'t suitable for data type\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"global register variable has initial value\00", align 1
@.str.44 = private unnamed_addr constant [69 x i8] c"optimization may eliminate reads and/or writes to register variables\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"___DTOR_LIST__\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"%s.%.5u\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c".ctors\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c".dtors\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"___CTOR_LIST__\00", align 1
@first_global_object_name = dso_local global ptr null, align 8
@flag_shlib = external local_unnamed_addr global i32, align 4
@weak_global_object_name = dso_local global ptr null, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"LHOTB\00", align 1
@const_labelno = internal global i32 0, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"LCOLDB\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"LHOTE\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"LCOLDE\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@text_section = dso_local local_unnamed_addr global ptr null, align 8
@.str.57 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@align_functions_log = external local_unnamed_addr global i32, align 4
@align_functions = external local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"\09.p2align 3\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"\09.type\09\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@flag_inhibit_size_directive = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [8 x i8] c"\09.size\09\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c", .-\00", align 1
@in_section = dso_local local_unnamed_addr global ptr null, align 8
@flag_syntax_only = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.67 = private unnamed_addr constant [7 x i8] c"%s%lu\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"\09.zero\09\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"\09.string\09\00", align 1
@.str.72 = private unnamed_addr constant [257 x i8] c"\01\01\01\01\01\01\01\01btn\01fr\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"\09.ascii\09\00", align 1
@last_assemble_variable_decl = dso_local local_unnamed_addr global ptr null, align 8
@.str.75 = private unnamed_addr constant [34 x i8] c"storage size of %q+D isn%'t known\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"size of variable %q+D is too large\00", align 1
@pending_assemble_externals = internal global ptr null, align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@weak_decls = internal global ptr null, align 8
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%U%s\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"\09.local\09\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c",%lu,%u\0A\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@initial_trampoline = internal global ptr null, align 8
@.str.85 = private unnamed_addr constant [7 x i8] c"LTRAMP\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@const_desc_htab = internal global ptr null, align 8
@shared_constant_pool = internal global ptr null, align 8
@.str.86 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.87 = private unnamed_addr constant [61 x i8] c"initializer for integer/fixed-point value is too complicated\00", align 1
@.str.88 = private unnamed_addr constant [58 x i8] c"initializer for floating value is not a floating constant\00", align 1
@.str.89 = private unnamed_addr constant [49 x i8] c"weak declaration of %q+D must precede definition\00", align 1
@.str.90 = private unnamed_addr constant [73 x i8] c"weak declaration of %q+D after first use results in unspecified behavior\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"weak declaration of %q+D must be public\00", align 1
@weakref_targets = internal global ptr null, align 8
@alias_pairs = dso_local local_unnamed_addr global ptr null, align 8
@.str.92 = private unnamed_addr constant [8 x i8] c"weakref\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"%q+D aliased to undefined symbol %qE\00", align 1
@.str.94 = private unnamed_addr constant [36 x i8] c"%q+D aliased to external symbol %qE\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"weakref %q+D ultimately targets itself\00", align 1
@.str.96 = private unnamed_addr constant [38 x i8] c"weakref %q+D must have static linkage\00", align 1
@default_assemble_visibility.visibility_types = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @.str.97, ptr @.str.98, ptr @.str.99], align 16
@.str.97 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"\09.%s\09\00", align 1
@object_block_htab = internal global ptr null, align 8
@const_alias_set = internal unnamed_addr global i32 0, align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"\09.text\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"\09.data\00", align 1
@data_section = dso_local local_unnamed_addr global ptr null, align 8
@.str.103 = private unnamed_addr constant [18 x i8] c"\09.section\09.rodata\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"\09.bss\00", align 1
@bss_section = dso_local local_unnamed_addr global ptr null, align 8
@tls_comm_section = dso_local local_unnamed_addr global ptr null, align 8
@lcomm_section = dso_local local_unnamed_addr global ptr null, align 8
@comm_section = dso_local local_unnamed_addr global ptr null, align 8
@bss_noswitch_section = dso_local local_unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_tls_default = external local_unnamed_addr global i32, align 4
@.str.105 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c".bss.\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.b.\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c".sbss.\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.sb.\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c".tdata\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c".tdata.\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.td.\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c".tbss\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c".tbss.\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.tb.\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c".init_array\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c".fini_array\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c".preinit_array\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"\09.section\09%s\0A\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"\09.section\09%s,\22%s\22\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"nobits\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"progbits\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c",@%s\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c",%s,comdat\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"\09.section\09%s,\22%s\22\0A\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"\09.linkonce %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"same_size\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@emutls_object_type = internal global ptr null, align 8
@flag_zero_initialized_in_bss = external local_unnamed_addr global i32, align 4
@.str.131 = private unnamed_addr constant [8 x i8] c".sdata2\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c".data.rel\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c".data.rel.local\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c".data.rel.ro\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c".data.rel.ro.local\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.154 = private unnamed_addr constant [2 x i8] c".\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@.str.155 = private unnamed_addr constant [9 x i8] c"*. + %ld\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"\09.set\09\00", align 1
@flag_whole_program = external local_unnamed_addr global i32, align 4
@.str.158 = private unnamed_addr constant [8 x i8] c".globl \00", align 1
@flag_verbose_asm = external local_unnamed_addr global i32, align 4
@flag_debug_asm = external local_unnamed_addr global i32, align 4
@flag_dump_rtl_in_asm = external local_unnamed_addr global i32, align 4
@.str.159 = private unnamed_addr constant [9 x i8] c"#NO_APP\0A\00", align 1
@main_input_filename = external local_unnamed_addr global ptr, align 8
@trampolines_created = dso_local local_unnamed_addr global i32 0, align 4
@.str.160 = private unnamed_addr constant [16 x i8] c".note.GNU-stack\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ptr_mode = external local_unnamed_addr global i32, align 4
@.str.162 = private unnamed_addr constant [8 x i8] c"LANCHOR\00", align 1
@anchor_labelno = internal global i32 0, align 4
@elf_record_gcc_switches.buffer = internal global [1024 x i8] zeroinitializer, align 16
@elf_record_gcc_switches.previous_name_held_back = internal unnamed_addr global i1 false, align 1
@.str.163 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@elf_record_gcc_switches.started = internal unnamed_addr global i1 false, align 1
@gt_ggc_r_gt_varasm_h = dso_local local_unnamed_addr constant [13 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @weakref_targets, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @const_desc_htab, i64 1, i64 8, ptr @gt_ggc_m_P24constant_descriptor_tree4htab, ptr @gt_pch_n_P24constant_descriptor_tree4htab }, %struct.ggc_root_tab { ptr @initial_trampoline, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @weak_decls, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @pending_assemble_externals, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @emutls_object_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @shared_constant_pool, i64 1, i64 8, ptr @gt_ggc_mx_rtx_constant_pool, ptr @gt_pch_nx_rtx_constant_pool }, %struct.ggc_root_tab { ptr @object_block_htab, i64 1, i64 8, ptr @gt_ggc_m_P12object_block4htab, ptr @gt_pch_n_P12object_block4htab }, %struct.ggc_root_tab { ptr @section_htab, i64 1, i64 8, ptr @gt_ggc_m_P7section4htab, ptr @gt_pch_n_P7section4htab }, %struct.ggc_root_tab { ptr @unnamed_sections, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @weak_global_object_name, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr @first_global_object_name, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rc_gt_varasm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @emutls_htab, i64 1, i64 8, ptr @gt_ggc_mx_tree_map, ptr @gt_pch_nx_tree_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_varasm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @emutls_htab, i64 1, i64 8, ptr @gt_ggc_m_P8tree_map4htab, ptr @gt_pch_n_P8tree_map4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_varasm_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @anchor_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @const_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@size_directive_output = dso_local local_unnamed_addr global i32 0, align 4
@sdata_section = dso_local local_unnamed_addr global ptr null, align 8
@ctors_section = dso_local local_unnamed_addr global ptr null, align 8
@dtors_section = dso_local local_unnamed_addr global ptr null, align 8
@sbss_section = dso_local local_unnamed_addr global ptr null, align 8
@exception_section = dso_local local_unnamed_addr global ptr null, align 8
@eh_frame_section = dso_local local_unnamed_addr global ptr null, align 8
@.str.164 = private unnamed_addr constant [12 x i8] c"__emutls_v.\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"__emutls_object\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.166 = private unnamed_addr constant [10 x i8] c"_unlikely\00", align 1
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@.str.167 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"__emutls_t.\00", align 1
@.str.169 = private unnamed_addr constant [74 x i8] c"requested alignment for %q+D is greater than implemented alignment of %wu\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c", %ld\0A\00", align 1
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.172 = private unnamed_addr constant [8 x i8] c"%s %s:\0A\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.175 = private unnamed_addr constant [37 x i8] c"invalid initial value for member %qE\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"\09.weak\09\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"\09.weakref\09\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c".tls_common\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c".rodata.str%d.%d\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !182 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !183
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !182 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !183
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !182 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !193

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #34
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !187
  %11 = load i8, ptr %3, align 1, !tbaa !194
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !182 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !193

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #34
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !187
  %11 = load i8, ptr %3, align 1, !tbaa !194
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !182 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !183
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !193

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #34
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !187
  %11 = load i8, ptr %3, align 1, !tbaa !194
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !182 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !183
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !182 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !193

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #34
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !195
  store i8 %12, ptr %4, align 1, !tbaa !194
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !182 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !193

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #34
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !195
  store i8 %12, ptr %4, align 1, !tbaa !194
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !182 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !183
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !193

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #34
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !195
  store i8 %12, ptr %4, align 1, !tbaa !194
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !182 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #34
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !182 {
  %2 = load i32, ptr %0, align 8, !tbaa !197
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !182 {
  %2 = load i32, ptr %0, align 8, !tbaa !197
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !182 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #34
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !198
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !182 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #34
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !198
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !182 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !182 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !182 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !182 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #34
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !199

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !182 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_emutls_var_fields(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 !prof !182 {
  %3 = tail call ptr @get_identifier(ptr noundef nonnull @.str) #34
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !183
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %3, ptr noundef %4) #34
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !194
  %7 = tail call ptr @get_identifier(ptr noundef nonnull @.str.1) #34
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !183
  %9 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %7, ptr noundef %8) #34
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 4
  store ptr %0, ptr %10, align 8, !tbaa !194
  %11 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  store ptr %5, ptr %11, align 8, !tbaa !194
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !202
  %13 = load i32, ptr @word_mode, align 4, !tbaa !198
  %14 = tail call ptr %12(i32 noundef %13, i32 noundef 1) #34
  %15 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #34
  %16 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %15, ptr noundef %14) #34
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  store ptr %0, ptr %17, align 8, !tbaa !194
  %18 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  store ptr %9, ptr %18, align 8, !tbaa !194
  %19 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #34
  %20 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %19, ptr noundef %14) #34
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 4
  store ptr %0, ptr %21, align 8, !tbaa !194
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  store ptr %16, ptr %22, align 8, !tbaa !194
  ret ptr %20
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emutls_decl(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #34
  %4 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !210
  %5 = icmp ne i8 %4, 0
  %6 = icmp eq ptr %0, null
  %7 = or i1 %6, %5
  %8 = load ptr, ptr @global_trees, align 16
  %9 = icmp eq ptr %8, %0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %139, label %11

11:                                               ; preds = %1
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %139

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 49152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %139, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @emutls_htab, align 8, !tbaa !183
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call ptr @htab_create_alloc(i64 noundef 512, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  store ptr %24, ptr @emutls_htab, align 8, !tbaa !183
  br label %25

25:                                               ; preds = %23, %20
  %26 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #34
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = tail call i32 @htab_hash_string(ptr noundef %28) #34
  %30 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 1
  store i32 %29, ptr %30, align 8, !tbaa !222
  store ptr %0, ptr %3, align 8, !tbaa !225
  %31 = load ptr, ptr @emutls_htab, align 8, !tbaa !183
  %32 = call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef nonnull %3, i32 noundef %29, i32 noundef 1) #34
  %33 = load ptr, ptr %32, align 8, !tbaa !183
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tree_map, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !226
  br label %103

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !194
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 4), align 8
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @.str.164, ptr %41
  %44 = call fastcc ptr @prefix_name(ptr noundef nonnull %43, ptr noundef %26)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #34
  %45 = load ptr, ptr @emutls_object_type, align 8, !tbaa !183
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !227
  %49 = call ptr %48(i32 noundef 16) #34
  store ptr %49, ptr @emutls_object_type, align 8, !tbaa !183
  store ptr null, ptr %2, align 8, !tbaa !183
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 6), align 8, !tbaa !228
  %51 = call ptr %50(ptr noundef %49, ptr noundef nonnull %2) #34
  %52 = load ptr, ptr %2, align 8, !tbaa !183
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call ptr @get_identifier(ptr noundef nonnull @.str.165) #34
  store ptr %55, ptr %2, align 8, !tbaa !183
  br label %56

56:                                               ; preds = %54, %47
  %57 = load ptr, ptr %2, align 8, !tbaa !183
  %58 = call ptr @build_decl_stat(i32 noundef 0, i32 noundef 35, ptr noundef %57, ptr noundef %49) #34
  store ptr %58, ptr %2, align 8, !tbaa !183
  %59 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 12
  store ptr %58, ptr %59, align 8, !tbaa !194
  %60 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 1
  store ptr %51, ptr %60, align 8, !tbaa !194
  call void @layout_type(ptr noundef %49) #34
  br label %61

61:                                               ; preds = %38, %56
  %62 = phi ptr [ %49, %56 ], [ %45, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #34
  %63 = call ptr @build_decl_stat(i32 noundef %40, i32 noundef 32, ptr noundef %44, ptr noundef %62) #34
  %64 = call ptr @ggc_alloc_stat(i64 noundef 24) #34
  %65 = load i32, ptr %30, align 8, !tbaa !222
  %66 = getelementptr inbounds %struct.tree_map, ptr %64, i64 0, i32 1
  store i32 %65, ptr %66, align 8, !tbaa !222
  store ptr %0, ptr %64, align 8, !tbaa !225
  %67 = getelementptr inbounds %struct.tree_map, ptr %64, i64 0, i32 2
  store ptr %63, ptr %67, align 8, !tbaa !226
  store ptr %64, ptr %32, align 8, !tbaa !183
  %68 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %63, i64 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, -57345
  %71 = or disjoint i32 %70, 8192
  store i32 %71, ptr %68, align 8
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %63, i64 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = or i64 %73, 5120
  store i64 %74, ptr %72, align 8
  %75 = load i64, ptr %63, align 8
  %76 = and i64 %75, -1048577
  store i64 %76, ptr %63, align 8
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %63, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !194
  %79 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %63, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !194
  %80 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !194
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %61
  %84 = call ptr @decl_assembler_name(ptr noundef nonnull %63) #34
  %85 = load i64, ptr %63, align 8
  %86 = trunc i64 %85 to i16
  switch i16 %86, label %87 [
    i16 32, label %88
    i16 29, label %88
  ]

87:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5882, ptr noundef nonnull @.str.5) #34
  br label %88

88:                                               ; preds = %83, %83, %87
  %89 = load i64, ptr %63, align 8
  %90 = or i64 %89, 134217728
  store i64 %90, ptr %63, align 8
  %91 = load i32, ptr %68, align 8
  %92 = or i32 %91, 128
  store i32 %92, ptr %68, align 8
  %93 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %63, i64 0, i32 3
  store ptr %84, ptr %93, align 8, !tbaa !194
  br label %94

94:                                               ; preds = %88, %61
  %95 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !194
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %63, i64 0, i32 4
  store ptr %96, ptr %97, align 8, !tbaa !194
  %98 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 8), align 8, !tbaa !229
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i64, ptr %63, align 8
  %102 = or i64 %101, 4398046511104
  store i64 %102, ptr %63, align 8
  br label %103

103:                                              ; preds = %94, %100, %35
  %104 = phi ptr [ %37, %35 ], [ %63, %100 ], [ %63, %94 ]
  %105 = load i64, ptr %0, align 8
  %106 = and i64 %105, 67108864
  %107 = load i64, ptr %104, align 8
  %108 = and i64 %107, -67108865
  %109 = or disjoint i64 %108, %106
  store i64 %109, ptr %104, align 8
  %110 = load i64, ptr %0, align 8
  %111 = and i64 %110, 16777216
  %112 = and i64 %109, -16777217
  %113 = or disjoint i64 %112, %111
  store i64 %113, ptr %104, align 8
  %114 = load i64, ptr %0, align 8
  %115 = and i64 %114, 134217728
  %116 = and i64 %113, -134217729
  %117 = or disjoint i64 %116, %115
  store i64 %117, ptr %104, align 8
  %118 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 33554432
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %104, i64 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, -33554433
  %124 = or disjoint i64 %123, %120
  store i64 %124, ptr %121, align 8
  %125 = load i32, ptr %16, align 8
  %126 = and i32 %125, 8
  %127 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %104, i64 0, i32 4
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, -9
  %130 = or disjoint i32 %129, %126
  store i32 %130, ptr %127, align 8
  %131 = load i32, ptr %16, align 8
  %132 = and i32 %131, 128
  %133 = and i32 %130, -129
  %134 = or disjoint i32 %133, %132
  store i32 %134, ptr %127, align 8
  %135 = load i32, ptr %16, align 8
  %136 = and i32 %135, 3072
  %137 = and i32 %134, -3073
  %138 = or disjoint i32 %137, %136
  store i32 %138, ptr %127, align 8
  br label %139

139:                                              ; preds = %1, %11, %15, %103
  %140 = phi ptr [ %104, %103 ], [ %0, %15 ], [ %0, %11 ], [ %0, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #34
  ret ptr %140
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_map_hash(ptr noundef) #3

declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @make_decl_one_only(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 32, label %6
    i16 29, label %6
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5882, ptr noundef nonnull @.str.5) #34
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = load i64, ptr %0, align 8
  %8 = or i64 %7, 134217728
  store i64 %8, ptr %0, align 8
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = or i32 %10, 128
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !194
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emutls_finish() local_unnamed_addr #9 !prof !182 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8, !tbaa !230
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #34
  store ptr null, ptr %1, align 8, !tbaa !183
  %5 = load ptr, ptr @emutls_htab, align 8, !tbaa !183
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  call void @htab_traverse_noresize(ptr noundef nonnull %5, ptr noundef nonnull @emutls_common_1, ptr noundef nonnull %1) #34
  %8 = load ptr, ptr %1, align 8, !tbaa !183
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef nonnull %8, i32 noundef 65535) #34
  br label %11

11:                                               ; preds = %7, %4, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #34
  br label %12

12:                                               ; preds = %11, %0
  ret void
}

declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @emutls_common_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !202
  %18 = load i32, ptr @word_mode, align 4, !tbaa !198
  %19 = tail call ptr %17(i32 noundef %18, i32 noundef 1) #34
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %21 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %20, ptr noundef null) #34
  %22 = load ptr, ptr %3, align 8, !tbaa !225
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !194
  %25 = lshr i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = tail call ptr @build_int_cst(ptr noundef %19, i64 noundef %26) #34
  %28 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %27, ptr noundef %21) #34
  %29 = load ptr, ptr %3, align 8, !tbaa !225
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !194
  %32 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %31) #34
  %33 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %32, ptr noundef %28) #34
  %34 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !226
  %36 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %35) #34
  %37 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %36, ptr noundef %33) #34
  %38 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 549), align 8, !tbaa !183
  %39 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %38, ptr noundef %37) #34
  tail call void @append_to_statement_list(ptr noundef %39, ptr noundef %1) #34
  br label %40

40:                                               ; preds = %2, %9, %16
  ret i32 1
}

declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @get_unnamed_section(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 %0, ptr %4, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !194
  %7 = load ptr, ptr @unnamed_sections, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !194
  store ptr %4, ptr @unnamed_sections, align 8, !tbaa !183
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_section(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !231 {
  %4 = load ptr, ptr @section_htab, align 8, !tbaa !183
  %5 = tail call i32 @htab_hash_string(ptr noundef %0) #34
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef %0, i32 noundef %5, i32 noundef 1) #34
  %7 = or i32 %1, 2097152
  %8 = load ptr, ptr %6, align 8, !tbaa !183
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15, !prof !232

10:                                               ; preds = %3
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 %7, ptr %11, align 8, !tbaa !194
  %12 = tail call ptr @ggc_alloc_string(ptr noundef %0, i32 noundef -1) #34
  %13 = getelementptr inbounds %struct.named_section, ptr %11, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !194
  %14 = getelementptr inbounds %struct.named_section, ptr %11, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !194
  store ptr %11, ptr %6, align 8, !tbaa !183
  br label %33

15:                                               ; preds = %3
  %16 = load i32, ptr %8, align 8, !tbaa !194
  %17 = and i32 %16, -1048577
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %33, label %19, !prof !233

19:                                               ; preds = %15
  %20 = or i32 %16, %1
  %21 = and i32 %20, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.named_section, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %27, %25 ], [ %2, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 579, ptr noundef nonnull @.str.5) #34
  br label %32

32:                                               ; preds = %28, %31
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef %29) #34
  br label %33

33:                                               ; preds = %15, %19, %32, %10
  %34 = phi ptr [ %11, %10 ], [ %8, %32 ], [ %8, %19 ], [ %8, %15 ]
  ret ptr %34
}

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @unlikely_text_section() local_unnamed_addr #9 !prof !182 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !183
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @initialize_cold_section_name()
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr inttoptr (i64 128 to ptr), align 128, !tbaa !194
  %12 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  br label %13

13:                                               ; preds = %0, %10, %7
  %14 = phi ptr [ %12, %10 ], [ %8, %7 ], [ @.str.7, %0 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 31), align 8, !tbaa !243
  %16 = tail call i32 %15(ptr noundef null, ptr noundef nonnull %14, i32 noundef 0) #34
  %17 = tail call ptr @get_section(ptr noundef nonnull %14, i32 noundef %16, ptr noundef null)
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @initialize_cold_section_name() unnamed_addr #9 !prof !182 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !183
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @current_function_decl, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 657, ptr noundef nonnull @.str.5) #34
  br label %7

7:                                                ; preds = %0, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !183
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = load i32, ptr @flag_function_sections, align 4, !tbaa !198
  %15 = icmp ne i32 %14, 0
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !194
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  %24 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %23, ptr nonnull align 4 %24, i64 %22, i1 false)
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %26 = call ptr %25(ptr noundef nonnull %23) #34
  %27 = call i64 (ptr, ...) @concat_length(ptr noundef %26, ptr noundef nonnull @.str.166, ptr noundef null) #34
  %28 = add i64 %27, 1
  %29 = alloca i8, i64 %28, align 16
  store ptr %29, ptr @libiberty_concat_ptr, align 8, !tbaa !183
  %30 = call ptr (ptr, ...) @concat_copy2(ptr noundef %26, ptr noundef nonnull @.str.166, ptr noundef null) #34
  %31 = call ptr @ggc_alloc_string(ptr noundef %30, i32 noundef -1) #34
  br label %32

32:                                               ; preds = %10, %18
  %33 = phi ptr [ %31, %18 ], [ @.str.7, %10 ]
  store ptr %33, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  br label %34

34:                                               ; preds = %7, %32
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_named_section(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !198
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 725, ptr noundef nonnull @.str.5) #34
  br label %12

12:                                               ; preds = %3, %5, %11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.tree_string, ptr %16, i64 0, i32 2
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %17, %14 ], [ %1, %12 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 31), align 8, !tbaa !243
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %2) #34
  %22 = tail call ptr @get_section(ptr noundef nonnull %19, i32 noundef %21, ptr noundef %0)
  ret ptr %22
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @unlikely_text_section_p(ptr noundef readonly %0) local_unnamed_addr #10 !prof !182 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !183
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %5 = select i1 %3, ptr @.str.7, ptr %4
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8, !tbaa !194
  %11 = and i32 %10, 6291456
  %12 = icmp eq i32 %11, 2097152
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %15)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %13, %9, %1
  %20 = phi i8 [ 0, %9 ], [ 0, %1 ], [ %18, %13 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local void @resolve_unique_section(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  %7 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 23), align 8, !tbaa !245
  tail call void %17(ptr noundef %0, i32 noundef %1) #34
  br label %18

18:                                               ; preds = %16, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @function_section(ptr noundef %0) local_unnamed_addr #12 !prof !182 {
  %2 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !194
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4, !prof !246

4:                                                ; preds = %1
  %5 = tail call ptr @unlikely_text_section()
  br label %19

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8, !prof !247

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = icmp ne ptr %10, null
  %12 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false, !prof !247
  br i1 %14, label %15, label %17, !prof !247

15:                                               ; preds = %8
  %16 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0)
  br label %19

17:                                               ; preds = %8, %6
  %18 = load ptr, ptr @text_section, align 8, !tbaa !183
  br label %19

19:                                               ; preds = %17, %15, %4
  %20 = phi ptr [ %5, %4 ], [ %16, %15 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @current_function_section() local_unnamed_addr #12 !prof !248 {
  %1 = load i8, ptr @in_cold_section_p, align 1, !tbaa !194
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3, !prof !249

3:                                                ; preds = %0
  %4 = tail call ptr @unlikely_text_section()
  br label %19

5:                                                ; preds = %0
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !183
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !250

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = icmp ne ptr %10, null
  %12 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false, !prof !250
  br i1 %14, label %15, label %17, !prof !250

15:                                               ; preds = %8
  %16 = tail call ptr @get_named_section(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0)
  br label %19

17:                                               ; preds = %8, %5
  %18 = load ptr, ptr @text_section, align 8, !tbaa !183
  br label %19

19:                                               ; preds = %17, %15, %3
  %20 = phi ptr [ %4, %3 ], [ %16, %15 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @default_function_rodata_section(ptr noundef %0) local_unnamed_addr #12 !prof !251 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3, !prof !252

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7, !prof !253

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2, i64 1
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 46)
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr %8, ptr %14
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16)
  %18 = add i64 %17, 8
  %19 = alloca i8, i64 %18, align 16
  store i64 27431034386608686, ptr %19, align 16
  %20 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %16)
  %21 = call ptr @get_section(ptr noundef nonnull %19, i32 noundef 2048, ptr noundef nonnull %0)
  br label %39

22:                                               ; preds = %7
  %23 = load i32, ptr @flag_function_sections, align 4, !tbaa !198
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @flag_data_sections, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %33 = add i64 %32, 3
  %34 = alloca i8, i64 %33, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %34, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %35 = getelementptr inbounds i8, ptr %34, i64 7
  %36 = getelementptr inbounds i8, ptr %5, i64 33
  %37 = add i64 %32, -4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %36, i64 %37, i1 false)
  %38 = call ptr @get_section(ptr noundef nonnull %34, i32 noundef 0, ptr noundef nonnull %0)
  br label %39

39:                                               ; preds = %22, %28, %31, %12
  %40 = phi i1 [ false, %12 ], [ false, %31 ], [ true, %28 ], [ true, %22 ]
  %41 = phi ptr [ %21, %12 ], [ %38, %31 ], [ undef, %28 ], [ undef, %22 ]
  br i1 %40, label %42, label %44

42:                                               ; preds = %39, %3, %1
  %43 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %41, %39 ], [ %43, %42 ]
  ret ptr %45
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @default_no_function_rodata_section(ptr nocapture noundef readnone %0) local_unnamed_addr #15 !prof !182 {
  %2 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @mergeable_constant_section(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = alloca [24 x i8], align 16
  %5 = load i32, ptr @flag_merge_constants, align 4, !tbaa !198
  %6 = icmp ne i32 %5, 0
  %7 = icmp ugt i32 %0, 1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !194
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = icmp ule i64 %14, %1
  %16 = add i64 %1, -8
  %17 = icmp ult i64 %16, 249
  %18 = and i1 %17, %15
  %19 = tail call i64 @llvm.ctpop.i64(i64 %1), !range !254
  %20 = icmp ult i64 %19, 2
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #34
  %23 = lshr i64 %1, 3
  %24 = trunc i64 %23 to i32
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %24)
  %26 = or i32 %24, %2
  %27 = or i32 %26, 32768
  %28 = call ptr @get_section(ptr noundef nonnull %4, i32 noundef %27, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #34
  br label %31

29:                                               ; preds = %9, %3
  %30 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %28, %22 ], [ %30, %29 ]
  ret ptr %32
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @set_user_assembler_name(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !255 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %4 = add i64 %3, 2
  %5 = alloca i8, i64 %4, align 16
  store i8 42, ptr %5, align 16, !tbaa !194
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1)
  %8 = call ptr @get_identifier(ptr noundef nonnull %5) #34
  call void @change_decl_assembler_name(ptr noundef %0, ptr noundef %8) #34
  call void @set_decl_rtl(ptr noundef %0, ptr noundef null) #34
  ret void
}

declare void @change_decl_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @decode_reg_name(ptr noundef readonly %0) local_unnamed_addr #16 !prof !182 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %72, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !194
  switch i8 %4, label %7 [
    i8 37, label %5
    i8 35, label %5
  ]

5:                                                ; preds = %3, %3
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %10 = and i64 %9, 4294967295
  br label %11

11:                                               ; preds = %16, %7
  %12 = phi i64 [ %13, %16 ], [ %10, %7 ]
  %13 = add nsw i64 %12, -1
  %14 = and i64 %13, 2147483648
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = and i64 %13, 2147483647
  %18 = getelementptr inbounds i8, ptr %8, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !194
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !256
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %11, !llvm.loop !257

25:                                               ; preds = %16, %11
  %26 = load i8, ptr %8, align 1, !tbaa !194
  %27 = icmp ne i8 %26, 0
  %28 = and i1 %15, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = tail call i64 @strtol(ptr nocapture noundef nonnull %8, ptr noundef null, i32 noundef 10)
  %31 = trunc i64 %30 to i32
  %32 = icmp ult i32 %31, 53
  %33 = select i1 %32, i32 %31, i32 -2
  br label %72

34:                                               ; preds = %25, %45
  %35 = phi i64 [ %46, %45 ], [ 0, %25 ]
  %36 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !183
  %38 = load i8, ptr %37, align 1, !tbaa !194
  switch i8 %38, label %41 [
    i8 0, label %45
    i8 37, label %39
    i8 35, label %39
  ]

39:                                               ; preds = %34, %34
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi ptr [ %40, %39 ], [ %37, %34 ]
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %34, %41
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, 53
  br i1 %47, label %48, label %34, !llvm.loop !258

48:                                               ; preds = %45, %60
  %49 = phi i64 [ %61, %60 ], [ 0, %45 ]
  %50 = getelementptr inbounds [24 x %struct.anon], ptr @decode_reg_name.table, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 16, !tbaa !259
  %52 = load i8, ptr %51, align 1, !tbaa !194
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %51)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds [24 x %struct.anon], ptr @decode_reg_name.table, i64 0, i64 %49, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !261
  br label %72

60:                                               ; preds = %48, %54
  %61 = add nuw nsw i64 %49, 1
  %62 = icmp eq i64 %61, 24
  br i1 %62, label %63, label %48, !llvm.loop !262

63:                                               ; preds = %60
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(7) @.str.36)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(3) @.str.37)
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 -3, i32 -2
  br label %72

70:                                               ; preds = %41
  %71 = trunc i64 %35 to i32
  br label %72

72:                                               ; preds = %70, %1, %57, %29, %63, %66
  %73 = phi i32 [ %59, %57 ], [ %33, %29 ], [ -4, %63 ], [ %69, %66 ], [ -1, %1 ], [ %71, %70 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local void @align_variable(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 !prof !263 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !194
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %22, label %6, !prof !264

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 15
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !194
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !194
  %21 = tail call i32 @llvm.umax.i32(i32 %4, i32 %20)
  br label %22

22:                                               ; preds = %16, %10, %6, %2
  %23 = phi i32 [ %21, %16 ], [ %4, %10 ], [ %4, %6 ], [ %4, %2 ]
  %24 = icmp ugt i32 %23, -2147483648
  br i1 %24, label %25, label %27, !prof !265

25:                                               ; preds = %22
  %26 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef %0, i32 noundef 268435456) #34
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ -2147483648, %25 ], [ %23, %22 ]
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 4398046511104
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %57, !prof !264

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  %35 = tail call i32 @ix86_data_alignment(ptr noundef %34, i32 noundef %28) #34
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 49152
  %39 = icmp eq i32 %38, 0
  %40 = icmp ult i32 %35, 33
  %41 = select i1 %39, i1 true, i1 %40, !prof !264
  %42 = select i1 %41, i32 %35, i32 %28, !prof !264
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !194
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr @global_trees, align 16
  %47 = icmp eq ptr %44, %46
  %48 = select i1 %45, i1 true, i1 %47, !prof !265
  br i1 %48, label %57, label %49, !prof !265

49:                                               ; preds = %32
  %50 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %44, i32 noundef %42) #34
  %51 = load i32, ptr %36, align 8
  %52 = and i32 %51, 49152
  %53 = icmp eq i32 %52, 0
  %54 = icmp ult i32 %50, 33
  %55 = select i1 %53, i1 true, i1 %54, !prof !264
  %56 = select i1 %55, i32 %50, i32 %42, !prof !264
  br label %57

57:                                               ; preds = %32, %49, %27
  %58 = phi i32 [ %28, %27 ], [ %56, %49 ], [ %42, %32 ]
  store i32 %58, ptr %3, align 8, !tbaa !194
  ret void
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ix86_data_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @make_decl_rtl(ptr noundef %0) local_unnamed_addr #12 !prof !266 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %5 [
    i16 34, label %4
    i16 36, label %4
  ], !prof !267

4:                                                ; preds = %1, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1310, ptr noundef nonnull @.str.5) #34
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 201392127
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %9, label %15, !prof !268

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 50331648
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1317, ptr noundef nonnull @.str.5) #34
  br label %15

15:                                               ; preds = %5, %9, %14
  %16 = load i64, ptr %0, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %19 [
    i16 35, label %18
    i16 30, label %18
  ], !prof !267

18:                                               ; preds = %15, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1321, ptr noundef nonnull @.str.5) #34
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i64, ptr %0, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !194
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %88, label %25, !prof !268

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = icmp eq ptr %27, null
  br i1 %28, label %88, label %29, !prof !269

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = tail call ptr @adjust_address_1(ptr noundef nonnull %27, i32 noundef %36, i64 noundef 0, i32 noundef 0, i32 noundef 1) #34
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %39) #34
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 29
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, ptr %33, align 8
  %46 = and i64 %45, 16777216
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %308

48:                                               ; preds = %44, %40
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !270
  %50 = load ptr, ptr %26, align 8, !tbaa !194
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %53 = load ptr, ptr %26, align 8, !tbaa !194
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %53, %52 ], [ %50, %48 ]
  tail call void %49(ptr noundef nonnull %0, ptr noundef %55, i32 noundef 0) #34
  %56 = load i32, ptr %27, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 43
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !194
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load i32, ptr %66, align 8, !tbaa !194
  %68 = and i32 %67, 128
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = tail call fastcc ptr @get_block_for_decl(ptr noundef nonnull %0)
  %72 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !194
  %74 = icmp eq ptr %73, %71
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !194
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1264, ptr noundef nonnull @.str.5) #34
  br label %80

80:                                               ; preds = %79, %75
  store ptr %71, ptr %72, align 8, !tbaa !194
  br label %81

81:                                               ; preds = %80, %70, %65, %59, %54
  %82 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %308, label %84

84:                                               ; preds = %81
  %85 = load i64, ptr %0, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 32
  br i1 %87, label %307, label %308

88:                                               ; preds = %25, %19
  %89 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #34
  %90 = getelementptr inbounds %struct.tree_identifier, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !194
  %92 = load i8, ptr %91, align 1, !tbaa !194
  %93 = icmp eq i8 %92, 42
  br i1 %93, label %103, label %94, !prof !268

94:                                               ; preds = %88
  %95 = load i64, ptr %0, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 29
  br i1 %97, label %103, label %98, !prof !271

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 16777216
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %203, !prof !253

103:                                              ; preds = %98, %94, %88
  %104 = load i64, ptr %0, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 29
  br i1 %106, label %205, label %107, !prof !271

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 16777216
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %205, label %112, !prof !253

112:                                              ; preds = %107
  %113 = getelementptr inbounds i8, ptr %91, i64 1
  %114 = tail call i32 @decode_reg_name(ptr noundef nonnull %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %203, label %116

116:                                              ; preds = %112
  %117 = icmp slt i32 %114, 0
  br i1 %117, label %203, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !194
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 14
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = tail call i32 @vector_type_mode(ptr noundef nonnull %120) #34
  br label %131

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  br label %131

131:                                              ; preds = %126, %124
  %132 = phi i32 [ %125, %124 ], [ %130, %126 ]
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %203, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %119, align 8, !tbaa !194
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 14
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = tail call i32 @vector_type_mode(ptr noundef nonnull %135) #34
  br label %146

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  br label %146

146:                                              ; preds = %141, %139
  %147 = phi i32 [ %140, %139 ], [ %145, %141 ]
  %148 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %114, i32 noundef %147) #34
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %203, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !194
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = load i64, ptr %0, align 8
  %156 = and i64 %155, 67108864
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  store ptr null, ptr %151, align 8, !tbaa !194
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43) #34
  br label %159

159:                                              ; preds = %158, %154, %150
  %160 = load i64, ptr %0, align 8
  %161 = and i64 %160, 524288
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 235, ptr noundef nonnull @.str.44) #34
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i64, ptr %108, align 8
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 255
  %169 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %168, i32 noundef %114) #34
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %169) #34
  %170 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !194
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %174 = load ptr, ptr %170, align 8, !tbaa !194
  br label %175

175:                                              ; preds = %165, %173
  %176 = phi ptr [ %174, %173 ], [ %171, %165 ]
  %177 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %114, ptr %177, align 8, !tbaa !194
  %178 = load ptr, ptr %170, align 8, !tbaa !194
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %181 = load ptr, ptr %170, align 8, !tbaa !194
  br label %182

182:                                              ; preds = %175, %180
  %183 = phi ptr [ %181, %180 ], [ %178, %175 ]
  %184 = load i32, ptr %183, align 8
  %185 = or i32 %184, 134217728
  store i32 %185, ptr %183, align 8
  %186 = load i64, ptr %0, align 8
  %187 = and i64 %186, 67108864
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %308, label %189

189:                                              ; preds = %182
  %190 = zext nneg i32 %114 to i64
  %191 = load i64, ptr %108, align 8
  %192 = and i64 %191, 255
  %193 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %190, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !194
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %308, label %196

196:                                              ; preds = %189
  %197 = zext i8 %194 to i32
  br label %198

198:                                              ; preds = %196, %198
  %199 = phi i32 [ %200, %198 ], [ %197, %196 ]
  %200 = add nsw i32 %199, -1
  %201 = add nuw nsw i32 %200, %114
  tail call void @globalize_reg(i32 noundef %201) #34
  %202 = icmp sgt i32 %199, 1
  br i1 %202, label %198, label %308, !llvm.loop !272

203:                                              ; preds = %146, %131, %116, %112, %98
  %204 = phi ptr [ @.str.39, %98 ], [ @.str.39, %112 ], [ @.str.40, %116 ], [ @.str.41, %131 ], [ @.str.42, %146 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %204, ptr noundef nonnull %0) #34
  br label %205

205:                                              ; preds = %203, %103, %107
  %206 = load i64, ptr %0, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 32
  br i1 %208, label %209, label %232, !prof !273

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !194
  %212 = icmp eq ptr %211, null
  br i1 %212, label %224, label %213, !prof !253

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !194
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = and i32 %219, -9
  store i32 %223, ptr %218, align 8
  br label %224

224:                                              ; preds = %222, %217, %213, %209
  br i1 %208, label %225, label %232, !prof !273

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 128
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !253

230:                                              ; preds = %225
  %231 = and i32 %227, -9
  store i32 %231, ptr %226, align 8
  br label %232

232:                                              ; preds = %205, %230, %225, %224
  %233 = load i32, ptr @flag_section_anchors, align 4, !tbaa !198
  %234 = and i32 %233, 255
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %255, label %236, !prof !269

236:                                              ; preds = %232
  %237 = and i64 %206, 65534
  %238 = icmp eq i64 %237, 32
  br i1 %238, label %239, label %255

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !194
  %242 = icmp eq ptr %241, %0
  br i1 %242, label %255, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %245 = load ptr, ptr %244, align 8, !tbaa !194
  %246 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.167, ptr noundef %245) #34
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = tail call fastcc ptr @get_block_for_decl(ptr noundef nonnull %0)
  %250 = tail call ptr @ggc_alloc_stat(i64 noundef 48) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %250, i8 0, i64 48, i1 false)
  store i32 1048621, ptr %250, align 8
  %251 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  store ptr %91, ptr %251, align 8, !tbaa !194
  %252 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 128, ptr %252, align 8, !tbaa !194
  %253 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 1
  store ptr %249, ptr %253, align 8, !tbaa !194
  %254 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 2
  store i64 -1, ptr %254, align 8, !tbaa !194
  br label %269

255:                                              ; preds = %236, %239, %243, %232
  %256 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !194
  %258 = load ptr, ptr @global_trees, align 16, !tbaa !183
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %266, label %260, !prof !268

260:                                              ; preds = %255
  %261 = load i64, ptr %257, align 8
  %262 = lshr i64 %261, 56
  %263 = trunc i64 %262 to i8
  %264 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !274
  %265 = tail call i32 %264(i8 noundef zeroext %263) #34, !prof !275
  br label %266

266:                                              ; preds = %260, %255
  %267 = phi i32 [ %265, %260 ], [ 16, %255 ]
  %268 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %267, ptr noundef nonnull %91) #34
  br label %269

269:                                              ; preds = %266, %248
  %270 = phi ptr [ %250, %248 ], [ %268, %266 ]
  %271 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %272 = load i32, ptr %271, align 8
  %273 = load i32, ptr %270, align 8
  %274 = shl i32 %272, 24
  %275 = and i32 %274, -2147483648
  %276 = and i32 %273, 2147483647
  %277 = or disjoint i32 %276, %275
  store i32 %277, ptr %270, align 8
  %278 = and i32 %273, 67108864
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280, !prof !269

280:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1465, ptr noundef nonnull @.str.5) #34
  br label %281

281:                                              ; preds = %269, %280
  %282 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %282, align 8, !tbaa !194
  %283 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %284 = load i64, ptr %283, align 8
  %285 = trunc i64 %284 to i32
  %286 = and i32 %285, 255
  %287 = tail call ptr @gen_rtx_MEM(i32 noundef %286, ptr noundef nonnull %270) #34
  %288 = load i64, ptr %0, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 29
  br i1 %290, label %292, label %291, !prof !271

291:                                              ; preds = %281
  tail call void @set_mem_attributes(ptr noundef %287, ptr noundef nonnull %0, i32 noundef 1) #34
  br label %292

292:                                              ; preds = %291, %281
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %287) #34
  %293 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !270
  %294 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !194
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %299, !prof !268

297:                                              ; preds = %292
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %298 = load ptr, ptr %294, align 8, !tbaa !194
  br label %299

299:                                              ; preds = %292, %297
  %300 = phi ptr [ %298, %297 ], [ %295, %292 ]
  tail call void %293(ptr noundef nonnull %0, ptr noundef %300, i32 noundef 1) #34, !prof !276
  %301 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303, !prof !269

303:                                              ; preds = %299
  %304 = load i64, ptr %0, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 32
  br i1 %306, label %307, label %308

307:                                              ; preds = %303, %84
  tail call void @mudflap_enqueue_decl(ptr noundef nonnull %0) #34
  br label %308

308:                                              ; preds = %198, %307, %189, %44, %182, %299, %303, %81, %84
  ret void
}

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_block_for_decl(ptr noundef %0) unnamed_addr #9 !prof !182 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @host_integerp(ptr noundef nonnull %16, i32 noundef 1) #34
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @align_variable(ptr noundef nonnull %0, i8 noundef zeroext 0)
  br label %26

26:                                               ; preds = %25, %21
  %27 = tail call fastcc ptr @get_variable_section(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %28 = load i32, ptr %27, align 8, !tbaa !194
  %29 = and i32 %28, 6291456
  %30 = icmp eq i32 %29, 4194304
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @get_block_for_section(ptr noundef nonnull %27)
  br label %33

33:                                               ; preds = %26, %18, %14, %10, %5, %31
  %34 = phi ptr [ %32, %31 ], [ null, %5 ], [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %26 ]
  ret ptr %34
}

declare void @mudflap_enqueue_decl(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @globalize_reg(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_decl_rtl_for_debug(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %7, %1
  %12 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !198
  store i32 0, ptr @flag_strict_aliasing, align 4, !tbaa !198
  %13 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  store i32 0, ptr @flag_mudflap, align 4, !tbaa !198
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %18 = load ptr, ptr %14, align 8, !tbaa !194
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %11 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #34
  store i32 %12, ptr @flag_strict_aliasing, align 4, !tbaa !198
  store i32 %13, ptr @flag_mudflap, align 4, !tbaa !198
  br label %21

21:                                               ; preds = %7, %19
  %22 = phi ptr [ %20, %19 ], [ %9, %7 ]
  ret ptr %22
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_asm(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  tail call void @app_enable() #34
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.tree_string, ptr %9, i64 0, i32 2
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.45, ptr noundef nonnull %11)
  ret void
}

declare void @app_enable() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @default_stabs_asm_out_destructor(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  tail call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.46, i32 noundef 22) #34
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  tail call void @dbxout_stab_value_label(ptr noundef %4) #34
  ret void
}

declare void @dbxout_begin_simple_stabs(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dbxout_stab_value_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_addr_to_section(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  tail call void @switch_to_section(ptr noundef %1)
  tail call void @assemble_align(i32 noundef 32)
  %3 = tail call zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 1), !range !277
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @switch_to_section(ptr noundef %0) local_unnamed_addr #12 !prof !278 {
  %2 = load ptr, ptr @in_section, align 8, !tbaa !183
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %39, label %4, !prof !279

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !194
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr %0, ptr null, !prof !280
  store ptr %8, ptr @in_section, align 8, !tbaa !183
  %9 = load i32, ptr %0, align 8, !tbaa !194
  %10 = and i32 %9, 6291456
  switch i32 %10, label %36 [
    i32 2097152, label %11
    i32 0, label %30
    i32 4194304, label %35
  ], !prof !281

11:                                               ; preds = %4
  %12 = load ptr, ptr @cfun, align 8, !tbaa !183
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15, !prof !282
  br i1 %16, label %23, label %17, !prof !282

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(15) @.str.7)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !283

22:                                               ; preds = %17
  store ptr @.str.7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  br label %23

23:                                               ; preds = %22, %17, %11
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 19), align 8, !tbaa !284
  %25 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = load i32, ptr %0, align 8, !tbaa !194
  %28 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  tail call void %24(ptr noundef %26, i32 noundef %27, ptr noundef %29) #34, !prof !285
  br label %36

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.unnamed_section, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = getelementptr inbounds %struct.unnamed_section, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  tail call void %32(ptr noundef %34) #34, !prof !286
  br label %36

35:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6837, ptr noundef nonnull @.str.5) #34
  br label %36

36:                                               ; preds = %4, %35, %30, %23
  %37 = load i32, ptr %0, align 8, !tbaa !194
  %38 = or i32 %37, 1048576
  store i32 %38, ptr %0, align 8, !tbaa !194
  br label %39

39:                                               ; preds = %1, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_align(i32 noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = icmp sgt i32 %0, 8
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = lshr i32 %0, 3
  %5 = zext nneg i32 %4 to i64
  %6 = tail call i32 @floor_log2(i64 noundef %5) #34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %10 = tail call i32 @floor_log2(i64 noundef %5) #34
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.57, i32 noundef %11)
  br label %13

13:                                               ; preds = %3, %8, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !182 {
  %5 = shl i32 %1, 3
  %6 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !198
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 128, i32 256
  %10 = tail call i32 @llvm.umin.i32(i32 %5, i32 %9)
  %11 = icmp ule i32 %10, %2
  %12 = zext i1 %11 to i32
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %14 = tail call zeroext i8 %13(ptr noundef %0, i32 noundef %1, i32 noundef %12) #34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = icmp ugt i32 %1, 1
  br i1 %17, label %18, label %57

18:                                               ; preds = %16
  %19 = icmp ugt i32 %1, 4
  %20 = select i1 %19, i32 4, i32 1
  %21 = shl nuw nsw i32 %20, 3
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %2)
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 31
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = lshr i32 %23, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !194
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %18, %26
  %34 = phi i32 [ %32, %26 ], [ 2, %18 ]
  %35 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef %34, i32 noundef 0) #34
  %36 = tail call i32 @mode_for_size(i32 noundef %5, i32 noundef %34, i32 noundef 0) #34
  br label %37

37:                                               ; preds = %33, %48
  %38 = phi i32 [ 0, %33 ], [ %49, %48 ]
  %39 = tail call ptr @simplify_subreg(i32 noundef %35, ptr noundef nonnull %0, i32 noundef %36, i32 noundef %38) #34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @assemble_integer(ptr noundef nonnull %39, i32 noundef %20, i32 noundef %22, i32 noundef 0), !range !277
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 2, i32 0
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ 2, %37 ], [ %44, %41 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = add i32 %38, %20
  %50 = icmp ult i32 %49, %1
  br i1 %50, label %37, label %51, !llvm.loop !288

51:                                               ; preds = %45, %48
  %52 = phi i32 [ %38, %45 ], [ %49, %48 ]
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2726, ptr noundef nonnull @.str.5) #34
  br label %57

57:                                               ; preds = %54, %56, %16
  %58 = icmp eq i32 %3, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %60

60:                                               ; preds = %51, %59, %57, %4
  %61 = phi i8 [ 1, %4 ], [ 0, %57 ], [ 0, %59 ], [ 1, %51 ]
  ret i8 %61
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_cdtor_priority_section(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !182 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #34
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, ptr @.str.49, ptr @.str.48
  %6 = sub nsw i32 65535, %0
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %5, i32 noundef %6)
  %8 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef 512, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #34
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_named_section_asm_out_destructor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = alloca [16 x i8], align 16
  %4 = icmp eq i32 %1, 65535
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #34
  %6 = sub nsw i32 65535, %1
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @.str.49, i32 noundef %6)
  %8 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef 512, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #34
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @get_section(ptr noundef nonnull @.str.49, i32 noundef 512, ptr noundef null)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %8, %5 ], [ %10, %9 ]
  call void @switch_to_section(ptr noundef %12)
  call void @assemble_align(i32 noundef 32)
  %13 = call zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 1), !range !277
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_stabs_asm_out_constructor(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  tail call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.50, i32 noundef 22) #34
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  tail call void @dbxout_stab_value_label(ptr noundef %4) #34
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_named_section_asm_out_constructor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = alloca [16 x i8], align 16
  %4 = icmp eq i32 %1, 65535
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #34
  %6 = sub nsw i32 65535, %1
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @.str.48, i32 noundef %6)
  %8 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef 512, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #34
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @get_section(ptr noundef nonnull @.str.48, i32 noundef 512, ptr noundef null)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %8, %5 ], [ %10, %9 ]
  call void @switch_to_section(ptr noundef %12)
  call void @assemble_align(i32 noundef 32)
  %13 = call zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 1), !range !277
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @notice_global_symbol(ptr noundef %0) local_unnamed_addr #12 !prof !289 {
  %2 = load ptr, ptr @first_global_object_name, align 8, !tbaa !183
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %73, !prof !290

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 134217728
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %73, label %8, !prof !291

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %73, !prof !292

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = icmp eq ptr %15, null
  br i1 %16, label %73, label %17, !prof !293

17:                                               ; preds = %13
  %18 = trunc i64 %5 to i16
  switch i16 %18, label %73 [
    i16 29, label %31
    i16 32, label %19
  ], !prof !294

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = icmp eq ptr %26, null
  %28 = load ptr, ptr @global_trees, align 16
  %29 = icmp eq ptr %26, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %73, label %31

31:                                               ; preds = %24, %17, %19
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !295

35:                                               ; preds = %31
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %36 = load ptr, ptr %32, align 8, !tbaa !194
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %73, !prof !295

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54, !prof !295

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !194
  %50 = icmp ne ptr %49, null
  %51 = load i32, ptr @flag_shlib, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52, !prof !293
  br i1 %53, label %54, label %55, !prof !293

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %47, %54
  %56 = phi ptr [ @weak_global_object_name, %54 ], [ @first_global_object_name, %47 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !183
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %73, !prof !295

59:                                               ; preds = %55
  %60 = load ptr, ptr %32, align 8, !tbaa !194
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64, !prof !293

62:                                               ; preds = %59
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %63 = load ptr, ptr %32, align 8, !tbaa !194
  br label %64

64:                                               ; preds = %59, %62
  %65 = phi ptr [ %63, %62 ], [ %60, %59 ]
  %66 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %67 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !194
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !194
  %71 = tail call ptr %66(ptr noundef %70) #34, !prof !296
  %72 = tail call ptr @ggc_alloc_string(ptr noundef %71, i32 noundef -1) #34
  store ptr %72, ptr %56, align 8, !tbaa !183
  br label %73

73:                                               ; preds = %37, %55, %64, %1, %4, %8, %13, %24, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @assemble_start_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !297 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #34
  store ptr null, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  store i8 0, ptr @first_function_block_is_cold, align 1, !tbaa !194
  %6 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !198
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8, !prof !246

8:                                                ; preds = %2
  %9 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.52, i32 noundef %9)
  %11 = call ptr @ggc_alloc_string(ptr noundef nonnull %5, i32 noundef -1) #34
  store ptr %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !298
  %12 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.53, i32 noundef %12)
  %14 = call ptr @ggc_alloc_string(ptr noundef nonnull %5, i32 noundef -1) #34
  store ptr %14, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !299
  %15 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.54, i32 noundef %15)
  %17 = call ptr @ggc_alloc_string(ptr noundef nonnull %5, i32 noundef -1) #34
  store ptr %17, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !300
  %18 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.55, i32 noundef %18)
  %20 = call ptr @ggc_alloc_string(ptr noundef nonnull %5, i32 noundef -1) #34
  store ptr %20, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8, !tbaa !301
  %21 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @const_labelno, align 4, !tbaa !198
  br label %24

23:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), i8 0, i64 32, i1 false)
  br label %24

24:                                               ; preds = %23, %8
  call void @app_disable() #34
  %25 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !302
  %26 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 36), align 8, !tbaa !303
  %27 = icmp eq i8 %26, 0
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false, !prof !246
  br i1 %30, label %49, label %31, !prof !246

31:                                               ; preds = %24
  %32 = call ptr @get_insns() #34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %37, %31
  %35 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !194
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %42

37:                                               ; preds = %31, %37
  %38 = phi ptr [ %40, %37 ], [ %32, %31 ]
  call fastcc void @mark_constants(ptr noundef nonnull %38)
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = icmp eq ptr %40, null
  br i1 %41, label %34, label %37, !llvm.loop !304

42:                                               ; preds = %34, %42
  %43 = phi ptr [ %47, %42 ], [ %35, %34 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  call fastcc void @mark_constants(ptr noundef %45)
  %46 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !194
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !305

49:                                               ; preds = %42, %34, %24
  %50 = load ptr, ptr %25, align 8, !tbaa !183
  %51 = icmp eq ptr %50, null
  br i1 %51, label %83, label %52, !prof !295

52:                                               ; preds = %49, %80
  %53 = phi ptr [ %81, %80 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !306
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %53, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !308
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load i32, ptr %60, align 8, !tbaa !194
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @place_block_symbol(ptr noundef %59)
  br label %80

69:                                               ; preds = %64, %57
  %70 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 22), align 8, !tbaa !309
  %71 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %53, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !310
  %73 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %53, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !311
  %75 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %53, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !312
  %77 = zext i32 %76 to i64
  %78 = call ptr %70(i32 noundef %72, ptr noundef %74, i64 noundef %77) #34
  call void @switch_to_section(ptr noundef %78)
  %79 = load i32, ptr %75, align 8, !tbaa !312
  call fastcc void @output_constant_pool_1(ptr noundef nonnull %53, i32 noundef %79)
  br label %80

80:                                               ; preds = %69, %68, %52
  %81 = load ptr, ptr %53, align 8, !tbaa !183
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %52, !prof !295, !llvm.loop !313

83:                                               ; preds = %80, %49
  %84 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !194
  %86 = icmp eq ptr %85, null
  %87 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %88 = icmp ne i8 %87, 0
  %89 = select i1 %86, i1 %88, i1 false, !prof !246
  br i1 %89, label %90, label %99, !prof !246

90:                                               ; preds = %83
  %91 = load i32, ptr @flag_function_sections, align 4, !tbaa !198
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97, !prof !246

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !194
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !246

97:                                               ; preds = %93, %90
  %98 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 23), align 8, !tbaa !245
  call void %98(ptr noundef %0, i32 noundef 0) #34
  br label %99

99:                                               ; preds = %83, %93, %97
  %100 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !198
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %132, !prof !247

102:                                              ; preds = %99
  %103 = call ptr @unlikely_text_section()
  call void @switch_to_section(ptr noundef %103)
  %104 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !194
  call void @assemble_align(i32 noundef %105)
  %106 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %107 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !299
  call void @assemble_name(ptr noundef %106, ptr noundef %107)
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %109 = call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %108)
  %110 = load ptr, ptr @cfun, align 8, !tbaa !183
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 20
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 1073741824
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !314
  %118 = load ptr, ptr %117, align 8, !tbaa !316
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !318
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 13
  %122 = load i32, ptr %121, align 8, !tbaa !320
  %123 = and i32 %122, 96
  %124 = icmp eq i32 %123, 64
  br i1 %124, label %125, label %144

125:                                              ; preds = %115
  %126 = load ptr, ptr @text_section, align 8, !tbaa !183
  call void @switch_to_section(ptr noundef %126)
  %127 = load i32, ptr %104, align 8, !tbaa !194
  call void @assemble_align(i32 noundef %127)
  %128 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %129 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !298
  call void @assemble_name(ptr noundef %128, ptr noundef %129)
  %130 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %131 = call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %130)
  br label %143

132:                                              ; preds = %99
  %133 = load ptr, ptr %84, align 8, !tbaa !194
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135, !prof !246

135:                                              ; preds = %132
  call fastcc void @initialize_cold_section_name()
  %136 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !234
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %84, align 8, !tbaa !194
  %140 = getelementptr inbounds %struct.tree_string, ptr %139, i64 0, i32 2
  %141 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) %136)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %125
  store i8 1, ptr @first_function_block_is_cold, align 1, !tbaa !194
  br label %144

144:                                              ; preds = %143, %132, %138, %135, %102, %115
  %145 = phi i1 [ false, %102 ], [ false, %115 ], [ false, %138 ], [ false, %135 ], [ false, %132 ], [ %101, %143 ]
  %146 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !194
  store i8 %146, ptr @in_cold_section_p, align 1, !tbaa !194
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148, !prof !246

148:                                              ; preds = %144
  %149 = call ptr @unlikely_text_section()
  br label %162

150:                                              ; preds = %144
  %151 = icmp eq ptr %0, null
  br i1 %151, label %160, label %152, !prof !247

152:                                              ; preds = %150
  %153 = load ptr, ptr %84, align 8, !tbaa !194
  %154 = icmp ne ptr %153, null
  %155 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %156 = icmp ne i8 %155, 0
  %157 = select i1 %154, i1 %156, i1 false, !prof !247
  br i1 %157, label %158, label %160, !prof !247

158:                                              ; preds = %152
  %159 = call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0)
  br label %162

160:                                              ; preds = %152, %150
  %161 = load ptr, ptr @text_section, align 8, !tbaa !183
  br label %162

162:                                              ; preds = %148, %158, %160
  %163 = phi ptr [ %149, %148 ], [ %159, %158 ], [ %161, %160 ]
  call void @switch_to_section(ptr noundef %163)
  %164 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !198
  %165 = icmp eq i32 %164, 0
  %166 = or i1 %145, %165
  br i1 %166, label %172, label %167, !prof !246

167:                                              ; preds = %162
  %168 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %169 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !298
  call void @assemble_name(ptr noundef %168, ptr noundef %169)
  %170 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %171 = call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %174 = load i32, ptr %173, align 8, !tbaa !194
  %175 = lshr i32 %174, 3
  %176 = zext nneg i32 %175 to i64
  %177 = call i32 @floor_log2(i64 noundef %176) #34
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %183, !prof !247

179:                                              ; preds = %172
  %180 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %181 = shl nuw i32 1, %177
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.57, i32 noundef %181)
  br label %183

183:                                              ; preds = %179, %172
  %184 = load i64, ptr %0, align 8
  %185 = and i64 %184, 4398046511104
  %186 = icmp eq i64 %185, 0
  %187 = load i32, ptr @align_functions_log, align 4
  %188 = icmp sgt i32 %187, %177
  %189 = select i1 %186, i1 %188, i1 false, !prof !246
  br i1 %189, label %190, label %217, !prof !246

190:                                              ; preds = %183
  %191 = load ptr, ptr @cfun, align 8, !tbaa !183
  %192 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %191) #34
  %193 = icmp ne i8 %192, 0
  %194 = load i32, ptr @align_functions_log, align 4
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %193, i1 %195, i1 false, !prof !246
  br i1 %196, label %197, label %217, !prof !246

197:                                              ; preds = %190
  %198 = load i32, ptr @align_functions, align 4, !tbaa !198
  %199 = add nsw i32 %198, -1
  %200 = icmp eq i32 %199, 0
  %201 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  br i1 %200, label %202, label %204, !prof !247

202:                                              ; preds = %197
  %203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.58, i32 noundef %194)
  br label %217

204:                                              ; preds = %197
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.59, i32 noundef %194, i32 noundef %199)
  %206 = load i32, ptr @align_functions_log, align 4, !tbaa !198
  %207 = icmp sgt i32 %206, 3
  br i1 %207, label %208, label %217, !prof !246

208:                                              ; preds = %204
  %209 = shl nuw i32 1, %206
  %210 = load i32, ptr @align_functions, align 4, !tbaa !198
  %211 = icmp sgt i32 %209, %210
  %212 = icmp sgt i32 %210, 7
  %213 = and i1 %211, %212
  br i1 %213, label %214, label %217, !prof !247

214:                                              ; preds = %208
  %215 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %216 = call i64 @fwrite(ptr nonnull @.str.60, i64 12, i64 1, ptr %215)
  br label %217

217:                                              ; preds = %204, %208, %214, %202, %190, %183
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 1024
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %226, !prof !246

222:                                              ; preds = %217
  %223 = load ptr, ptr @debug_hooks, align 8, !tbaa !183
  %224 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %223, i64 0, i32 14
  %225 = load ptr, ptr %224, align 8, !tbaa !321
  call void %225(ptr noundef nonnull %0) #34, !prof !323
  br label %226

226:                                              ; preds = %222, %217
  %227 = load i64, ptr %0, align 8
  %228 = and i64 %227, 134217728
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %238, label %230, !prof !247

230:                                              ; preds = %226
  call void @notice_global_symbol(ptr noundef nonnull %0)
  call fastcc void @globalize_decl(ptr noundef nonnull %0)
  %231 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %232 = load i32, ptr %231, align 8
  %233 = lshr i32 %232, 10
  %234 = and i32 %233, 3
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236, !prof !246

236:                                              ; preds = %230
  %237 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  call void %237(ptr noundef nonnull %0, i32 noundef %234) #34
  br label %238

238:                                              ; preds = %236, %230, %226
  %239 = load i64, ptr %218, align 8
  %240 = and i64 %239, 8192
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %244, label %242, !prof !246

242:                                              ; preds = %238
  %243 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 33), align 8, !tbaa !325
  call void %243(ptr noundef %1) #34
  br label %244

244:                                              ; preds = %242, %238
  %245 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %246 = call i64 @fwrite(ptr nonnull @.str.61, i64 7, i64 1, ptr %245)
  %247 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #34
  %248 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %249 = icmp eq ptr %248, @default_strip_name_encoding
  br i1 %249, label %250, label %255, !prof !326

250:                                              ; preds = %244
  %251 = load i8, ptr %1, align 1, !tbaa !194
  %252 = icmp eq i8 %251, 42
  %253 = zext i1 %252 to i64
  %254 = getelementptr inbounds i8, ptr %1, i64 %253
  br label %257

255:                                              ; preds = %244
  %256 = call ptr %248(ptr noundef %1) #34
  br label %257

257:                                              ; preds = %255, %250
  %258 = phi ptr [ %256, %255 ], [ %254, %250 ]
  %259 = call ptr @maybe_get_identifier(ptr noundef %258) #34
  store ptr %259, ptr %4, align 8, !tbaa !183
  %260 = icmp eq ptr %259, null
  br i1 %260, label %276, label %261, !prof !327

261:                                              ; preds = %257
  %262 = load i64, ptr %259, align 8
  %263 = or i64 %262, 67108864
  store i64 %263, ptr %259, align 8
  %264 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %4)
  %265 = load ptr, ptr %4, align 8, !tbaa !183
  %266 = icmp eq ptr %265, %259
  br i1 %266, label %270, label %267, !prof !328

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.tree_identifier, ptr %265, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !194
  br label %270

270:                                              ; preds = %267, %261
  %271 = phi ptr [ %269, %267 ], [ %1, %261 ]
  %272 = getelementptr inbounds %struct.tree_common, ptr %265, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !194
  %274 = icmp eq ptr %273, null
  br i1 %274, label %276, label %275, !prof !328

275:                                              ; preds = %270
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %276

276:                                              ; preds = %275, %270, %257
  %277 = phi ptr [ %1, %257 ], [ %271, %270 ], [ %271, %275 ]
  %278 = load i8, ptr %277, align 1, !tbaa !194
  %279 = icmp eq i8 %278, 42
  br i1 %279, label %280, label %283, !prof !327

280:                                              ; preds = %276
  %281 = getelementptr inbounds i8, ptr %277, i64 1
  %282 = call i32 @fputs(ptr noundef nonnull %281, ptr noundef %247)
  br label %284

283:                                              ; preds = %276
  call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %247, ptr noundef nonnull @.str.78, ptr noundef nonnull %277) #34
  br label %284

284:                                              ; preds = %280, %283
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #34
  %285 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %286 = call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %285)
  %287 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64)
  %289 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %290 = call i32 @putc(i32 noundef 10, ptr noundef %289)
  %291 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  %292 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %293 = icmp eq ptr %292, @default_strip_name_encoding
  br i1 %293, label %294, label %299, !prof !326

294:                                              ; preds = %284
  %295 = load i8, ptr %1, align 1, !tbaa !194
  %296 = icmp eq i8 %295, 42
  %297 = zext i1 %296 to i64
  %298 = getelementptr inbounds i8, ptr %1, i64 %297
  br label %301

299:                                              ; preds = %284
  %300 = call ptr %292(ptr noundef %1) #34
  br label %301

301:                                              ; preds = %299, %294
  %302 = phi ptr [ %300, %299 ], [ %298, %294 ]
  %303 = call ptr @maybe_get_identifier(ptr noundef %302) #34
  store ptr %303, ptr %3, align 8, !tbaa !183
  %304 = icmp eq ptr %303, null
  br i1 %304, label %320, label %305, !prof !327

305:                                              ; preds = %301
  %306 = load i64, ptr %303, align 8
  %307 = or i64 %306, 67108864
  store i64 %307, ptr %303, align 8
  %308 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %309 = load ptr, ptr %3, align 8, !tbaa !183
  %310 = icmp eq ptr %309, %303
  br i1 %310, label %314, label %311, !prof !328

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.tree_identifier, ptr %309, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !194
  br label %314

314:                                              ; preds = %311, %305
  %315 = phi ptr [ %313, %311 ], [ %1, %305 ]
  %316 = getelementptr inbounds %struct.tree_common, ptr %309, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !194
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319, !prof !328

319:                                              ; preds = %314
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %320

320:                                              ; preds = %319, %314, %301
  %321 = phi ptr [ %1, %301 ], [ %315, %314 ], [ %315, %319 ]
  %322 = load i8, ptr %321, align 1, !tbaa !194
  %323 = icmp eq i8 %322, 42
  br i1 %323, label %324, label %327, !prof !327

324:                                              ; preds = %320
  %325 = getelementptr inbounds i8, ptr %321, i64 1
  %326 = call i32 @fputs(ptr noundef nonnull %325, ptr noundef %291)
  br label %328

327:                                              ; preds = %320
  call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %291, ptr noundef nonnull @.str.78, ptr noundef nonnull %321) #34
  br label %328

328:                                              ; preds = %324, %327
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  %329 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %330 = call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %329)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #34
  ret void
}

declare void @app_disable() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @assemble_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 !prof !329 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %5 = icmp eq ptr %4, @default_strip_name_encoding
  br i1 %5, label %6, label %11, !prof !326

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !194
  %8 = icmp eq i8 %7, 42
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr %4(ptr noundef %1) #34
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %10, %6 ]
  %15 = tail call ptr @maybe_get_identifier(ptr noundef %14) #34
  store ptr %15, ptr %3, align 8, !tbaa !183
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17, !prof !327

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = or i64 %18, 67108864
  store i64 %19, ptr %15, align 8
  %20 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %21 = load ptr, ptr %3, align 8, !tbaa !183
  %22 = icmp eq ptr %21, %15
  br i1 %22, label %26, label %23, !prof !328

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ %1, %17 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !328

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %32

32:                                               ; preds = %31, %26, %13
  %33 = phi ptr [ %1, %13 ], [ %27, %26 ], [ %27, %31 ]
  %34 = load i8, ptr %33, align 1, !tbaa !194
  %35 = icmp eq i8 %34, 42
  br i1 %35, label %36, label %39, !prof !327

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  %38 = tail call i32 @fputs(ptr noundef nonnull %37, ptr noundef %0)
  br label %40

39:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %33) #34
  br label %40

40:                                               ; preds = %36, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @globalize_decl(ptr noundef %0) unnamed_addr #12 !prof !330 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %57, label %6, !prof !332

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  tail call void @make_decl_rtl(ptr noundef %0)
  %11 = load ptr, ptr %7, align 8, !tbaa !194
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %19 = tail call i64 @fwrite(ptr nonnull @.str.176, i64 7, i64 1, ptr %18)
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %20, ptr noundef %17)
  %21 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %22 = tail call i32 @fputc(i32 noundef 10, ptr noundef %21)
  %23 = load ptr, ptr @weak_decls, align 8, !tbaa !183
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %39, %12
  %26 = load ptr, ptr @weakref_targets, align 8, !tbaa !183
  %27 = icmp eq ptr %26, null
  br i1 %27, label %60, label %43

28:                                               ; preds = %12, %39
  %29 = phi ptr [ %41, %39 ], [ %23, %12 ]
  %30 = phi ptr [ %40, %39 ], [ @weak_decls, %12 ]
  %31 = tail call ptr @decl_assembler_name(ptr noundef %0) #34
  %32 = getelementptr inbounds %struct.tree_list, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  %34 = tail call ptr @decl_assembler_name(ptr noundef %33) #34
  %35 = icmp eq ptr %31, %34
  %36 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  br i1 %35, label %37, label %39

37:                                               ; preds = %28
  %38 = load ptr, ptr %36, align 8, !tbaa !194
  store ptr %38, ptr %30, align 8, !tbaa !183
  br label %39

39:                                               ; preds = %28, %37
  %40 = phi ptr [ %30, %37 ], [ %36, %28 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !183
  %42 = icmp eq ptr %41, null
  br i1 %42, label %25, label %28, !llvm.loop !333

43:                                               ; preds = %25, %53
  %44 = phi ptr [ %55, %53 ], [ %26, %25 ]
  %45 = phi ptr [ %54, %53 ], [ @weakref_targets, %25 ]
  %46 = tail call ptr @decl_assembler_name(ptr noundef %0) #34
  %47 = getelementptr inbounds %struct.tree_list, ptr %44, i64 0, i32 2
  %48 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %47)
  %49 = icmp eq ptr %46, %48
  %50 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 1
  br i1 %49, label %51, label %53

51:                                               ; preds = %43
  %52 = load ptr, ptr %50, align 8, !tbaa !194
  store ptr %52, ptr %45, align 8, !tbaa !183
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi ptr [ %45, %51 ], [ %50, %43 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !183
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %43, !llvm.loop !334

57:                                               ; preds = %1
  %58 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 7), align 8, !tbaa !335
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void %58(ptr noundef %59, ptr noundef %0) #34, !prof !336
  br label %60

60:                                               ; preds = %53, %25, %57
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @maybe_assemble_visibility(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 10
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  tail call void %8(ptr noundef %0, i32 noundef %5) #34
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @assemble_end_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !297 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !198
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !246

7:                                                ; preds = %2
  %8 = tail call ptr @function_section(ptr noundef %0)
  tail call void @switch_to_section(ptr noundef %8)
  br label %9

9:                                                ; preds = %2, %7
  %10 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !198
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %95, !prof !246

12:                                               ; preds = %9
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %14 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 7, i64 1, ptr %13)
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #34
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %17 = icmp eq ptr %16, @default_strip_name_encoding
  br i1 %17, label %18, label %23, !prof !326

18:                                               ; preds = %12
  %19 = load i8, ptr %1, align 1, !tbaa !194
  %20 = icmp eq i8 %19, 42
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  br label %25

23:                                               ; preds = %12
  %24 = tail call ptr %16(ptr noundef %1) #34
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %22, %18 ]
  %27 = tail call ptr @maybe_get_identifier(ptr noundef %26) #34
  store ptr %27, ptr %4, align 8, !tbaa !183
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29, !prof !327

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = or i64 %30, 67108864
  store i64 %31, ptr %27, align 8
  %32 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %4)
  %33 = load ptr, ptr %4, align 8, !tbaa !183
  %34 = icmp eq ptr %33, %27
  br i1 %34, label %38, label %35, !prof !328

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_identifier, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %37, %35 ], [ %1, %29 ]
  %40 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !328

43:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %44

44:                                               ; preds = %43, %38, %25
  %45 = phi ptr [ %1, %25 ], [ %39, %38 ], [ %39, %43 ]
  %46 = load i8, ptr %45, align 1, !tbaa !194
  %47 = icmp eq i8 %46, 42
  br i1 %47, label %48, label %51, !prof !327

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = tail call i32 @fputs(ptr noundef nonnull %49, ptr noundef %15)
  br label %52

51:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %15, ptr noundef nonnull @.str.78, ptr noundef nonnull %45) #34
  br label %52

52:                                               ; preds = %48, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #34
  %53 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %54 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 4, i64 1, ptr %53)
  %55 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  %56 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %57 = icmp eq ptr %56, @default_strip_name_encoding
  br i1 %57, label %58, label %63, !prof !326

58:                                               ; preds = %52
  %59 = load i8, ptr %1, align 1, !tbaa !194
  %60 = icmp eq i8 %59, 42
  %61 = zext i1 %60 to i64
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  br label %65

63:                                               ; preds = %52
  %64 = tail call ptr %56(ptr noundef %1) #34
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %62, %58 ]
  %67 = tail call ptr @maybe_get_identifier(ptr noundef %66) #34
  store ptr %67, ptr %3, align 8, !tbaa !183
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !327

69:                                               ; preds = %65
  %70 = load i64, ptr %67, align 8
  %71 = or i64 %70, 67108864
  store i64 %71, ptr %67, align 8
  %72 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %73 = load ptr, ptr %3, align 8, !tbaa !183
  %74 = icmp eq ptr %73, %67
  br i1 %74, label %78, label %75, !prof !328

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.tree_identifier, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !194
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi ptr [ %77, %75 ], [ %1, %69 ]
  %80 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !194
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !328

83:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %84

84:                                               ; preds = %83, %78, %65
  %85 = phi ptr [ %1, %65 ], [ %79, %78 ], [ %79, %83 ]
  %86 = load i8, ptr %85, align 1, !tbaa !194
  %87 = icmp eq i8 %86, 42
  br i1 %87, label %88, label %91, !prof !327

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %85, i64 1
  %90 = tail call i32 @fputs(ptr noundef nonnull %89, ptr noundef %55)
  br label %92

91:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %55, ptr noundef nonnull @.str.78, ptr noundef nonnull %85) #34
  br label %92

92:                                               ; preds = %88, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  %93 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %94 = tail call i32 @putc(i32 noundef 10, ptr noundef %93)
  br label %95

95:                                               ; preds = %9, %92
  %96 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !198
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98, !prof !246

98:                                               ; preds = %95
  %99 = load ptr, ptr @in_section, align 8, !tbaa !183
  %100 = tail call ptr @unlikely_text_section()
  tail call void @switch_to_section(ptr noundef %100)
  %101 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %102 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8, !tbaa !301
  tail call void @assemble_name(ptr noundef %101, ptr noundef %102)
  %103 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %104 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %103)
  %105 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !194
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  %108 = load ptr, ptr @text_section, align 8, !tbaa !183
  br label %111

109:                                              ; preds = %98
  %110 = tail call ptr @function_section(ptr noundef %0)
  br label %111

111:                                              ; preds = %107, %109
  %112 = phi ptr [ %108, %107 ], [ %110, %109 ]
  tail call void @switch_to_section(ptr noundef %112)
  %113 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %114 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !300
  tail call void @assemble_name(ptr noundef %113, ptr noundef %114)
  %115 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %116 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %115)
  tail call void @switch_to_section(ptr noundef %99)
  br label %117

117:                                              ; preds = %111, %95
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_zeros(i64 noundef %0) local_unnamed_addr #9 !prof !337 {
  %2 = load i32, ptr @flag_syntax_only, align 4, !tbaa !198
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25, !prof !295

4:                                                ; preds = %1
  %5 = load ptr, ptr @in_section, align 8, !tbaa !183
  %6 = load i32, ptr %5, align 8, !tbaa !194
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i64 %0, 0
  br i1 %8, label %21, label %10, !prof !295

10:                                               ; preds = %4
  br i1 %9, label %25, label %11

11:                                               ; preds = %10, %18
  %12 = phi i64 [ %19, %18 ], [ 0, %10 ]
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !183
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %15 = tail call zeroext i8 %14(ptr noundef %13, i32 noundef 1, i32 noundef 1) #34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw i64 %12, 1
  %20 = icmp eq i64 %19, %0
  br i1 %20, label %25, label %11, !llvm.loop !338

21:                                               ; preds = %4
  br i1 %9, label %25, label %22, !prof !293

22:                                               ; preds = %21
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %0)
  br label %25

25:                                               ; preds = %18, %10, %21, %22, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @assemble_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #18 !prof !339 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %115, !prof !340

4:                                                ; preds = %2, %112
  %5 = phi ptr [ %10, %112 ], [ %0, %2 ]
  %6 = phi i32 [ %113, %112 ], [ 0, %2 ]
  %7 = sub nsw i32 %1, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 2000)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = icmp sgt i32 %7, 0
  br i1 %11, label %12, label %106, !prof !340

12:                                               ; preds = %4, %101
  %13 = phi ptr [ %104, %101 ], [ %5, %4 ]
  %14 = phi i32 [ %102, %101 ], [ 0, %4 ]
  %15 = phi ptr [ %33, %101 ], [ null, %4 ]
  %16 = icmp ugt i32 %14, 59
  br i1 %16, label %17, label %20, !prof !341

17:                                               ; preds = %12
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %19 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %17 ], [ %14, %12 ]
  %22 = icmp ugt ptr %13, %15
  br i1 %22, label %23, label %32, !prof !342

23:                                               ; preds = %20
  %24 = icmp ult ptr %13, %10
  br i1 %24, label %25, label %32, !prof !295

25:                                               ; preds = %23, %29
  %26 = phi ptr [ %30, %29 ], [ %13, %23 ]
  %27 = load i8, ptr %26, align 1, !tbaa !194
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29, !prof !343

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = icmp ult ptr %30, %10
  br i1 %31, label %25, label %32, !prof !344, !llvm.loop !345

32:                                               ; preds = %25, %29, %23, %20
  %33 = phi ptr [ %15, %20 ], [ %13, %23 ], [ %30, %29 ], [ %26, %25 ]
  %34 = icmp ult ptr %33, %10
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %13 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 257
  %39 = and i1 %34, %38
  %40 = icmp eq i32 %21, 0
  br i1 %39, label %41, label %76, !prof !342

41:                                               ; preds = %32
  br i1 %40, label %45, label %42, !prof !342

42:                                               ; preds = %41
  %43 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %44 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %41, %42
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71)
  %48 = load i8, ptr %13, align 1, !tbaa !194
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50, !prof !346

50:                                               ; preds = %45, %69
  %51 = phi i8 [ %71, %69 ], [ %48, %45 ]
  %52 = phi ptr [ %70, %69 ], [ %13, %45 ]
  %53 = zext i8 %51 to i32
  %54 = zext i8 %51 to i64
  %55 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !194
  switch i8 %56, label %63 [
    i8 0, label %57
    i8 1, label %60
  ], !prof !347

57:                                               ; preds = %50
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %59 = tail call i32 @putc(i32 noundef %53, ptr noundef %58)
  br label %69

60:                                               ; preds = %50
  %61 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.73, i32 noundef %53)
  br label %69

63:                                               ; preds = %50
  %64 = sext i8 %56 to i32
  %65 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %66 = tail call i32 @putc(i32 noundef 92, ptr noundef %65)
  %67 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %68 = tail call i32 @putc(i32 noundef %64, ptr noundef %67)
  br label %69

69:                                               ; preds = %63, %60, %57
  %70 = getelementptr inbounds i8, ptr %52, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !194
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %50, !prof !348, !llvm.loop !349

73:                                               ; preds = %69, %45
  %74 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %75 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %74)
  br label %101

76:                                               ; preds = %32
  br i1 %40, label %77, label %80

77:                                               ; preds = %76
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74)
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i8, ptr %13, align 1, !tbaa !194
  %82 = zext i8 %81 to i32
  %83 = zext i8 %81 to i64
  %84 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !194
  switch i8 %85, label %94 [
    i8 0, label %86
    i8 1, label %90
  ]

86:                                               ; preds = %80
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %88 = tail call i32 @putc(i32 noundef %82, ptr noundef %87)
  %89 = add nuw nsw i32 %21, 1
  br label %101

90:                                               ; preds = %80
  %91 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.73, i32 noundef %82)
  %93 = add nuw nsw i32 %21, 4
  br label %101

94:                                               ; preds = %80
  %95 = sext i8 %85 to i32
  %96 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %97 = tail call i32 @putc(i32 noundef 92, ptr noundef %96)
  %98 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %99 = tail call i32 @putc(i32 noundef %95, ptr noundef %98)
  %100 = add nuw nsw i32 %21, 2
  br label %101

101:                                              ; preds = %86, %90, %94, %73
  %102 = phi i32 [ 0, %73 ], [ %100, %94 ], [ %93, %90 ], [ %89, %86 ]
  %103 = phi ptr [ %33, %73 ], [ %13, %94 ], [ %13, %90 ], [ %13, %86 ]
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = icmp ult ptr %104, %10
  br i1 %105, label %12, label %106, !prof !346, !llvm.loop !350

106:                                              ; preds = %101, %4
  %107 = phi i32 [ 0, %4 ], [ %102, %101 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109, !prof !342

109:                                              ; preds = %106
  %110 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %111 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = add nsw i32 %8, %6
  %114 = icmp slt i32 %113, %1
  br i1 %114, label %4, label %115, !prof !346, !llvm.loop !351

115:                                              ; preds = %112, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_emutls_var_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef 4, i64 noundef 8, i64 noundef 16) #34
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = load i32, ptr %4, align 8, !tbaa !352
  %10 = add i32 %9, 1
  store i32 %10, ptr %4, align 8, !tbaa !352
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %11
  store ptr %8, ptr %12, align 8, !tbaa !354
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %14, ptr noundef %16) #34
  %18 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %11, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !356
  %19 = load i32, ptr %4, align 8, !tbaa !352
  %20 = add i32 %19, 1
  store i32 %20, ptr %4, align 8, !tbaa !352
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %21
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  store ptr %24, ptr %22, align 8, !tbaa !354
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !194
  %29 = lshr i32 %28, 3
  %30 = zext nneg i32 %29 to i64
  %31 = tail call ptr @build_int_cst(ptr noundef %26, i64 noundef %30) #34
  %32 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %21, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !356
  %33 = load i32, ptr %4, align 8, !tbaa !352
  %34 = add i32 %33, 1
  store i32 %34, ptr %4, align 8, !tbaa !352
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %35
  %37 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !194
  store ptr %38, ptr %36, align 8, !tbaa !354
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %40 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %35, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !356
  %41 = add i32 %33, 2
  store i32 %41, ptr %4, align 8, !tbaa !352
  %42 = zext i32 %34 to i64
  %43 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %42
  %44 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  store ptr %45, ptr %43, align 8, !tbaa !354
  %46 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %4, i64 0, i32 2, i64 %42, i32 1
  store ptr %2, ptr %46, align 8, !tbaa !356
  %47 = tail call ptr @build_constructor(ptr noundef %6, ptr noundef nonnull %4) #34
  ret ptr %47
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @assemble_variable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !330 {
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !210
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %129, !prof !357

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 32
  br i1 %10, label %11, label %129

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 49152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %129, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @emutls_decl(ptr noundef nonnull %0)
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %129

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr @global_trees, align 16
  %32 = icmp eq ptr %29, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %129, label %34

34:                                               ; preds = %27, %22
  %35 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 7), align 8, !tbaa !358
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8, !tbaa !230
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !194
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %125

48:                                               ; preds = %42, %38, %34
  %49 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #34
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 5), align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i8, ptr %50, align 1, !tbaa !194
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %48
  %56 = phi ptr [ %50, %52 ], [ @.str.168, %48 ]
  %57 = tail call fastcc ptr @prefix_name(ptr noundef nonnull %56, ptr noundef %49)
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi ptr [ %57, %55 ], [ %49, %52 ]
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !194
  %62 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !194
  %64 = tail call ptr @build_decl_stat(i32 noundef %61, i32 noundef 32, ptr noundef %59, ptr noundef %63) #34
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %64, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !194
  %68 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %64, i64 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, -57345
  %71 = or disjoint i32 %70, 8192
  store i32 %71, ptr %68, align 8
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = or i64 %73, 4096
  store i64 %74, ptr %72, align 8
  %75 = load i64, ptr %0, align 8
  %76 = and i64 %75, 16777216
  %77 = load i64, ptr %64, align 8
  %78 = and i64 %77, -17825793
  %79 = or disjoint i64 %78, %76
  %80 = or disjoint i64 %79, 1048576
  store i64 %80, ptr %64, align 8
  %81 = or i64 %73, 5120
  store i64 %81, ptr %72, align 8
  %82 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !194
  %84 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 4
  store ptr %83, ptr %84, align 8, !tbaa !194
  %85 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !194
  %87 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %64, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !194
  %88 = load i32, ptr %12, align 8
  %89 = and i32 %88, 128
  %90 = and i32 %71, -49281
  %91 = or disjoint i32 %89, %90
  store i32 %91, ptr %68, align 8
  %92 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !194
  %94 = icmp eq ptr %93, null
  br i1 %94, label %118, label %95

95:                                               ; preds = %58
  %96 = tail call ptr @decl_assembler_name(ptr noundef nonnull %64) #34
  %97 = load i64, ptr %64, align 8
  %98 = trunc i64 %97 to i16
  switch i16 %98, label %99 [
    i16 32, label %100
    i16 29, label %100
  ]

99:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5882, ptr noundef nonnull @.str.5) #34
  br label %100

100:                                              ; preds = %95, %99, %95
  %101 = load i64, ptr %64, align 8
  %102 = or i64 %101, 134217728
  store i64 %102, ptr %64, align 8
  %103 = load i32, ptr %68, align 8
  %104 = or i32 %103, 128
  store i32 %104, ptr %68, align 8
  %105 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %64, i64 0, i32 3
  store ptr %96, ptr %105, align 8, !tbaa !194
  %106 = load i64, ptr %0, align 8
  %107 = and i64 %106, 67108864
  %108 = and i64 %102, -67108865
  %109 = or disjoint i64 %107, %108
  store i64 %109, ptr %64, align 8
  %110 = load i64, ptr %0, align 8
  %111 = and i64 %110, 134217728
  %112 = and i64 %109, -134217729
  %113 = or disjoint i64 %112, %111
  store i64 %113, ptr %64, align 8
  %114 = load i32, ptr %12, align 8
  %115 = and i32 %114, 3072
  %116 = and i32 %104, -3073
  %117 = or disjoint i32 %115, %116
  store i32 %117, ptr %68, align 8
  br label %120

118:                                              ; preds = %58
  %119 = or i64 %79, 68157440
  store i64 %119, ptr %64, align 8
  br label %120

120:                                              ; preds = %118, %100
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !194
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 5
  store ptr %122, ptr %123, align 8, !tbaa !194
  store ptr null, ptr %121, align 8, !tbaa !194
  tail call void @varpool_finalize_decl(ptr noundef nonnull %64) #34
  %124 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %64) #34
  br label %125

125:                                              ; preds = %46, %120
  %126 = phi ptr [ %124, %120 ], [ %47, %46 ]
  %127 = tail call ptr %35(ptr noundef %17, ptr noundef nonnull %0, ptr noundef %126) #34
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 5
  store ptr %127, ptr %128, align 8, !tbaa !194
  tail call void @record_references_in_initializer(ptr noundef %17, i8 noundef zeroext 0) #34
  br label %129

129:                                              ; preds = %16, %27, %125, %11, %7, %4
  %130 = phi ptr [ %0, %4 ], [ %0, %11 ], [ %0, %7 ], [ %17, %125 ], [ %17, %27 ], [ %17, %16 ]
  store ptr null, ptr @last_assemble_variable_decl, align 8, !tbaa !183
  %131 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 2
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 33554432
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %296, !prof !332

135:                                              ; preds = %129
  %136 = load i64, ptr %130, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 29
  br i1 %138, label %296, label %139, !prof !357

139:                                              ; preds = %135
  %140 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %137, i64 11
  %141 = load i8, ptr %140, align 1, !tbaa !194
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %153, label %143, !prof !357

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %130, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !194
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147, !prof !359

147:                                              ; preds = %143
  %148 = load i32, ptr %145, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 37
  br i1 %150, label %151, label %153, !prof !247

151:                                              ; preds = %147
  %152 = or i64 %136, 4194304
  store i64 %152, ptr %130, align 8
  br label %296

153:                                              ; preds = %147, %143, %139
  %154 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !194
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158, !prof !357

157:                                              ; preds = %153
  tail call void @layout_decl(ptr noundef %130, i32 noundef 0) #34
  br label %158

158:                                              ; preds = %157, %153
  %159 = icmp eq i32 %3, 0
  br i1 %159, label %160, label %166, !prof !332

160:                                              ; preds = %158
  %161 = load ptr, ptr %154, align 8, !tbaa !194
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166, !prof !357

163:                                              ; preds = %160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.75, ptr noundef %130) #34
  %164 = load i64, ptr %130, align 8
  %165 = or i64 %164, 4194304
  store i64 %165, ptr %130, align 8
  br label %296

166:                                              ; preds = %160, %158
  %167 = load i64, ptr %130, align 8
  %168 = and i64 %167, 4194304
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %296, !prof !332

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %130, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !194
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176, !prof !359

174:                                              ; preds = %170
  tail call void @make_decl_rtl(ptr noundef %130)
  %175 = load ptr, ptr %171, align 8, !tbaa !194
  br label %176

176:                                              ; preds = %170, %174
  %177 = phi ptr [ %175, %174 ], [ %172, %170 ]
  %178 = load i64, ptr %130, align 8
  %179 = or i64 %178, 4194304
  store i64 %179, ptr %130, align 8
  %180 = load i32, ptr @flag_syntax_only, align 4, !tbaa !198
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %296, !prof !332

182:                                              ; preds = %176
  tail call void @app_disable() #34
  br i1 %159, label %183, label %189, !prof !332

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !194
  %186 = tail call i32 @host_integerp(ptr noundef %185, i32 noundef 1) #34
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189, !prof !357

188:                                              ; preds = %183
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.76, ptr noundef %130) #34
  br label %296

189:                                              ; preds = %183, %182
  %190 = load i32, ptr %177, align 8
  %191 = and i32 %190, 65535
  %192 = icmp eq i32 %191, 43
  br i1 %192, label %194, label %193, !prof !332

193:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2212, ptr noundef nonnull @.str.5) #34
  br label %194

194:                                              ; preds = %189, %193
  %195 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !194
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 45
  br i1 %199, label %201, label %200, !prof !332

200:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2213, ptr noundef nonnull @.str.5) #34
  br label %201

201:                                              ; preds = %194, %200
  %202 = load ptr, ptr %195, align 8, !tbaa !194
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !194
  %205 = load i64, ptr %130, align 8
  %206 = and i64 %205, 134217728
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %213, label %208, !prof !360

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.tree_decl_minimal, ptr %130, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !194
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212, !prof !293

212:                                              ; preds = %208
  tail call void @notice_global_symbol(ptr noundef nonnull %130)
  br label %213

213:                                              ; preds = %212, %208, %201
  %214 = trunc i32 %3 to i8
  tail call void @align_variable(ptr noundef nonnull %130, i8 noundef zeroext %214)
  %215 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 3
  %216 = load i32, ptr %215, align 8, !tbaa !194
  tail call void @set_mem_align(ptr noundef nonnull %177, i32 noundef %216) #34
  %217 = load i64, ptr %130, align 8
  %218 = and i64 %217, 134217728
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %228, label %220, !prof !360

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %130, i64 0, i32 4
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 10
  %224 = and i32 %223, 3
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226, !prof !295

226:                                              ; preds = %220
  %227 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  tail call void %227(ptr noundef nonnull %130, i32 noundef %224) #34
  br label %228

228:                                              ; preds = %226, %220, %213
  %229 = load i64, ptr %131, align 8
  %230 = and i64 %229, 8192
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %234, label %232, !prof !332

232:                                              ; preds = %228
  %233 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 33), align 8, !tbaa !325
  tail call void %233(ptr noundef %204) #34
  br label %234

234:                                              ; preds = %232, %228
  %235 = tail call fastcc ptr @get_variable_section(ptr noundef nonnull %130, i8 noundef zeroext 0)
  %236 = load i64, ptr %130, align 8
  %237 = and i64 %236, 134217728
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %244, label %239, !prof !360

239:                                              ; preds = %234
  %240 = load i32, ptr %235, align 8, !tbaa !194
  %241 = and i32 %240, 8388608
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244, !prof !295

243:                                              ; preds = %239
  tail call fastcc void @globalize_decl(ptr noundef nonnull %130)
  br label %244

244:                                              ; preds = %243, %239, %234
  %245 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !194
  %247 = icmp eq ptr %246, null
  %248 = load ptr, ptr @global_trees, align 16
  %249 = icmp eq ptr %246, %248
  %250 = select i1 %247, i1 true, i1 %249, !prof !357
  br i1 %250, label %252, label %251, !prof !357

251:                                              ; preds = %244
  tail call fastcc void @output_addressed_constants(ptr noundef nonnull %246)
  br label %252

252:                                              ; preds = %251, %244
  %253 = icmp eq ptr %235, null
  br i1 %253, label %262, label %254, !prof !357

254:                                              ; preds = %252
  %255 = load i32, ptr %235, align 8, !tbaa !194
  %256 = and i32 %255, 256
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258, !prof !332

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %130, i64 0, i32 4
  %260 = load i32, ptr %259, align 8
  %261 = or i32 %260, 16
  store i32 %261, ptr %259, align 8
  br label %262

262:                                              ; preds = %258, %254, %252
  %263 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load i32, ptr %263, align 8, !tbaa !194
  %265 = and i32 %264, 128
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %274, label %267, !prof !332

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !194
  %270 = icmp eq ptr %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  br i1 %159, label %273, label %272

272:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2249, ptr noundef nonnull @.str.5) #34
  br label %273

273:                                              ; preds = %271, %272
  tail call void @place_block_symbol(ptr noundef %202)
  br label %296

274:                                              ; preds = %267, %262
  %275 = load i32, ptr %235, align 8, !tbaa !194
  %276 = and i32 %275, 6291456
  %277 = icmp eq i32 %276, 4194304
  br i1 %277, label %278, label %279, !prof !357

278:                                              ; preds = %274
  tail call fastcc void @assemble_noswitch_variable(ptr noundef nonnull %130, ptr noundef %204, ptr noundef nonnull %235)
  br label %296

279:                                              ; preds = %274
  tail call void @switch_to_section(ptr noundef nonnull %235)
  %280 = load i32, ptr %215, align 8, !tbaa !194
  %281 = icmp ugt i32 %280, 8
  br i1 %281, label %282, label %295, !prof !359

282:                                              ; preds = %279
  %283 = lshr i32 %280, 3
  %284 = zext nneg i32 %283 to i64
  %285 = tail call i32 @floor_log2(i64 noundef %284) #34
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %295, label %287, !prof !293

287:                                              ; preds = %282
  %288 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %289 = load i32, ptr %215, align 8, !tbaa !194
  %290 = lshr i32 %289, 3
  %291 = zext nneg i32 %290 to i64
  %292 = tail call i32 @floor_log2(i64 noundef %291) #34
  %293 = shl nuw i32 1, %292
  %294 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef nonnull @.str.57, i32 noundef %293)
  br label %295

295:                                              ; preds = %282, %287, %279
  tail call fastcc void @assemble_variable_contents(ptr noundef nonnull %130, ptr noundef %204, i8 noundef zeroext %214)
  br label %296

296:                                              ; preds = %273, %295, %278, %176, %166, %135, %129, %188, %163, %151
  ret void
}

declare void @record_references_in_initializer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_variable_section(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !330 !PGOFuncName !361 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !183
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %10, label %7, !prof !357

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 72057594037927936
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ %9, %7 ], [ true, %2 ]
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16, !prof !332

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !194
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i1 %11, i1 false
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1183, ptr noundef nonnull @.str.5) #34
  br label %22

22:                                               ; preds = %16, %21
  %23 = load i32, ptr %12, align 8
  %24 = lshr i32 %23, 13
  %25 = and i32 %24, 7
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr @tls_comm_section, align 8, !tbaa !183
  br label %122

29:                                               ; preds = %22
  %30 = icmp ne i32 %25, 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i64, ptr %0, align 8
  %36 = and i64 %35, 134217728
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @bss_initializer_p(ptr noundef nonnull %0), !range !277
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @comm_section, align 8, !tbaa !183
  br label %122

43:                                               ; preds = %34, %38, %29, %10
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  %46 = load ptr, ptr @global_trees, align 16, !tbaa !183
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53, !prof !357

48:                                               ; preds = %43
  %49 = load ptr, ptr %3, align 8, !tbaa !194
  %50 = tail call fastcc i32 @contains_pointers_p(ptr noundef %49), !range !362
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 3
  br label %57

53:                                               ; preds = %43
  %54 = icmp eq ptr %45, null
  br i1 %54, label %57, label %55, !prof !357

55:                                               ; preds = %53
  %56 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %45), !range !363
  br label %57

57:                                               ; preds = %53, %55, %48
  %58 = phi i32 [ %52, %48 ], [ %56, %55 ], [ 0, %53 ]
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !194
  %61 = icmp eq ptr %60, null
  %62 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false, !prof !332
  br i1 %64, label %65, label %74, !prof !332

65:                                               ; preds = %57
  %66 = load i32, ptr @flag_data_sections, align 4, !tbaa !198
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72, !prof !332

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !194
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !332

72:                                               ; preds = %68, %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 23), align 8, !tbaa !245
  tail call void %73(ptr noundef %0, i32 noundef %58) #34
  br label %74

74:                                               ; preds = %57, %68, %72
  %75 = load i64, ptr %0, align 8
  %76 = trunc i64 %75 to i16
  switch i16 %76, label %82 [
    i16 29, label %77
    i16 32, label %77
  ], !prof !364

77:                                               ; preds = %74, %74
  %78 = load ptr, ptr %59, align 8, !tbaa !194
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80, !prof !332

80:                                               ; preds = %77
  %81 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef %58)
  br label %122

82:                                               ; preds = %77, %74
  br i1 %11, label %83, label %116, !prof !332

83:                                               ; preds = %82
  %84 = load i32, ptr %12, align 8
  %85 = and i32 %84, 49152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %116, !prof !332

87:                                               ; preds = %83
  %88 = icmp ne i8 %1, 0
  %89 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 111), align 2
  %90 = icmp ne i8 %89, 0
  %91 = select i1 %88, i1 %90, i1 false, !prof !357
  br i1 %91, label %116, label %92, !prof !357

92:                                               ; preds = %87
  %93 = load ptr, ptr %44, align 8, !tbaa !194
  %94 = icmp eq ptr %93, null
  %95 = load ptr, ptr @global_trees, align 16
  %96 = icmp eq ptr %93, %95
  %97 = select i1 %94, i1 true, i1 %96, !prof !265
  br i1 %97, label %107, label %98, !prof !265

98:                                               ; preds = %92
  %99 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !198
  %100 = icmp ne i32 %99, 0
  %101 = and i64 %75, 1048576
  %102 = icmp eq i64 %101, 0
  %103 = and i1 %102, %100
  br i1 %103, label %104, label %116, !prof !365

104:                                              ; preds = %98
  %105 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %93) #34
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %116, label %107, !prof !332

107:                                              ; preds = %92, %104
  %108 = load i64, ptr %0, align 8
  %109 = and i64 %108, 134217728
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr @lcomm_section, align 8, !tbaa !183
  br label %122

113:                                              ; preds = %107
  %114 = load ptr, ptr @bss_noswitch_section, align 8, !tbaa !183
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %98, %113, %87, %104, %83, %82
  %117 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 21), align 8, !tbaa !366
  %118 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !194
  %120 = zext i32 %119 to i64
  %121 = tail call ptr %117(ptr noundef nonnull %0, i32 noundef %58, i64 noundef %120) #34, !prof !367
  br label %122

122:                                              ; preds = %113, %116, %111, %80, %41, %27
  %123 = phi ptr [ %28, %27 ], [ %42, %41 ], [ %81, %80 ], [ %121, %116 ], [ %112, %111 ], [ %114, %113 ]
  ret ptr %123
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_addressed_constants(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !368 !PGOFuncName !369 {
  br label %2

2:                                                ; preds = %38, %1
  %3 = phi ptr [ %0, %1 ], [ %40, %38 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %62 [
    i16 121, label %6
    i16 122, label %6
    i16 63, label %35
    i16 66, label %35
    i16 64, label %35
    i16 116, label %38
    i16 113, label %38
    i16 118, label %38
    i16 51, label %7
  ], !prof !370

6:                                                ; preds = %2, %2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  br label %41

9:                                                ; preds = %15, %6
  %10 = phi ptr [ %3, %6 ], [ %12, %15 ]
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %16 [
    i16 42, label %15
    i16 41, label %15
    i16 45, label %15
    i16 46, label %15
    i16 118, label %15
    i16 43, label %15
    i16 44, label %15
  ]

15:                                               ; preds = %9, %9, %9, %9, %9, %9, %9
  br label %9, !llvm.loop !371

16:                                               ; preds = %9
  %17 = and i64 %13, 65535
  %18 = icmp eq i64 %17, 33
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %12, ptr %21
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %12, %16 ], [ %23, %19 ]
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !198
  %30 = icmp eq i32 %29, 1
  %31 = icmp eq i64 %27, 51
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %24
  %34 = tail call ptr @output_constant_def(ptr noundef nonnull %25, i32 noundef 0)
  br label %62

35:                                               ; preds = %2, %2, %2
  %36 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  tail call fastcc void @output_addressed_constants(ptr noundef %37)
  br label %38

38:                                               ; preds = %2, %2, %2, %35
  %39 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  br label %2

41:                                               ; preds = %7, %60
  %42 = phi ptr [ %56, %60 ], [ undef, %7 ]
  %43 = phi i64 [ %61, %60 ], [ 0, %7 ]
  %44 = load ptr, ptr %8, align 8, !tbaa !194
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %44, align 8, !tbaa !352
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %41 ]
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %43, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %44, i64 0, i32 2, i64 %43, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !356
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi ptr [ %42, %48 ], [ %54, %52 ]
  br i1 %51, label %57, label %62

57:                                               ; preds = %55
  %58 = icmp eq ptr %56, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call fastcc void @output_addressed_constants(ptr noundef nonnull %56)
  br label %60

60:                                               ; preds = %57, %59
  %61 = add nuw nsw i64 %43, 1
  br label %41, !llvm.loop !372

62:                                               ; preds = %55, %24, %2, %33
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @place_block_symbol(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6856, ptr noundef nonnull @.str.5) #34
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !194
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %84, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !312
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %16, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !310
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !194
  %24 = zext i8 %23 to i64
  br label %52

25:                                               ; preds = %10
  %26 = and i32 %11, 1073741824
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  br i1 %27, label %46, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !194
  %35 = tail call i32 @ix86_constant_alignment(ptr noundef %29, i32 noundef %34) #34
  %36 = load ptr, ptr %31, align 8, !tbaa !194
  %37 = tail call i64 @int_size_in_bytes(ptr noundef %36) #34
  %38 = load i64, ptr %29, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 28
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !194
  %44 = sext i32 %43 to i64
  %45 = tail call i64 @llvm.smax.i64(i64 %37, i64 %44)
  br label %52

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !194
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !194
  %51 = tail call i64 @tree_low_cst(ptr noundef %50, i32 noundef 1) #34
  br label %52

52:                                               ; preds = %41, %30, %46, %14
  %53 = phi i32 [ %18, %14 ], [ %48, %46 ], [ %35, %30 ], [ %35, %41 ]
  %54 = phi i64 [ %24, %14 ], [ %51, %46 ], [ %37, %30 ], [ %45, %41 ]
  %55 = load ptr, ptr %2, align 8, !tbaa !194
  %56 = lshr i32 %53, 3
  %57 = add nsw i32 %56, -1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.object_block, ptr %55, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !373
  %61 = add i64 %60, %58
  %62 = xor i64 %58, -1
  %63 = and i64 %61, %62
  store i64 %63, ptr %7, align 8, !tbaa !194
  %64 = getelementptr inbounds %struct.object_block, ptr %55, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !375
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 %53)
  store i32 %66, ptr %64, align 8, !tbaa !375
  %67 = add i64 %63, %54
  store i64 %67, ptr %59, align 8, !tbaa !373
  %68 = getelementptr inbounds %struct.object_block, ptr %55, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !183
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.VEC_rtx_base, ptr %69, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !376
  %74 = load i32, ptr %69, align 8, !tbaa !378
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %52, %71
  %77 = tail call ptr @vec_gc_p_reserve(ptr noundef %69, i32 noundef 1) #34
  store ptr %77, ptr %68, align 8, !tbaa !183
  br label %78

78:                                               ; preds = %71, %76
  %79 = load ptr, ptr %68, align 8, !tbaa !183
  %80 = load i32, ptr %79, align 8, !tbaa !378
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !378
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds %struct.VEC_rtx_base, ptr %79, i64 0, i32 2, i64 %82
  store ptr %0, ptr %83, align 8, !tbaa !183
  br label %84

84:                                               ; preds = %6, %78
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @assemble_noswitch_variable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !182 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = tail call i64 @tree_low_cst(ptr noundef %5, i32 noundef 1) #34
  %7 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !198
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i64 15, i64 31
  %12 = add i64 %11, %7
  %13 = select i1 %10, i64 -16, i64 -32
  %14 = and i64 %12, %13
  %15 = getelementptr inbounds %struct.noswitch_section, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call zeroext i8 %16(ptr noundef %0, ptr noundef %1, i64 noundef %6, i64 noundef %14) #34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !194
  %22 = lshr i32 %21, 3
  %23 = zext nneg i32 %22 to i64
  %24 = icmp ult i64 %14, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.169, ptr noundef %0, i64 noundef %14) #34
  br label %27

27:                                               ; preds = %25, %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @assemble_variable_contents(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #12 !prof !330 !PGOFuncName !379 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr @last_assemble_variable_decl, align 8, !tbaa !183
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %8 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 7, i64 1, ptr %7)
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #34
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %11 = icmp eq ptr %10, @default_strip_name_encoding
  br i1 %11, label %12, label %17, !prof !326

12:                                               ; preds = %3
  %13 = load i8, ptr %1, align 1, !tbaa !194
  %14 = icmp eq i8 %13, 42
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  br label %19

17:                                               ; preds = %3
  %18 = tail call ptr %10(ptr noundef %1) #34
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %16, %12 ]
  %21 = tail call ptr @maybe_get_identifier(ptr noundef %20) #34
  store ptr %21, ptr %6, align 8, !tbaa !183
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !327

23:                                               ; preds = %19
  %24 = load i64, ptr %21, align 8
  %25 = or i64 %24, 67108864
  store i64 %25, ptr %21, align 8
  %26 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %6)
  %27 = load ptr, ptr %6, align 8, !tbaa !183
  %28 = icmp eq ptr %27, %21
  br i1 %28, label %32, label %29, !prof !328

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !194
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %31, %29 ], [ %1, %23 ]
  %34 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !194
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !328

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %38

38:                                               ; preds = %37, %32, %19
  %39 = phi ptr [ %1, %19 ], [ %33, %32 ], [ %33, %37 ]
  %40 = load i8, ptr %39, align 1, !tbaa !194
  %41 = icmp eq i8 %40, 42
  br i1 %41, label %42, label %45, !prof !327

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = tail call i32 @fputs(ptr noundef nonnull %43, ptr noundef %9)
  br label %46

45:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull %39) #34
  br label %46

46:                                               ; preds = %42, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  %47 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %48 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %47)
  %49 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.170)
  %51 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %52 = tail call i32 @putc(i32 noundef 10, ptr noundef %51)
  store i32 0, ptr @size_directive_output, align 4, !tbaa !198
  %53 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !198
  %54 = icmp eq i32 %53, 0
  %55 = icmp ne ptr %0, null
  %56 = and i1 %55, %54
  br i1 %56, label %57, label %107, !prof !332

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !194
  %60 = icmp eq ptr %59, null
  br i1 %60, label %107, label %61, !prof !357

61:                                               ; preds = %57
  store i32 1, ptr @size_directive_output, align 4, !tbaa !198
  %62 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !194
  %64 = tail call i64 @int_size_in_bytes(ptr noundef %63) #34
  %65 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %66 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 7, i64 1, ptr %65)
  %67 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #34
  %68 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %69 = icmp eq ptr %68, @default_strip_name_encoding
  br i1 %69, label %70, label %75, !prof !326

70:                                               ; preds = %61
  %71 = load i8, ptr %1, align 1, !tbaa !194
  %72 = icmp eq i8 %71, 42
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  br label %77

75:                                               ; preds = %61
  %76 = tail call ptr %68(ptr noundef %1) #34
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %74, %70 ]
  %79 = tail call ptr @maybe_get_identifier(ptr noundef %78) #34
  store ptr %79, ptr %5, align 8, !tbaa !183
  %80 = icmp eq ptr %79, null
  br i1 %80, label %96, label %81, !prof !327

81:                                               ; preds = %77
  %82 = load i64, ptr %79, align 8
  %83 = or i64 %82, 67108864
  store i64 %83, ptr %79, align 8
  %84 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %5)
  %85 = load ptr, ptr %5, align 8, !tbaa !183
  %86 = icmp eq ptr %85, %79
  br i1 %86, label %90, label %87, !prof !328

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tree_identifier, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !194
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi ptr [ %89, %87 ], [ %1, %81 ]
  %92 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !194
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !328

95:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %96

96:                                               ; preds = %95, %90, %77
  %97 = phi ptr [ %1, %77 ], [ %91, %90 ], [ %91, %95 ]
  %98 = load i8, ptr %97, align 1, !tbaa !194
  %99 = icmp eq i8 %98, 42
  br i1 %99, label %100, label %103, !prof !327

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 1
  %102 = tail call i32 @fputs(ptr noundef nonnull %101, ptr noundef %67)
  br label %104

103:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %67, ptr noundef nonnull @.str.78, ptr noundef nonnull %97) #34
  br label %104

104:                                              ; preds = %100, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #34
  %105 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.171, i64 noundef %64)
  br label %107

107:                                              ; preds = %46, %57, %104
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #34
  %109 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %110 = icmp eq ptr %109, @default_strip_name_encoding
  br i1 %110, label %111, label %116, !prof !326

111:                                              ; preds = %107
  %112 = load i8, ptr %1, align 1, !tbaa !194
  %113 = icmp eq i8 %112, 42
  %114 = zext i1 %113 to i64
  %115 = getelementptr inbounds i8, ptr %1, i64 %114
  br label %118

116:                                              ; preds = %107
  %117 = tail call ptr %109(ptr noundef %1) #34
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi ptr [ %117, %116 ], [ %115, %111 ]
  %120 = tail call ptr @maybe_get_identifier(ptr noundef %119) #34
  store ptr %120, ptr %4, align 8, !tbaa !183
  %121 = icmp eq ptr %120, null
  br i1 %121, label %137, label %122, !prof !327

122:                                              ; preds = %118
  %123 = load i64, ptr %120, align 8
  %124 = or i64 %123, 67108864
  store i64 %124, ptr %120, align 8
  %125 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %4)
  %126 = load ptr, ptr %4, align 8, !tbaa !183
  %127 = icmp eq ptr %126, %120
  br i1 %127, label %131, label %128, !prof !328

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.tree_identifier, ptr %126, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !194
  br label %131

131:                                              ; preds = %128, %122
  %132 = phi ptr [ %130, %128 ], [ %1, %122 ]
  %133 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !194
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !328

136:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %137

137:                                              ; preds = %136, %131, %118
  %138 = phi ptr [ %1, %118 ], [ %132, %131 ], [ %132, %136 ]
  %139 = load i8, ptr %138, align 1, !tbaa !194
  %140 = icmp eq i8 %139, 42
  br i1 %140, label %141, label %144, !prof !327

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  %143 = tail call i32 @fputs(ptr noundef nonnull %142, ptr noundef %108)
  br label %145

144:                                              ; preds = %137
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %108, ptr noundef nonnull @.str.78, ptr noundef nonnull %138) #34
  br label %145

145:                                              ; preds = %141, %144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #34
  %146 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %147 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %146)
  %148 = icmp eq i8 %2, 0
  br i1 %148, label %149, label %170, !prof !332

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %151 = load ptr, ptr %150, align 8, !tbaa !194
  %152 = icmp eq ptr %151, null
  %153 = load ptr, ptr @global_trees, align 16
  %154 = icmp eq ptr %151, %153
  %155 = select i1 %152, i1 true, i1 %154, !prof !357
  br i1 %155, label %166, label %156, !prof !357

156:                                              ; preds = %149
  %157 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %151) #34
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %166, !prof !360

159:                                              ; preds = %156
  %160 = load ptr, ptr %150, align 8, !tbaa !194
  %161 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !194
  %163 = tail call i64 @tree_low_cst(ptr noundef %162, i32 noundef 1) #34
  %164 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !194
  tail call void @output_constant(ptr noundef %160, i64 noundef %163, i32 noundef %165)
  br label %170

166:                                              ; preds = %156, %149
  %167 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !194
  %169 = tail call i64 @tree_low_cst(ptr noundef %168, i32 noundef 1) #34
  tail call void @assemble_zeros(i64 noundef %169)
  br label %170

170:                                              ; preds = %159, %166, %145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @process_pending_assemble_externals() local_unnamed_addr #12 !prof !337 {
  %1 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !194
  %2 = icmp eq ptr %1, null
  br i1 %2, label %65, label %3, !prof !380

3:                                                ; preds = %0, %61
  %4 = phi ptr [ %63, %61 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !381

10:                                               ; preds = %3
  tail call void @make_decl_rtl(ptr noundef %6)
  %11 = load ptr, ptr %7, align 8, !tbaa !194
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ %8, %3 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %17, label %61, !prof !382

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 536936447
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %61, !prof !382

23:                                               ; preds = %17
  %24 = load i64, ptr %6, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 29
  br i1 %26, label %27, label %41, !prof !383

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 11
  %31 = and i32 %30, 3
  switch i32 %31, label %35 [
    i32 0, label %41
    i32 3, label %32
  ], !prof !384

32:                                               ; preds = %27
  %33 = and i32 %29, 2047
  %34 = icmp eq i32 %33, 415
  br i1 %34, label %61, label %35

35:                                               ; preds = %32, %27
  %36 = tail call ptr @decl_assembler_name(ptr noundef nonnull %6) #34
  %37 = getelementptr inbounds %struct.tree_identifier, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !194
  %39 = tail call zeroext i8 @is_builtin_name(ptr noundef %38) #34
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %35, %27, %23
  %42 = load ptr, ptr %18, align 8, !tbaa !194
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 536870912
  store i32 %44, ptr %42, align 8
  %45 = tail call ptr @decl_assembler_name(ptr noundef nonnull %6) #34
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 67108864
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %61, label %49, !prof !381

49:                                               ; preds = %41
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !385
  %51 = tail call zeroext i8 %50(ptr noundef nonnull %6) #34, !prof !386
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53, !prof !382

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 10
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  tail call void %60(ptr noundef nonnull %6, i32 noundef %57) #34
  br label %61

61:                                               ; preds = %59, %53, %49, %41, %35, %32, %12, %17
  %62 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !194
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %3, !prof !387, !llvm.loop !388

65:                                               ; preds = %61, %0
  store ptr null, ptr @pending_assemble_externals, align 8, !tbaa !183
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @assemble_external(ptr noundef %0) local_unnamed_addr #17 !prof !389 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !390

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2373, ptr noundef nonnull @.str.5) #34
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !198
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %46, !prof !391

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  %16 = and i64 %6, 134217728
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %46, label %19, !prof !392

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  %24 = and i64 %6, 67108864
  %25 = icmp eq i64 %24, 0
  %26 = and i1 %25, %23
  br i1 %26, label %27, label %39, !prof !393

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  %30 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.77, ptr noundef %29) #34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @weak_decls, align 8, !tbaa !183
  %34 = tail call ptr @value_member(ptr noundef nonnull %0, ptr noundef %33) #34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @weak_decls, align 8, !tbaa !183
  %38 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %0, ptr noundef %37) #34
  store ptr %38, ptr @weak_decls, align 8, !tbaa !183
  br label %39

39:                                               ; preds = %36, %32, %27, %19
  %40 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !183
  %41 = tail call ptr @value_member(ptr noundef nonnull %0, ptr noundef %40) #34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46, !prof !394

43:                                               ; preds = %39
  %44 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !183
  %45 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %0, ptr noundef %44) #34
  store ptr %45, ptr @pending_assemble_externals, align 8, !tbaa !183
  br label %46

46:                                               ; preds = %5, %11, %43, %39
  ret void
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @value_member(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_external_libcall(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 536870912
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = or disjoint i32 %2, 536870912
  store i32 %6, ptr %0, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 32), align 8, !tbaa !395
  tail call void %7(ptr noundef nonnull %0) #34
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_label(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %2, ptr noundef %0)
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %4 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mark_referenced(ptr nocapture noundef %0) local_unnamed_addr #19 !prof !182 {
  %2 = load i64, ptr %0, align 8
  %3 = or i64 %2, 67108864
  store i64 %3, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @mark_decl_referenced(ptr noundef %0) local_unnamed_addr #17 !prof !396 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %24 [
    i16 29, label %4
    i16 32, label %19
  ], !prof !397

4:                                                ; preds = %1
  %5 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #34
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24, !prof !398

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = load i8, ptr @cgraph_global_info_ready, align 1
  %14 = icmp eq i8 %13, 0
  %15 = and i8 %12, -124
  %16 = icmp ne i8 %15, -124
  %17 = select i1 %16, i1 true, i1 %14, !prof !399
  br i1 %17, label %18, label %24, !prof !399

18:                                               ; preds = %10
  tail call void @cgraph_mark_needed_node(ptr noundef %5) #34
  br label %24

19:                                               ; preds = %1
  %20 = tail call ptr @varpool_node(ptr noundef nonnull %0) #34
  tail call void @varpool_mark_needed_node(ptr noundef %20) #34
  %21 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 2
  store i8 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %1, %4, %18, %10, %19
  ret void
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_name_raw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = load i8, ptr %1, align 1, !tbaa !194
  %4 = icmp eq i8 %3, 42
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = tail call i32 @fputs(ptr noundef nonnull %6, ptr noundef %0)
  br label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %1) #34
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

declare void @asm_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @ultimate_transparent_alias_target(ptr nocapture noundef %0) unnamed_addr #17 !prof !400 !PGOFuncName !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 1073741824
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6, !prof !328

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2471, ptr noundef nonnull @.str.5) #34
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %7)
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 1073741824
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !194
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2474, ptr noundef nonnull @.str.5) #34
  br label %21

21:                                               ; preds = %16, %20
  store ptr %12, ptr %0, align 8, !tbaa !183
  br label %22

22:                                               ; preds = %21, %1
  %23 = phi ptr [ %12, %21 ], [ %2, %1 ]
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @assemble_static_space(i64 noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #34
  %3 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.79, i32 noundef %3)
  %5 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @const_labelno, align 4, !tbaa !198
  %7 = call ptr @ggc_alloc_string(ptr noundef nonnull %2, i32 noundef -1) #34
  %8 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %7) #34
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %9, align 8, !tbaa !194
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %11 = call i64 @fwrite(ptr nonnull @.str.81, i64 8, i64 1, ptr %10)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @assemble_name(ptr noundef %12, ptr noundef nonnull %2)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %14 = call i32 @fputc(i32 10, ptr %13)
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %16 = call i64 @fwrite(ptr nonnull @.str.83, i64 7, i64 1, ptr %15)
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @assemble_name(ptr noundef %17, ptr noundef nonnull %2)
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %19 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !198
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 16, i32 32
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.84, i64 noundef %0, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #34
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @assemble_trampoline_template() local_unnamed_addr #9 !prof !182 {
  %1 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #34
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 39), align 8, !tbaa !402
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2576, ptr noundef nonnull @.str.5) #34
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @initial_trampoline, align 8, !tbaa !183
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  tail call void @switch_to_section(ptr noundef %9)
  %10 = tail call i32 @floor_log2(i64 noundef 1) #34
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %14 = shl nuw i32 1, %10
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.57, i32 noundef %14)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !403
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void %17(ptr noundef %18, ptr noundef nonnull @.str.85, i64 noundef 0) #34
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 39), align 8, !tbaa !402
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void %19(ptr noundef %20) #34
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.85, i32 noundef 0)
  %22 = call ptr @ggc_alloc_string(ptr noundef nonnull %1, i32 noundef -1) #34
  %23 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %22) #34
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %24, align 8, !tbaa !194
  %25 = call ptr @gen_const_mem(i32 noundef 1, ptr noundef %23) #34
  store ptr %25, ptr @initial_trampoline, align 8, !tbaa !183
  call void @set_mem_align(ptr noundef %25, i32 noundef 8) #34
  %26 = load ptr, ptr @initial_trampoline, align 8, !tbaa !183
  %27 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 10) #34
  call void @set_mem_size(ptr noundef %26, ptr noundef %27) #34
  %28 = load ptr, ptr @initial_trampoline, align 8, !tbaa !183
  br label %29

29:                                               ; preds = %5, %16
  %30 = phi ptr [ %28, %16 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #34
  ret ptr %30
}

declare ptr @gen_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @integer_asm_op(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !182 {
  %3 = icmp eq i32 %1, 0
  switch i32 %0, label %22 [
    i32 1, label %4
    i32 2, label %6
    i32 4, label %10
    i32 8, label %14
    i32 16, label %18
  ]

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 2), align 8, !tbaa !404
  br label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 4), align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 3), align 8
  %9 = select i1 %3, ptr %7, ptr %8
  br label %22

10:                                               ; preds = %2
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 4, i32 1), align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 3, i32 1), align 8
  %13 = select i1 %3, ptr %11, ptr %12
  br label %22

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 4, i32 2), align 8
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 3, i32 2), align 8
  %17 = select i1 %3, ptr %15, ptr %16
  br label %22

18:                                               ; preds = %2
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 4, i32 3), align 8
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 3, i32 3), align 8
  %21 = select i1 %3, ptr %19, ptr %20
  br label %22

22:                                               ; preds = %2, %18, %14, %10, %6, %4
  %23 = phi ptr [ %21, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ], [ %5, %4 ], [ null, %2 ]
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_integer_with_op(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %4 = tail call i32 @fputs(ptr noundef %0, ptr noundef %3)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @output_addr_const(ptr noundef %5, ptr noundef %1) #34
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %7 = tail call i32 @fputc(i32 noundef 10, ptr noundef %6)
  ret void
}

declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @default_assemble_integer(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = tail call ptr @integer_asm_op(i32 noundef %1, i32 noundef %2)
  %5 = icmp ugt i32 %1, 4
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %4, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %10 = tail call i32 @fputs(ptr noundef nonnull %4, ptr noundef %9)
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @output_addr_const(ptr noundef %11, ptr noundef %0) #34
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %13 = tail call i32 @fputc(i32 noundef 10, ptr noundef %12)
  br label %14

14:                                               ; preds = %8, %6
  %15 = zext i1 %7 to i8
  br label %16

16:                                               ; preds = %3, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %3 ]
  ret i8 %17
}

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_real(ptr noundef byval(%struct.real_value) align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !194
  %8 = zext i8 %7 to i32
  %9 = call i64 @real_to_target(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef %1) #34
  %10 = load i64, ptr %4, align 16, !tbaa !405
  %11 = and i64 %10, 4294967295
  %12 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #34
  %13 = call i32 @llvm.umin.i32(i32 %8, i32 4)
  %14 = call zeroext i8 @assemble_integer(ptr noundef %12, i32 noundef %13, i32 noundef %2, i32 noundef 1), !range !277
  %15 = or i32 %2, 32
  %16 = sub nsw i32 0, %15
  %17 = and i32 %15, %16
  %18 = icmp ugt i8 %7, 4
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = shl nuw nsw i32 %8, 3
  %21 = add nuw nsw i32 %20, 31
  %22 = lshr i32 %21, 5
  %23 = zext nneg i32 %22 to i64
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 1, %19 ], [ %34, %24 ]
  %26 = phi i32 [ %8, %19 ], [ %27, %24 ]
  %27 = add nsw i32 %26, -4
  %28 = getelementptr inbounds [4 x i64], ptr %4, i64 0, i64 %25
  %29 = load i64, ptr %28, align 8, !tbaa !405
  %30 = and i64 %29, 4294967295
  %31 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %30) #34
  %32 = call i32 @llvm.smin.i32(i32 %27, i32 4)
  %33 = call zeroext i8 @assemble_integer(ptr noundef %31, i32 noundef %32, i32 noundef %17, i32 noundef 1), !range !277
  %34 = add nuw nsw i64 %25, 1
  %35 = icmp eq i64 %34, %23
  br i1 %35, label %36, label %24, !llvm.loop !406

36:                                               ; preds = %24, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @constant_pool_htab() local_unnamed_addr #15 !prof !182 {
  %1 = load ptr, ptr @const_desc_htab, align 8, !tbaa !183
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @output_constant_def(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !407 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.constant_descriptor_tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #34
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !408
  %6 = tail call fastcc i32 @const_hash_1(ptr noundef %0)
  %7 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %4, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !410
  %8 = load ptr, ptr @const_desc_htab, align 8, !tbaa !183
  %9 = call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 1) #34
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %78, !prof !411

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #34
  %13 = call ptr @ggc_alloc_stat(i64 noundef 24) #34
  %14 = call fastcc ptr @copy_constant(ptr noundef %0)
  %15 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %13, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !408
  %16 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !412

18:                                               ; preds = %12
  %19 = call i32 @mf_marked_p(ptr noundef %0) #34
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !408
  %23 = call ptr @mf_mark(ptr noundef %22) #34
  br label %24

24:                                               ; preds = %21, %18, %12
  %25 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @const_labelno, align 4, !tbaa !198
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.86, i32 noundef %25)
  %28 = load i32, ptr @flag_section_anchors, align 4, !tbaa !198
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31, !prof !412

31:                                               ; preds = %24
  %32 = call fastcc ptr @get_constant_section(ptr noundef %0)
  %33 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #34
  %34 = call fastcc ptr @get_block_for_section(ptr noundef %32)
  %35 = call ptr @ggc_alloc_stat(i64 noundef 48) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %35, i8 0, i64 48, i1 false)
  store i32 1048621, ptr %35, align 8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  store ptr %33, ptr %36, align 8, !tbaa !194
  %37 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 128, ptr %37, align 8, !tbaa !194
  %38 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  store ptr %34, ptr %38, align 8, !tbaa !194
  %39 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 2
  store i64 -1, ptr %39, align 8, !tbaa !194
  br label %43

40:                                               ; preds = %24
  %41 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #34
  %42 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %41) #34
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi ptr [ %35, %31 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !194
  %47 = or i32 %46, 2
  store i32 %47, ptr %45, align 8, !tbaa !194
  %48 = load i32, ptr %44, align 8
  %49 = and i32 %48, 67108864
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !412

51:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3268, ptr noundef nonnull @.str.5) #34
  br label %52

52:                                               ; preds = %51, %43
  %53 = load ptr, ptr %15, align 8, !tbaa !408
  %54 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !194
  %55 = load i32, ptr %44, align 8
  %56 = or i32 %55, 1073741824
  store i32 %56, ptr %44, align 8
  %57 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !194
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 14
  br i1 %61, label %62, label %64, !prof !283

62:                                               ; preds = %52
  %63 = call i32 @vector_type_mode(ptr noundef nonnull %58) #34
  br label %69

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %62, %64
  %70 = phi i32 [ %63, %62 ], [ %68, %64 ]
  %71 = call ptr @gen_rtx_MEM(i32 noundef %70, ptr noundef nonnull %44) #34
  call void @set_mem_attributes(ptr noundef %71, ptr noundef %0, i32 noundef 1) #34
  call void @set_mem_alias_set(ptr noundef %71, i32 noundef 0) #34
  %72 = load i32, ptr @const_alias_set, align 4, !tbaa !198
  call void @set_mem_alias_set(ptr noundef %71, i32 noundef %72) #34
  %73 = load i32, ptr %71, align 8
  %74 = or i32 %73, 536870912
  store i32 %74, ptr %71, align 8
  %75 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !270
  call void %75(ptr noundef %0, ptr noundef nonnull %71, i32 noundef 1) #34, !prof !413
  store ptr %71, ptr %13, align 8, !tbaa !414
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #34
  %76 = load i32, ptr %7, align 8, !tbaa !410
  %77 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %13, i64 0, i32 2
  store i32 %76, ptr %77, align 8, !tbaa !410
  store ptr %13, ptr %9, align 8, !tbaa !183
  br label %78

78:                                               ; preds = %69, %2
  %79 = phi ptr [ %13, %69 ], [ %10, %2 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !414
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !194
  %83 = load i32, ptr @flag_syntax_only, align 4, !tbaa !198
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %100, !prof !415

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %79, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !408
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 4194304
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %100, !prof !411

91:                                               ; preds = %85
  %92 = icmp eq i32 %1, 0
  br i1 %92, label %99, label %93, !prof !412

93:                                               ; preds = %91
  %94 = load ptr, ptr @cfun, align 8, !tbaa !183
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !416
  %98 = add i32 %97, 1
  store i32 %98, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !416
  br label %100

99:                                               ; preds = %91
  call fastcc void @output_constant_def_contents(ptr noundef %82)
  br label %100

100:                                              ; preds = %78, %85, %93, %96, %99
  %101 = load ptr, ptr %79, align 8, !tbaa !414
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #34
  ret ptr %101
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @const_hash_1(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !407 !PGOFuncName !417 {
  %2 = alloca %struct.addr_const, align 8
  br label %3

3:                                                ; preds = %22, %1
  %4 = phi i32 [ 0, %1 ], [ %29, %22 ]
  %5 = phi ptr [ %0, %1 ], [ %28, %22 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %118 [
    i16 23, label %8
    i16 24, label %10
    i16 25, label %14
    i16 28, label %18
    i16 26, label %22
    i16 51, label %30
    i16 121, label %63
    i16 122, label %63
    i16 63, label %101
    i16 66, label %101
    i16 64, label %101
    i16 116, label %111
    i16 113, label %111
  ], !prof !418

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  br label %121

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_real_cst, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = tail call i32 @real_hash(ptr noundef %12) #34
  br label %137

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_fixed_cst, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call i32 @fixed_hash(ptr noundef %16) #34
  br label %137

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2
  %20 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !194
  br label %121

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tree_complex, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = tail call fastcc i32 @const_hash_1(ptr noundef %24)
  %26 = mul i32 %25, 5
  %27 = getelementptr inbounds %struct.tree_complex, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = add i32 %4, %26
  br label %3

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #34
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 5
  %36 = getelementptr inbounds %struct.tree_constructor, ptr %5, i64 0, i32 1
  br label %37

37:                                               ; preds = %60, %30
  %38 = phi i32 [ %35, %30 ], [ %61, %60 ]
  %39 = phi i64 [ 0, %30 ], [ %62, %60 ]
  %40 = phi ptr [ undef, %30 ], [ %53, %60 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !194
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %41, align 8, !tbaa !352
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i32 [ %44, %43 ], [ 0, %37 ]
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %39, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %41, i64 0, i32 2, i64 %39, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !356
  br label %52

52:                                               ; preds = %45, %49
  %53 = phi ptr [ %40, %45 ], [ %51, %49 ]
  br i1 %48, label %54, label %137

54:                                               ; preds = %52
  %55 = icmp eq ptr %53, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %54
  %57 = mul i32 %38, 603
  %58 = tail call fastcc i32 @const_hash_1(ptr noundef nonnull %53)
  %59 = add i32 %58, %57
  br label %60

60:                                               ; preds = %54, %56
  %61 = phi i32 [ %59, %56 ], [ %38, %54 ]
  %62 = add nuw nsw i64 %39, 1
  br label %37, !llvm.loop !419

63:                                               ; preds = %3, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #34
  call fastcc void @decode_addr_const(ptr noundef nonnull %5, ptr noundef nonnull %2)
  %64 = load ptr, ptr %2, align 8, !tbaa !420
  %65 = load i32, ptr %64, align 8
  %66 = trunc i32 %65 to i16
  switch i16 %66, label %96 [
    i16 45, label %67
    i16 44, label %86
  ]

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.addr_const, ptr %2, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !422
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !194
  %73 = load i8, ptr %72, align 1, !tbaa !194
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %67, %75
  %76 = phi i64 [ %82, %75 ], [ 0, %67 ]
  %77 = phi i8 [ %84, %75 ], [ %73, %67 ]
  %78 = phi i32 [ %81, %75 ], [ %70, %67 ]
  %79 = sext i8 %77 to i32
  %80 = mul i32 %78, 613
  %81 = add i32 %80, %79
  %82 = add nuw nsw i64 %76, 1
  %83 = getelementptr inbounds i8, ptr %72, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !194
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %75, !llvm.loop !423

86:                                               ; preds = %63
  %87 = getelementptr inbounds %struct.addr_const, ptr %2, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !422
  %89 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !194
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 1, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !194
  %93 = mul nsw i32 %92, 13
  %94 = trunc i64 %88 to i32
  %95 = add i32 %93, %94
  br label %97

96:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2947, ptr noundef nonnull @.str.5) #34
  br label %97

97:                                               ; preds = %75, %67, %96, %86
  %98 = phi i32 [ undef, %96 ], [ %95, %86 ], [ %70, %67 ], [ %81, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #34
  br label %137

99:                                               ; preds = %137, %111, %101
  %100 = phi i32 [ %110, %101 ], [ %117, %111 ], [ %139, %137 ]
  ret i32 %100

101:                                              ; preds = %3, %3, %3
  %102 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !194
  %104 = tail call fastcc i32 @const_hash_1(ptr noundef %103)
  %105 = mul i32 %104, 9
  %106 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !194
  %108 = tail call fastcc i32 @const_hash_1(ptr noundef %107)
  %109 = add i32 %108, %105
  %110 = add i32 %4, %109
  br label %99

111:                                              ; preds = %3, %3
  %112 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !194
  %114 = tail call fastcc i32 @const_hash_1(ptr noundef %113)
  %115 = mul i32 %114, 7
  %116 = add i32 %115, 2
  %117 = add i32 %4, %116
  br label %99

118:                                              ; preds = %3
  %119 = trunc i64 %6 to i32
  %120 = and i32 %119, 65535
  br label %137

121:                                              ; preds = %18, %8
  %122 = phi ptr [ %19, %18 ], [ %9, %8 ]
  %123 = phi i32 [ %21, %18 ], [ 16, %8 ]
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %137, !prof !424

125:                                              ; preds = %121
  %126 = zext nneg i32 %123 to i64
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi i64 [ 0, %125 ], [ %135, %127 ]
  %129 = phi i32 [ %123, %125 ], [ %134, %127 ]
  %130 = mul i32 %129, 613
  %131 = getelementptr inbounds i8, ptr %122, i64 %128
  %132 = load i8, ptr %131, align 1, !tbaa !194
  %133 = sext i8 %132 to i32
  %134 = add i32 %130, %133
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, %126
  br i1 %136, label %137, label %127, !prof !425, !llvm.loop !426

137:                                              ; preds = %52, %127, %121, %118, %97, %14, %10
  %138 = phi i32 [ %120, %118 ], [ %98, %97 ], [ %17, %14 ], [ %13, %10 ], [ %123, %121 ], [ %134, %127 ], [ %38, %52 ]
  %139 = add i32 %4, %138
  br label %99
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lookup_constant_def(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = alloca %struct.constant_descriptor_tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #34
  %3 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !408
  %4 = tail call fastcc i32 @const_hash_1(ptr noundef %0)
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %2, i64 0, i32 2
  store i32 %4, ptr %5, align 8, !tbaa !410
  %6 = load ptr, ptr @const_desc_htab, align 8, !tbaa !183
  %7 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %4) #34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !414
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #34
  ret ptr %12
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_varasm_status() local_unnamed_addr #12 !prof !427 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  %2 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @const_desc_rtx_hash, ptr noundef nonnull @const_desc_rtx_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  %3 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !428
  %4 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 3
  store i64 0, ptr %4, align 8, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !302
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !416
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @simplify_subtraction(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = tail call ptr @simplify_rtx(ptr noundef %0) #34
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr %0, ptr %2
  ret ptr %4
}

declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @force_const_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant_descriptor_rtx, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #34
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !431
  %8 = tail call zeroext i8 %7(ptr noundef %1) #34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %120

10:                                               ; preds = %2
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 36), align 8, !tbaa !303
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 42), align 8, !tbaa !432
  %12 = tail call zeroext i8 %11(i32 noundef %0, ptr noundef %1) #34
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr @shared_constant_pool, align 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 3
  store ptr %1, ptr %17, align 8, !tbaa !311
  %18 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 6
  store i32 %0, ptr %18, align 4, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %1, ptr %3, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !tbaa !198
  %19 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @const_rtx_hash_1, ptr noundef nonnull %4) #34
  %20 = load i32, ptr %4, align 4, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %21 = getelementptr inbounds %struct.rtx_constant_pool, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !428
  %23 = call ptr @htab_find_slot_with_hash(ptr noundef %22, ptr noundef nonnull %5, i32 noundef %20, i32 noundef 1) #34
  %24 = load ptr, ptr %23, align 8, !tbaa !183
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !433
  br label %117

29:                                               ; preds = %10
  %30 = call ptr @ggc_alloc_stat(i64 noundef 64) #34
  store ptr %30, ptr %23, align 8, !tbaa !183
  %31 = icmp eq i32 %0, 0
  %32 = load i32, ptr @word_mode, align 4
  %33 = select i1 %31, i32 %32, i32 %0
  %34 = call i32 @get_mode_alignment(i32 noundef %33) #34
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !202
  %36 = call ptr %35(i32 noundef %0, i32 noundef 0) #34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = call ptr @make_tree(ptr noundef nonnull %36, ptr noundef %1) #34
  %40 = call i32 @ix86_constant_alignment(ptr noundef %39, i32 noundef %34) #34
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i32 [ %40, %38 ], [ %34, %29 ]
  %43 = lshr i32 %42, 3
  %44 = add nsw i32 %43, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rtx_constant_pool, ptr %16, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !430
  %48 = add nsw i64 %47, %45
  %49 = sub nsw i32 0, %43
  %50 = zext i32 %49 to i64
  %51 = and i64 %48, %50
  store i64 %51, ptr %46, align 8, !tbaa !430
  store ptr null, ptr %30, align 8, !tbaa !434
  %52 = load ptr, ptr %17, align 8, !tbaa !311
  %53 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 3
  store ptr %52, ptr %53, align 8, !tbaa !311
  %54 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 4
  store i64 %51, ptr %54, align 8, !tbaa !435
  %55 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 5
  store i32 %20, ptr %55, align 8, !tbaa !436
  %56 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 6
  store i32 %0, ptr %56, align 4, !tbaa !310
  %57 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 7
  store i32 %42, ptr %57, align 8, !tbaa !312
  %58 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %59 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 8
  store i32 %58, ptr %59, align 4, !tbaa !437
  %60 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 9
  store i32 0, ptr %60, align 8, !tbaa !306
  %61 = zext i32 %0 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !194
  %64 = zext i8 %63 to i64
  %65 = add nuw nsw i64 %51, %64
  store i64 %65, ptr %46, align 8, !tbaa !430
  %66 = getelementptr inbounds %struct.rtx_constant_pool, ptr %16, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !438
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %41
  store ptr %30, ptr %66, align 8, !tbaa !438
  br label %70

70:                                               ; preds = %41, %69
  %71 = phi ptr [ %16, %69 ], [ %67, %41 ]
  store ptr %30, ptr %71, align 8, !tbaa !183
  store ptr %30, ptr %66, align 8, !tbaa !438
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.86, i32 noundef %58)
  %73 = load i32, ptr @const_labelno, align 4, !tbaa !198
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr @const_labelno, align 4, !tbaa !198
  %75 = load i32, ptr @flag_section_anchors, align 4, !tbaa !198
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %70
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 42), align 8, !tbaa !432
  %80 = call zeroext i8 %79(i32 noundef %0, ptr noundef %1) #34
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 22), align 8, !tbaa !309
  %84 = zext i32 %42 to i64
  %85 = call ptr %83(i32 noundef %0, ptr noundef %1, i64 noundef %84) #34
  %86 = call ptr @ggc_alloc_string(ptr noundef nonnull %6, i32 noundef -1) #34
  %87 = call fastcc ptr @get_block_for_section(ptr noundef %85)
  %88 = call ptr @ggc_alloc_stat(i64 noundef 48) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %88, i8 0, i64 48, i1 false)
  store i32 1048621, ptr %88, align 8
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  store ptr %86, ptr %89, align 8, !tbaa !194
  %90 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 128, ptr %90, align 8, !tbaa !194
  %91 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 1
  store ptr %87, ptr %91, align 8, !tbaa !194
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 2
  store i64 -1, ptr %92, align 8, !tbaa !194
  br label %96

93:                                               ; preds = %78, %70
  %94 = call ptr @ggc_alloc_string(ptr noundef nonnull %6, i32 noundef -1) #34
  %95 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %94) #34
  br label %96

96:                                               ; preds = %93, %82
  %97 = phi ptr [ %88, %82 ], [ %95, %93 ]
  %98 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !308
  %99 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load i32, ptr %99, align 8, !tbaa !194
  %101 = or i32 %100, 2
  store i32 %101, ptr %99, align 8, !tbaa !194
  %102 = load i32, ptr %97, align 8
  %103 = or i32 %102, 67108864
  store i32 %103, ptr %97, align 8
  %104 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %30, ptr %104, align 8, !tbaa !194
  %105 = call ptr @gen_const_mem(i32 noundef %0, ptr noundef nonnull %97) #34
  %106 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %30, i64 0, i32 1
  store ptr %105, ptr %106, align 8, !tbaa !433
  %107 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !202
  %108 = call ptr %107(i32 noundef %0, i32 noundef 0) #34
  call void @set_mem_attributes(ptr noundef %105, ptr noundef %108, i32 noundef 1) #34
  call void @set_mem_align(ptr noundef %105, i32 noundef %42) #34
  %109 = load i32, ptr %1, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 44
  br i1 %111, label %112, label %117

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !194
  %115 = load i32, ptr %114, align 8
  %116 = or i32 %115, 268435456
  store i32 %116, ptr %114, align 8
  br label %117

117:                                              ; preds = %96, %112, %26
  %118 = phi ptr [ %28, %26 ], [ %105, %112 ], [ %105, %96 ]
  %119 = call ptr @copy_rtx(ptr noundef %118) #34
  br label %120

120:                                              ; preds = %117, %2
  %121 = phi ptr [ null, %2 ], [ %119, %117 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret ptr %121
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_block_for_section(ptr noundef %0) unnamed_addr #9 !prof !182 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @object_block_htab, align 8, !tbaa !183
  %5 = load i32, ptr %0, align 8, !tbaa !194
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = tail call i32 @htab_hash_string(ptr noundef %10) #34
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ %5, %3 ]
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef nonnull %0, i32 noundef %13, i32 noundef 1) #34
  %15 = load ptr, ptr %14, align 8, !tbaa !183
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #34
  store ptr %0, ptr %18, align 8, !tbaa !439
  store ptr %18, ptr %14, align 8, !tbaa !183
  br label %19

19:                                               ; preds = %12, %17, %1
  %20 = phi ptr [ null, %1 ], [ %18, %17 ], [ %15, %12 ]
  ret ptr %20
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local ptr @get_pool_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !182 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !311
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @get_pool_constant_mark(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #22 !prof !182 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 67108864
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !306
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %1, align 1, !tbaa !194
  %12 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !311
  ret ptr %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local i32 @get_pool_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !182 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !310
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_pool_size() local_unnamed_addr #23 !prof !182 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !302
  %2 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !430
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @output_shared_constant_pool() local_unnamed_addr #9 !prof !337 {
  %1 = load ptr, ptr @shared_constant_pool, align 8, !tbaa !183
  tail call fastcc void @output_constant_pool_contents(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_constant_pool_contents(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !337 !PGOFuncName !440 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4, !prof !295

4:                                                ; preds = %1, %32
  %5 = phi ptr [ %33, %32 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !306
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !308
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !194
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !194
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @place_block_symbol(ptr noundef %11)
  br label %32

21:                                               ; preds = %16, %9
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 22), align 8, !tbaa !309
  %23 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !310
  %25 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !311
  %27 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !312
  %29 = zext i32 %28 to i64
  %30 = tail call ptr %22(i32 noundef %24, ptr noundef %26, i64 noundef %29) #34
  tail call void @switch_to_section(ptr noundef %30)
  %31 = load i32, ptr %27, align 8, !tbaa !312
  tail call fastcc void @output_constant_pool_1(ptr noundef nonnull %5, i32 noundef %31)
  br label %32

32:                                               ; preds = %4, %21, %20
  %33 = load ptr, ptr %5, align 8, !tbaa !183
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %4, !prof !295, !llvm.loop !313

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_reloc_for_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #24 !prof !368 {
  br label %2

2:                                                ; preds = %45, %23, %1
  %3 = phi i32 [ 0, %1 ], [ %29, %23 ], [ %3, %45 ]
  %4 = phi ptr [ %0, %1 ], [ %28, %23 ], [ %47, %45 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %71 [
    i16 121, label %7
    i16 122, label %7
    i16 63, label %23
    i16 66, label %23
    i16 64, label %32
    i16 116, label %45
    i16 113, label %45
    i16 118, label %45
    i16 51, label %8
  ], !prof !370

7:                                                ; preds = %2, %2
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_constructor, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = icmp eq ptr %10, null
  br label %48

12:                                               ; preds = %18, %7
  %13 = phi ptr [ %4, %7 ], [ %15, %18 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %19 [
    i16 42, label %18
    i16 41, label %18
    i16 45, label %18
    i16 46, label %18
    i16 118, label %18
    i16 43, label %18
    i16 44, label %18
  ]

18:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  br label %12, !llvm.loop !441

19:                                               ; preds = %12
  %20 = and i64 %16, 134217728
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  br label %71

23:                                               ; preds = %2, %2
  %24 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = tail call i32 @compute_reloc_for_constant(ptr noundef %25), !range !363
  %27 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = or i32 %3, %26
  br label %2

30:                                               ; preds = %71, %32
  %31 = phi i32 [ %44, %32 ], [ %73, %71 ]
  ret i32 %31

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  %35 = tail call i32 @compute_reloc_for_constant(ptr noundef %34), !range !363
  %36 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  %38 = tail call i32 @compute_reloc_for_constant(ptr noundef %37), !range !363
  %39 = icmp eq i32 %35, 1
  %40 = icmp eq i32 %38, 1
  %41 = select i1 %39, i1 %40, i1 false
  %42 = or i32 %38, %35
  %43 = select i1 %41, i32 0, i32 %42
  %44 = or i32 %3, %43
  br label %30

45:                                               ; preds = %2, %2, %2
  %46 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !194
  br label %2

48:                                               ; preds = %8, %68
  %49 = phi i32 [ %69, %68 ], [ 0, %8 ]
  %50 = phi ptr [ %62, %68 ], [ undef, %8 ]
  %51 = phi i64 [ %70, %68 ], [ 0, %8 ]
  br i1 %11, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %10, align 8, !tbaa !352
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %48 ]
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %10, i64 0, i32 2, i64 %51, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !356
  br label %61

61:                                               ; preds = %54, %58
  %62 = phi ptr [ %50, %54 ], [ %60, %58 ]
  br i1 %57, label %63, label %71

63:                                               ; preds = %61
  %64 = icmp eq ptr %62, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %62), !range !363
  %67 = or i32 %66, %49
  br label %68

68:                                               ; preds = %63, %65
  %69 = phi i32 [ %67, %65 ], [ %49, %63 ]
  %70 = add nuw nsw i64 %51, 1
  br label %48, !llvm.loop !442

71:                                               ; preds = %61, %19, %2
  %72 = phi i32 [ 0, %2 ], [ %22, %19 ], [ %49, %61 ]
  %73 = or i32 %3, %72
  br label %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @constructor_static_from_elts_p(ptr nocapture noundef readonly %0) local_unnamed_addr #23 !prof !182 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 131072
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65534
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !352
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %11, %5, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %5 ], [ %18, %15 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @initializer_constant_valid_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !337 {
  %3 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @initializer_constant_valid_p_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !337 !PGOFuncName !443 {
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [4 x ptr], align 16
  br label %6

6:                                                ; preds = %164, %167, %120, %3
  %7 = phi ptr [ %0, %3 ], [ %122, %120 ], [ %125, %167 ], [ %125, %164 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %413 [
    i16 51, label %10
    i16 23, label %85
    i16 27, label %85
    i16 24, label %85
    i16 25, label %85
    i16 28, label %85
    i16 26, label %85
    i16 121, label %87
    i16 122, label %87
    i16 117, label %120
    i16 118, label %123
    i16 116, label %168
    i16 113, label %168
    i16 66, label %297
    i16 63, label %297
    i16 64, label %346
  ], !prof !444

10:                                               ; preds = %6
  %11 = and i64 %8, 131072
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65534
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %19, label %80

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tree_constructor, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !352
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %2, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %2, align 8, !tbaa !183
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds ptr, ptr %2, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !183
  br label %414

34:                                               ; preds = %28, %26
  %35 = getelementptr inbounds %struct.tree_constructor, ptr %7, i64 0, i32 1
  br label %36

36:                                               ; preds = %65, %34
  %37 = phi i8 [ 1, %34 ], [ %66, %65 ]
  %38 = phi ptr [ undef, %34 ], [ %52, %65 ]
  %39 = phi i64 [ 0, %34 ], [ %67, %65 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !194
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !352
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %39, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %40, i64 0, i32 2, i64 %39, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !356
  br label %51

51:                                               ; preds = %44, %48
  %52 = phi ptr [ %38, %44 ], [ %50, %48 ]
  br i1 %47, label %53, label %68

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !194
  %56 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %52, ptr noundef %55, ptr noundef null)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  br i1 %27, label %65, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !183
  store ptr null, ptr %60, align 8, !tbaa !183
  br label %65

61:                                               ; preds = %53
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %63 = icmp eq ptr %56, %62
  %64 = select i1 %63, i8 %37, i8 0
  br label %65

65:                                               ; preds = %58, %59, %61
  %66 = phi i8 [ %64, %61 ], [ %37, %59 ], [ %37, %58 ]
  %67 = add nuw nsw i64 %39, 1
  br i1 %57, label %414, label %36, !llvm.loop !445

68:                                               ; preds = %51
  br i1 %27, label %75, label %69

69:                                               ; preds = %68
  store ptr %7, ptr %2, align 8, !tbaa !183
  %70 = icmp eq i8 %37, 0
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %72 = load ptr, ptr @global_trees, align 16
  %73 = select i1 %70, ptr %72, ptr %71
  %74 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %73, ptr %74, align 8, !tbaa !183
  br label %75

75:                                               ; preds = %69, %68
  %76 = icmp eq i8 %37, 0
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %78 = load ptr, ptr @global_trees, align 16
  %79 = select i1 %76, ptr %78, ptr %77
  br label %414

80:                                               ; preds = %10, %13, %19, %23
  %81 = and i64 %8, 67108864
  %82 = icmp eq i64 %81, 0
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %84 = select i1 %82, ptr null, ptr %83
  br label %414

85:                                               ; preds = %6, %6, %6, %6, %6, %6
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %414

87:                                               ; preds = %6, %6
  %88 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !194
  %90 = tail call ptr @staticp(ptr noundef %89) #34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %119, label %92

92:                                               ; preds = %87
  %93 = load i64, ptr %90, align 8
  %94 = and i64 %93, 65535
  %95 = trunc i64 %93 to i16
  switch i16 %95, label %119 [
    i16 47, label %96
    i16 29, label %106
    i16 51, label %414
  ]

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !194
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 131072
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %414

104:                                              ; preds = %96
  %105 = trunc i64 %93 to i16
  switch i16 %105, label %119 [
    i16 29, label %106
    i16 51, label %414
  ]

106:                                              ; preds = %92, %104
  %107 = getelementptr inbounds %struct.tree_function_decl, ptr %90, i64 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 4194304
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %7, align 8
  %113 = and i64 %112, 67108864
  %114 = icmp eq i64 %113, 0
  %115 = icmp eq i64 %94, 51
  %116 = or i1 %115, %114
  br i1 %116, label %414, label %119

117:                                              ; preds = %106
  %118 = icmp eq i64 %94, 51
  br i1 %118, label %414, label %119

119:                                              ; preds = %117, %104, %92, %111, %87
  br label %414

120:                                              ; preds = %6
  %121 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !194
  br label %6

123:                                              ; preds = %6
  %124 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !194
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !194
  %128 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !194
  %130 = load i64, ptr %127, align 8
  %131 = trunc i64 %130 to i32
  %132 = and i32 %131, 65535
  %133 = add nsw i32 %132, -15
  %134 = icmp ult i32 %133, 4
  br i1 %134, label %135, label %167

135:                                              ; preds = %123
  %136 = load i64, ptr %129, align 8
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 65535
  %139 = add nsw i32 %138, -15
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %167, label %141

141:                                              ; preds = %135
  %142 = load i64, ptr %1, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #34
  br label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = load i64, ptr %129, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 14
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = tail call i32 @vector_type_mode(ptr noundef nonnull %129) #34
  br label %164

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %159 ]
  %166 = icmp eq i32 %153, %165
  br i1 %166, label %6, label %414

167:                                              ; preds = %135, %123
  br label %6

168:                                              ; preds = %6, %6
  %169 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !194
  %171 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !194
  %173 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !194
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i16
  switch i16 %176, label %196 [
    i16 10, label %177
    i16 12, label %177
    i16 9, label %187
    i16 13, label %181
    i16 14, label %181
  ]

177:                                              ; preds = %168, %168
  %178 = load i64, ptr %172, align 8
  %179 = trunc i64 %178 to i16
  switch i16 %179, label %180 [
    i16 10, label %203
    i16 12, label %203
  ]

180:                                              ; preds = %177
  switch i16 %176, label %196 [
    i16 9, label %187
    i16 13, label %181
    i16 14, label %181
  ]

181:                                              ; preds = %180, %168, %168, %180
  %182 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !194
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 9
  br i1 %186, label %187, label %196

187:                                              ; preds = %181, %168, %180
  %188 = load i64, ptr %172, align 8
  %189 = trunc i64 %188 to i16
  switch i16 %189, label %196 [
    i16 9, label %203
    i16 13, label %190
    i16 14, label %190
  ]

190:                                              ; preds = %187, %187
  %191 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !194
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 9
  br i1 %195, label %203, label %196

196:                                              ; preds = %190, %187, %181, %168, %180
  %197 = and i64 %175, 65535
  %198 = icmp eq i64 %197, 5
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i64, ptr %172, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 5
  br i1 %202, label %203, label %205

203:                                              ; preds = %190, %187, %177, %177, %199
  %204 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %170, ptr noundef %1, ptr noundef %2)
  br label %294

205:                                              ; preds = %199, %196
  %206 = trunc i64 %175 to i32
  %207 = and i32 %206, 65535
  %208 = add nsw i32 %207, -6
  %209 = icmp ult i32 %208, 3
  br i1 %209, label %210, label %252

210:                                              ; preds = %205
  %211 = load i64, ptr %172, align 8
  %212 = trunc i64 %211 to i32
  %213 = and i32 %212, 65535
  %214 = add nsw i32 %213, -6
  %215 = icmp ult i32 %214, 3
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = xor i32 %220, %218
  %222 = and i32 %221, 1023
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %170, ptr noundef %1, ptr noundef %2)
  br label %294

226:                                              ; preds = %210, %216
  br i1 %209, label %227, label %252

227:                                              ; preds = %226
  %228 = load i64, ptr %172, align 8
  %229 = trunc i64 %228 to i32
  %230 = and i32 %229, 65535
  %231 = add nsw i32 %230, -6
  %232 = icmp ult i32 %231, 3
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %170, ptr noundef %1, ptr noundef %2)
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %236 = icmp eq ptr %234, %235
  %237 = select i1 %236, i32 1, i32 2
  br label %294

238:                                              ; preds = %227
  br i1 %209, label %239, label %252

239:                                              ; preds = %238
  %240 = load i64, ptr %172, align 8
  %241 = trunc i64 %240 to i16
  switch i16 %241, label %252 [
    i16 10, label %242
    i16 12, label %242
  ]

242:                                              ; preds = %239, %239
  %243 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 1023
  %246 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, 1023
  %249 = icmp ult i32 %245, %248
  br i1 %249, label %252, label %250

250:                                              ; preds = %242
  %251 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %170, ptr noundef %1, ptr noundef %2)
  br label %294

252:                                              ; preds = %205, %226, %242, %238, %239
  switch i16 %176, label %288 [
    i16 10, label %253
    i16 12, label %253
    i16 5, label %253
  ]

253:                                              ; preds = %252, %252, %252
  %254 = load i64, ptr %172, align 8
  %255 = trunc i64 %254 to i32
  %256 = and i32 %255, 65535
  %257 = add nsw i32 %256, -6
  %258 = icmp ult i32 %257, 3
  br i1 %258, label %259, label %288

259:                                              ; preds = %253
  %260 = load i64, ptr %170, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 23
  br i1 %262, label %263, label %273

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %265 = load i32, ptr %264, align 4
  %266 = and i32 %265, 1023
  %267 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = and i32 %268, 1023
  %270 = icmp ult i32 %266, %269
  br i1 %270, label %273, label %271

271:                                              ; preds = %263
  %272 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %294

273:                                              ; preds = %263, %259
  %274 = tail call i32 @integer_zerop(ptr noundef nonnull %170) #34
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %294

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 1023
  %282 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %283 = load i32, ptr %282, align 4
  %284 = and i32 %283, 1023
  %285 = icmp ugt i32 %281, %284
  br i1 %285, label %288, label %286

286:                                              ; preds = %278
  %287 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef nonnull %170, ptr noundef %1, ptr noundef %2)
  br label %294

288:                                              ; preds = %252, %253, %278
  %289 = load i64, ptr %174, align 8
  %290 = and i64 %289, 65534
  %291 = icmp eq i64 %290, 16
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %170, ptr noundef %1, ptr noundef %2)
  br label %294

294:                                              ; preds = %288, %292, %286, %276, %271, %250, %233, %224, %203
  %295 = phi i32 [ 1, %203 ], [ 1, %224 ], [ %237, %233 ], [ 1, %250 ], [ 1, %271 ], [ 1, %276 ], [ 1, %286 ], [ 1, %292 ], [ 0, %288 ]
  %296 = phi ptr [ %204, %203 ], [ %225, %224 ], [ %235, %233 ], [ %251, %250 ], [ %272, %271 ], [ %277, %276 ], [ %287, %286 ], [ %293, %292 ], [ undef, %288 ]
  switch i32 %295, label %414 [
    i32 0, label %413
    i32 2, label %413
  ]

297:                                              ; preds = %6, %6
  %298 = load i64, ptr %1, align 8
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 9
  br i1 %300, label %414, label %301

301:                                              ; preds = %297
  %302 = icmp eq ptr %2, null
  br i1 %302, label %309, label %303

303:                                              ; preds = %301
  %304 = load ptr, ptr %2, align 8, !tbaa !183
  %305 = icmp eq ptr %304, %7
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = getelementptr inbounds ptr, ptr %2, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !183
  br label %414

309:                                              ; preds = %303, %301
  %310 = trunc i64 %298 to i32
  %311 = and i32 %310, 65535
  %312 = add nsw i32 %311, -6
  %313 = icmp ult i32 %312, 3
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %316 = load i32, ptr %315, align 4
  %317 = and i32 %316, 1023
  %318 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !194
  %320 = getelementptr inbounds %struct.tree_type, ptr %319, i64 0, i32 6
  %321 = load i32, ptr %320, align 4
  %322 = and i32 %321, 1023
  %323 = icmp ult i32 %317, %322
  br i1 %323, label %340, label %324

324:                                              ; preds = %309, %314
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %325 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !194
  %327 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %326, ptr noundef nonnull %1, ptr noundef nonnull %4)
  %328 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !194
  %330 = getelementptr inbounds ptr, ptr %4, i64 2
  %331 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %329, ptr noundef nonnull %1, ptr noundef nonnull %330)
  %332 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %333 = icmp eq ptr %327, %332
  br i1 %333, label %338, label %334

334:                                              ; preds = %324
  %335 = icmp eq ptr %331, %332
  br i1 %335, label %338, label %336

336:                                              ; preds = %334
  %337 = call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull %4)
  br label %338

338:                                              ; preds = %334, %324, %336
  %339 = phi ptr [ %337, %336 ], [ %331, %324 ], [ %327, %334 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #34
  br label %342

340:                                              ; preds = %314
  %341 = tail call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef null)
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi ptr [ %339, %338 ], [ %341, %340 ]
  br i1 %302, label %414, label %344

344:                                              ; preds = %342
  store ptr %7, ptr %2, align 8, !tbaa !183
  %345 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %343, ptr %345, align 8, !tbaa !183
  br label %414

346:                                              ; preds = %6
  %347 = load i64, ptr %1, align 8
  %348 = and i64 %347, 65535
  %349 = icmp eq i64 %348, 9
  br i1 %349, label %414, label %350

350:                                              ; preds = %346
  %351 = icmp eq ptr %2, null
  br i1 %351, label %358, label %352

352:                                              ; preds = %350
  %353 = load ptr, ptr %2, align 8, !tbaa !183
  %354 = icmp eq ptr %353, %7
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = getelementptr inbounds ptr, ptr %2, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !183
  br label %414

358:                                              ; preds = %352, %350
  %359 = trunc i64 %347 to i32
  %360 = and i32 %359, 65535
  %361 = add nsw i32 %360, -6
  %362 = icmp ult i32 %361, 3
  br i1 %362, label %363, label %373

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %365 = load i32, ptr %364, align 4
  %366 = and i32 %365, 1023
  %367 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !194
  %369 = getelementptr inbounds %struct.tree_type, ptr %368, i64 0, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = and i32 %370, 1023
  %372 = icmp ult i32 %366, %371
  br i1 %372, label %407, label %373

373:                                              ; preds = %358, %363
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %374 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !194
  %376 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %375, ptr noundef nonnull %1, ptr noundef nonnull %5)
  %377 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %378 = load ptr, ptr %377, align 8, !tbaa !194
  %379 = getelementptr inbounds ptr, ptr %5, i64 2
  %380 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %378, ptr noundef nonnull %1, ptr noundef nonnull %379)
  %381 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %382 = icmp eq ptr %380, %381
  br i1 %382, label %405, label %383

383:                                              ; preds = %373
  %384 = icmp eq ptr %376, %380
  %385 = icmp ne ptr %376, null
  %386 = and i1 %385, %384
  br i1 %386, label %405, label %387

387:                                              ; preds = %383
  br i1 %385, label %388, label %403

388:                                              ; preds = %387
  %389 = load i64, ptr %376, align 8
  %390 = and i64 %389, 65535
  %391 = icmp eq i64 %390, 28
  %392 = icmp ne ptr %380, null
  %393 = and i1 %392, %391
  br i1 %393, label %394, label %403

394:                                              ; preds = %388
  %395 = load i64, ptr %380, align 8
  %396 = and i64 %395, 65535
  %397 = icmp eq i64 %396, 28
  br i1 %397, label %398, label %403

398:                                              ; preds = %394
  %399 = call i32 @operand_equal_p(ptr noundef nonnull %376, ptr noundef nonnull %380, i32 noundef 1) #34
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %398
  %402 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %405

403:                                              ; preds = %398, %394, %388, %387
  %404 = call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull %5)
  br label %405

405:                                              ; preds = %383, %373, %403, %401
  %406 = phi ptr [ %402, %401 ], [ %404, %403 ], [ %376, %373 ], [ %381, %383 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #34
  br label %409

407:                                              ; preds = %363
  %408 = tail call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef null)
  br label %409

409:                                              ; preds = %407, %405
  %410 = phi ptr [ %406, %405 ], [ %408, %407 ]
  br i1 %351, label %414, label %411

411:                                              ; preds = %409
  store ptr %7, ptr %2, align 8, !tbaa !183
  %412 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %410, ptr %412, align 8, !tbaa !183
  br label %414

413:                                              ; preds = %294, %6, %294
  br label %414

414:                                              ; preds = %65, %294, %92, %104, %409, %411, %346, %342, %344, %297, %164, %102, %119, %111, %117, %31, %75, %413, %355, %306, %85, %80
  %415 = phi ptr [ null, %413 ], [ %357, %355 ], [ %308, %306 ], [ %86, %85 ], [ %84, %80 ], [ %33, %31 ], [ %79, %75 ], [ %103, %102 ], [ %90, %119 ], [ null, %111 ], [ null, %117 ], [ null, %164 ], [ null, %297 ], [ %343, %344 ], [ %343, %342 ], [ null, %346 ], [ %410, %411 ], [ %410, %409 ], [ null, %104 ], [ null, %92 ], [ %296, %294 ], [ null, %65 ]
  ret ptr %415
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @initializer_constant_valid_for_bitfield_p(ptr nocapture noundef readonly %0) local_unnamed_addr #25 !prof !182 {
  br label %2

2:                                                ; preds = %28, %1
  %3 = phi ptr [ %0, %1 ], [ %30, %28 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %31 [
    i16 51, label %6
    i16 23, label %32
    i16 118, label %28
    i16 117, label %28
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %24, %6
  %11 = phi i64 [ %27, %24 ], [ 0, %6 ]
  %12 = phi ptr [ %23, %24 ], [ undef, %6 ]
  br i1 %9, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %8, align 8, !tbaa !352
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %11, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %8, i64 0, i32 2, i64 %11, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !356
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %12, %15 ], [ %21, %19 ]
  br i1 %18, label %24, label %32

24:                                               ; preds = %22
  %25 = tail call zeroext i8 @initializer_constant_valid_for_bitfield_p(ptr noundef %23), !range !277
  %26 = icmp eq i8 %25, 0
  %27 = add nuw nsw i64 %11, 1
  br i1 %26, label %32, label %10, !llvm.loop !446

28:                                               ; preds = %2, %2
  %29 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  br label %2

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %22, %24, %2, %31
  %33 = phi i8 [ 0, %31 ], [ 1, %2 ], [ 0, %24 ], [ 1, %22 ]
  ret i8 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @output_constant(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !339 {
  %4 = icmp eq i64 %1, 0
  %5 = load i32, ptr @flag_syntax_only, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !prof !341
  br i1 %7, label %247, label %8, !prof !341

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 116
  br i1 %11, label %12, label %90, !prof !341

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %90 [
    i16 10, label %17
    i16 12, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 2), align 8, !tbaa !447
  %19 = and i64 %15, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @vector_type_mode(ptr noundef nonnull %14) #34
  br label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  %30 = load ptr, ptr %13, align 8, !tbaa !194
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = load i64, ptr %32, align 8
  %34 = lshr i64 %33, 56
  %35 = trunc i64 %34 to i8
  %36 = tail call zeroext i8 %18(i32 noundef %29, i8 noundef zeroext %35) #34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %28
  %39 = load ptr, ptr %13, align 8, !tbaa !194
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 116
  br i1 %42, label %43, label %76

43:                                               ; preds = %38, %70
  %44 = phi ptr [ %72, %70 ], [ %0, %38 ]
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !194
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %76 [
    i16 10, label %49
    i16 12, label %49
  ]

49:                                               ; preds = %43, %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 2), align 8, !tbaa !447
  %51 = and i64 %47, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #34
  br label %60

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = load ptr, ptr %45, align 8, !tbaa !194
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !194
  %65 = load i64, ptr %64, align 8
  %66 = lshr i64 %65, 56
  %67 = trunc i64 %66 to i8
  %68 = tail call zeroext i8 %50(i32 noundef %61, i8 noundef zeroext %67) #34
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !194
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 116
  br i1 %75, label %43, label %76, !llvm.loop !448

76:                                               ; preds = %60, %70, %43, %38
  %77 = phi ptr [ %0, %38 ], [ %44, %60 ], [ %72, %70 ], [ %44, %43 ]
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %90 [
    i16 121, label %80
    i16 23, label %84
  ]

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !194
  %83 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %39, ptr noundef %82) #34
  br label %90

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !194
  %87 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !194
  %89 = tail call ptr @build_int_cst_wide(ptr noundef %39, i64 noundef %86, i64 noundef %88) #34
  br label %90

90:                                               ; preds = %80, %84, %76, %12, %28, %8
  %91 = phi ptr [ %77, %76 ], [ %89, %84 ], [ %83, %80 ], [ %0, %12 ], [ %0, %8 ], [ %0, %28 ]
  br label %92

92:                                               ; preds = %90, %117
  %93 = phi ptr [ %119, %117 ], [ %91, %90 ]
  %94 = load i64, ptr %93, align 8
  %95 = trunc i64 %94 to i16
  switch i16 %95, label %120 [
    i16 116, label %96
    i16 113, label %96
    i16 117, label %96
    i16 118, label %96
  ], !prof !449

96:                                               ; preds = %92, %92, %92, %92
  %97 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !194
  %99 = tail call i64 @int_size_in_bytes(ptr noundef %98) #34
  %100 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !194
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !194
  %104 = tail call i64 @int_size_in_bytes(ptr noundef %103) #34
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load i64, ptr %93, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 118
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %97, align 8, !tbaa !194
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 17
  br i1 %114, label %115, label %117

115:                                              ; preds = %110, %106, %96
  %116 = load ptr, ptr %100, align 8, !tbaa !194
  br label %117

117:                                              ; preds = %110, %115
  %118 = phi i1 [ true, %115 ], [ false, %110 ]
  %119 = phi ptr [ %116, %115 ], [ %93, %110 ]
  br i1 %118, label %92, label %120

120:                                              ; preds = %92, %117
  %121 = phi ptr [ %119, %117 ], [ %93, %92 ]
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !194
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i16
  %126 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %123) #34
  %127 = load i64, ptr %121, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 51
  br i1 %129, label %130, label %140, !prof !341

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.tree_constructor, ptr %121, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !194
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %132, align 8, !tbaa !352
  br label %136

136:                                              ; preds = %130, %134
  %137 = phi i32 [ %135, %134 ], [ 0, %130 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void @assemble_zeros(i64 noundef %1)
  br label %247

140:                                              ; preds = %136, %120
  %141 = trunc i64 %127 to i32
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 122
  br i1 %143, label %144, label %145, !prof !341

144:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4661, ptr noundef nonnull @.str.5) #34
  br label %247

145:                                              ; preds = %140
  switch i16 %125, label %241 [
    i16 7, label %146
    i16 8, label %146
    i16 6, label %146
    i16 10, label %146
    i16 12, label %146
    i16 5, label %146
    i16 11, label %146
    i16 9, label %153
    i16 13, label %172
    i16 15, label %183
    i16 14, label %183
    i16 16, label %237
    i16 17, label %237
    i16 0, label %247
  ], !prof !450

146:                                              ; preds = %145, %145, %145, %145, %145, %145, %145
  %147 = tail call ptr @expand_expr_real(ptr noundef nonnull %121, ptr noundef null, i32 noundef 0, i32 noundef 4, ptr noundef null) #34
  %148 = tail call i64 @llvm.umin.i64(i64 %126, i64 %1)
  %149 = trunc i64 %148 to i32
  %150 = tail call zeroext i8 @assemble_integer(ptr noundef %147, i32 noundef %149, i32 noundef %2, i32 noundef 0), !range !277
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %242

152:                                              ; preds = %146
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.87) #34
  br label %242

153:                                              ; preds = %145
  %154 = icmp eq i32 %142, 24
  br i1 %154, label %156, label %155

155:                                              ; preds = %153
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.88) #34
  br label %242

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.tree_real_cst, ptr %121, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !194
  %159 = load ptr, ptr %122, align 8, !tbaa !194
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = tail call i32 @vector_type_mode(ptr noundef nonnull %159) #34
  br label %170

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.tree_type, ptr %159, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %163
  %171 = phi i32 [ %164, %163 ], [ %169, %165 ]
  tail call void @assemble_real(ptr noundef byval(%struct.real_value) align 8 %158, i32 noundef %171, i32 noundef %2)
  br label %242

172:                                              ; preds = %145
  %173 = getelementptr inbounds %struct.tree_complex, ptr %121, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !194
  %175 = lshr i64 %126, 1
  tail call void @output_constant(ptr noundef %174, i64 noundef %175, i32 noundef %2)
  %176 = getelementptr inbounds %struct.tree_complex, ptr %121, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !194
  %178 = shl i64 %175, 3
  %179 = trunc i64 %178 to i32
  %180 = or i32 %179, %2
  %181 = sub i32 0, %180
  %182 = and i32 %180, %181
  tail call void @output_constant(ptr noundef %177, i64 noundef %175, i32 noundef %182)
  br label %242

183:                                              ; preds = %145, %145
  %184 = trunc i64 %127 to i16
  switch i16 %184, label %236 [
    i16 51, label %185
    i16 28, label %187
    i16 27, label %194
  ], !prof !451

185:                                              ; preds = %183
  %186 = tail call fastcc i64 @output_constructor(ptr noundef nonnull %121, i64 noundef %1, i32 noundef %2, ptr noundef null)
  br label %247

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.tree_string, ptr %121, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !194
  %190 = sext i32 %189 to i64
  %191 = tail call i64 @llvm.umin.i64(i64 %190, i64 %1)
  %192 = getelementptr inbounds %struct.tree_string, ptr %121, i64 0, i32 2
  %193 = trunc i64 %191 to i32
  tail call void @assemble_string(ptr noundef nonnull %192, i32 noundef %193)
  br label %242

194:                                              ; preds = %183
  %195 = load ptr, ptr %122, align 8, !tbaa !194
  %196 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !194
  %198 = load i64, ptr %197, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 14
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = tail call i32 @vector_type_mode(ptr noundef nonnull %197) #34
  br label %208

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %205 = load i32, ptr %204, align 4
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  br label %208

208:                                              ; preds = %203, %201
  %209 = phi i32 [ %202, %201 ], [ %207, %203 ]
  %210 = tail call i32 @get_mode_alignment(i32 noundef %209) #34
  %211 = icmp ugt i32 %210, %2
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = tail call i32 @get_mode_alignment(i32 noundef %209) #34
  br label %214

214:                                              ; preds = %208, %212
  %215 = phi i32 [ %213, %212 ], [ %2, %208 ]
  %216 = zext i32 %209 to i64
  %217 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !194
  %219 = getelementptr inbounds %struct.tree_vector, ptr %121, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !194
  %221 = getelementptr inbounds %struct.tree_list, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !194
  %223 = zext i8 %218 to i64
  tail call void @output_constant(ptr noundef %222, i64 noundef %223, i32 noundef %2)
  %224 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !194
  %226 = icmp eq ptr %225, null
  br i1 %226, label %242, label %227

227:                                              ; preds = %214, %227
  %228 = phi ptr [ %234, %227 ], [ %225, %214 ]
  %229 = phi i64 [ %232, %227 ], [ %223, %214 ]
  %230 = getelementptr inbounds %struct.tree_list, ptr %228, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !194
  tail call void @output_constant(ptr noundef %231, i64 noundef %223, i32 noundef %215)
  %232 = add i64 %229, %223
  %233 = getelementptr inbounds %struct.tree_common, ptr %228, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !194
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %227, !llvm.loop !452

236:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4732, ptr noundef nonnull @.str.5) #34
  br label %242

237:                                              ; preds = %145, %145
  br i1 %129, label %239, label %238

238:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4738, ptr noundef nonnull @.str.5) #34
  br label %239

239:                                              ; preds = %237, %238
  %240 = tail call fastcc i64 @output_constructor(ptr noundef nonnull %121, i64 noundef %1, i32 noundef %2, ptr noundef null)
  br label %247

241:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4746, ptr noundef nonnull @.str.5) #34
  br label %242

242:                                              ; preds = %227, %214, %187, %236, %155, %170, %146, %152, %241, %172
  %243 = phi i64 [ %126, %241 ], [ %126, %236 ], [ %191, %187 ], [ %126, %172 ], [ %126, %155 ], [ %126, %170 ], [ %126, %146 ], [ %126, %152 ], [ %223, %214 ], [ %232, %227 ]
  %244 = icmp ult i64 %243, %1
  br i1 %244, label %245, label %247, !prof !341

245:                                              ; preds = %242
  %246 = sub i64 %1, %243
  tail call void @assemble_zeros(i64 noundef %246)
  br label %247

247:                                              ; preds = %145, %242, %245, %3, %239, %185, %144, %139
  ret void
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @output_constructor(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !182 {
  %5 = alloca %struct.oc_outer_state, align 4
  %6 = icmp ne ptr %3, null
  %7 = zext i1 %6 to i8
  br i1 %6, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.oc_outer_state, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !453
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 15
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  br label %25

25:                                               ; preds = %22, %18, %11
  %26 = phi ptr [ null, %18 ], [ %24, %22 ], [ null, %11 ]
  %27 = icmp eq i64 %16, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %30, %28 ], [ null, %25 ]
  %33 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %34 = icmp eq ptr %3, null
  %35 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %36 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %37 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  br label %38

38:                                               ; preds = %453, %31
  %39 = phi i64 [ 0, %31 ], [ %447, %453 ]
  %40 = phi ptr [ %32, %31 ], [ %454, %453 ]
  %41 = phi i8 [ %7, %31 ], [ %448, %453 ]
  %42 = phi i32 [ %12, %31 ], [ %449, %453 ]
  %43 = phi i32 [ -1, %31 ], [ %450, %453 ]
  %44 = phi i64 [ 0, %31 ], [ %451, %453 ]
  %45 = load ptr, ptr %33, align 8, !tbaa !194
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %38
  %48 = trunc i64 %44 to i32
  %49 = load i32, ptr %45, align 8, !tbaa !352
  %50 = icmp ugt i32 %49, %48
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = and i64 %44, 4294967295
  %53 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %45, i64 0, i32 2, i64 %52
  br label %54

54:                                               ; preds = %38, %47, %51
  %55 = phi ptr [ %53, %51 ], [ null, %47 ], [ null, %38 ]
  %56 = phi i1 [ false, %51 ], [ true, %47 ], [ true, %38 ]
  br i1 %56, label %458, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.constructor_elt_d, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !356
  %60 = load i64, ptr %14, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -16
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load ptr, ptr %55, align 8, !tbaa !354
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %57
  %69 = and i64 %60, 65535
  %70 = icmp eq i64 %69, 15
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %55, align 8, !tbaa !354
  br label %73

73:                                               ; preds = %65, %68, %71
  %74 = phi ptr [ %40, %71 ], [ %40, %68 ], [ %66, %65 ]
  %75 = phi ptr [ %72, %71 ], [ null, %68 ], [ null, %65 ]
  %76 = icmp ne ptr %74, null
  %77 = load i32, ptr @flag_verbose_asm, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %82 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !194
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tree_identifier, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !194
  br label %88

88:                                               ; preds = %80, %85
  %89 = phi ptr [ %87, %85 ], [ @.str.174, %80 ]
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173, ptr noundef %89)
  br label %91

91:                                               ; preds = %88, %73
  %92 = icmp eq ptr %59, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %59) #34
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi ptr [ %59, %91 ], [ %94, %93 ]
  %97 = icmp ne ptr %75, null
  %98 = select i1 %34, i1 %97, i1 false
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = load i64, ptr %75, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 111
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = load ptr, ptr %37, align 8, !tbaa !194
  %105 = call i64 @int_size_in_bytes(ptr noundef %104) #34
  %106 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !194
  %108 = call i64 @tree_low_cst(ptr noundef %107, i32 noundef 0) #34
  %109 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !194
  %111 = call i64 @tree_low_cst(ptr noundef %110, i32 noundef 0) #34
  %112 = trunc i64 %105 to i32
  %113 = shl i32 %112, 3
  %114 = or i32 %113, %2
  %115 = sub i32 0, %114
  %116 = and i32 %114, %115
  %117 = icmp sgt i64 %108, %111
  br i1 %117, label %446, label %118

118:                                              ; preds = %103
  %119 = icmp eq ptr %96, null
  br label %120

120:                                              ; preds = %118, %125
  %121 = phi i64 [ %108, %118 ], [ %127, %125 ]
  %122 = phi i64 [ %39, %118 ], [ %126, %125 ]
  br i1 %119, label %123, label %124

123:                                              ; preds = %120
  call void @assemble_zeros(i64 noundef %105)
  br label %125

124:                                              ; preds = %120
  call void @output_constant(ptr noundef nonnull %96, i64 noundef %105, i32 noundef %116)
  br label %125

125:                                              ; preds = %124, %123
  %126 = add i64 %122, %105
  %127 = add i64 %121, 1
  %128 = icmp eq i64 %121, %111
  br i1 %128, label %446, label %120, !llvm.loop !455

129:                                              ; preds = %99, %95
  br i1 %6, label %295, label %130

130:                                              ; preds = %129
  %131 = icmp eq ptr %74, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %134 = load i64, ptr %133, align 8
  %135 = and i64 %134, 33554432
  %136 = icmp eq i64 %135, 0
  %137 = and i64 %134, 255
  %138 = icmp eq i64 %137, 1
  %139 = or i1 %136, %138
  br i1 %139, label %140, label %295

140:                                              ; preds = %132, %130
  %141 = icmp eq ptr %75, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !194
  %145 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !194
  %147 = call i64 @tree_low_cst(ptr noundef %146, i32 noundef 1) #34
  %148 = call i64 @tree_low_cst(ptr noundef nonnull %75, i32 noundef 0) #34
  %149 = call i64 @tree_low_cst(ptr noundef %26, i32 noundef 0) #34
  %150 = sub nsw i64 %148, %149
  %151 = mul nsw i64 %150, %147
  br label %155

152:                                              ; preds = %140
  br i1 %131, label %155, label %153

153:                                              ; preds = %152
  %154 = call i64 @int_byte_position(ptr noundef nonnull %74) #34
  br label %155

155:                                              ; preds = %153, %152, %142
  %156 = phi i64 [ %151, %142 ], [ %154, %153 ], [ 0, %152 ]
  %157 = icmp eq i8 %41, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = sext i32 %42 to i64
  %160 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %159) #34
  %161 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %162 = call zeroext i8 %161(ptr noundef %160, i32 noundef 1, i32 noundef 1) #34
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %165

165:                                              ; preds = %158, %164
  %166 = add nsw i64 %39, 1
  br label %167

167:                                              ; preds = %165, %155
  %168 = phi i64 [ %39, %155 ], [ %166, %165 ]
  %169 = phi i8 [ %41, %155 ], [ 0, %165 ]
  %170 = and i1 %131, %141
  %171 = icmp eq i64 %156, %168
  %172 = select i1 %170, i1 true, i1 %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = icmp slt i64 %156, %168
  br i1 %174, label %175, label %176

175:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4892, ptr noundef nonnull @.str.5) #34
  br label %176

176:                                              ; preds = %175, %173
  %177 = sub nsw i64 %156, %168
  call void @assemble_zeros(i64 noundef %177)
  br label %178

178:                                              ; preds = %167, %176
  %179 = phi i64 [ %156, %176 ], [ %168, %167 ]
  %180 = trunc i64 %156 to i32
  %181 = shl i32 %180, 3
  %182 = or i32 %181, %2
  %183 = sub i32 0, %182
  %184 = and i32 %182, %183
  br i1 %131, label %285, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !194
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 15
  br i1 %190, label %191, label %275

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !194
  %194 = icmp eq ptr %193, null
  br i1 %194, label %275, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.tree_type, ptr %193, i64 0, i32 14
  %197 = load ptr, ptr %196, align 8, !tbaa !194
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %275

199:                                              ; preds = %195
  %200 = load i64, ptr %96, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 28
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.tree_constructor, ptr %96, i64 0, i32 1
  br label %209

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.tree_string, ptr %96, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !194
  %208 = sext i32 %207 to i64
  br label %267

209:                                              ; preds = %203, %240
  %210 = phi i64 [ %242, %240 ], [ 0, %203 ]
  %211 = phi ptr [ %234, %240 ], [ undef, %203 ]
  %212 = phi ptr [ %241, %240 ], [ null, %203 ]
  %213 = load ptr, ptr %204, align 8, !tbaa !194
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %209
  %216 = load i32, ptr %213, align 8, !tbaa !352
  br label %217

217:                                              ; preds = %215, %209
  %218 = phi i32 [ %216, %215 ], [ 0, %209 ]
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %210, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %213, i64 0, i32 2, i64 %210
  %223 = load ptr, ptr %222, align 8, !tbaa !354
  br label %224

224:                                              ; preds = %221, %217
  %225 = phi ptr [ %211, %217 ], [ %223, %221 ]
  br i1 %220, label %226, label %243

226:                                              ; preds = %224
  %227 = load i64, ptr %225, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 111
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.tree_exp, ptr %225, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !194
  br label %233

233:                                              ; preds = %230, %226
  %234 = phi ptr [ %232, %230 ], [ %225, %226 ]
  %235 = icmp eq ptr %212, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = call i32 @tree_int_cst_lt(ptr noundef nonnull %212, ptr noundef %234) #34
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %236
  %241 = phi ptr [ %234, %239 ], [ %212, %236 ]
  %242 = add nuw nsw i64 %210, 1
  br label %209, !llvm.loop !456

243:                                              ; preds = %224
  %244 = icmp eq ptr %212, null
  br i1 %244, label %267, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !194
  %248 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !194
  %250 = getelementptr inbounds %struct.tree_type, ptr %249, i64 0, i32 13
  %251 = load ptr, ptr %250, align 8, !tbaa !194
  %252 = load ptr, ptr @sizetype_tab, align 16, !tbaa !183
  %253 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %252, ptr noundef nonnull %212) #34
  %254 = load ptr, ptr @sizetype_tab, align 16, !tbaa !183
  %255 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %254, ptr noundef %251) #34
  %256 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %253, ptr noundef %255) #34
  %257 = load ptr, ptr @sizetype_tab, align 16, !tbaa !183
  %258 = call ptr @build_int_cst(ptr noundef %257, i64 noundef 1) #34
  %259 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %256, ptr noundef %258) #34
  %260 = load ptr, ptr %246, align 8, !tbaa !194
  %261 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !194
  %263 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !194
  %265 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %259, ptr noundef %264) #34
  %266 = call i64 @tree_low_cst(ptr noundef %265, i32 noundef 1) #34
  br label %267

267:                                              ; preds = %205, %243, %245
  %268 = phi i64 [ %208, %205 ], [ %266, %245 ], [ 0, %243 ]
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %288, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !194
  %273 = icmp eq ptr %272, null
  br i1 %273, label %288, label %274

274:                                              ; preds = %270
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4917, ptr noundef nonnull @.str.5) #34
  br label %288

275:                                              ; preds = %195, %191, %185
  %276 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !194
  %278 = icmp eq ptr %277, null
  br i1 %278, label %288, label %279

279:                                              ; preds = %275
  %280 = call i32 @host_integerp(ptr noundef nonnull %277, i32 noundef 1) #34
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr %276, align 8, !tbaa !194
  %284 = call i64 @tree_low_cst(ptr noundef %283, i32 noundef 1) #34
  br label %288

285:                                              ; preds = %178
  %286 = load ptr, ptr %35, align 8, !tbaa !194
  %287 = call i64 @int_size_in_bytes(ptr noundef %286) #34
  br label %288

288:                                              ; preds = %285, %282, %279, %275, %274, %270, %267
  %289 = phi i64 [ %284, %282 ], [ 0, %279 ], [ 0, %275 ], [ %268, %274 ], [ %268, %270 ], [ 0, %267 ], [ %287, %285 ]
  %290 = icmp eq ptr %96, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  call void @assemble_zeros(i64 noundef %289)
  br label %293

292:                                              ; preds = %288
  call void @output_constant(ptr noundef nonnull %96, i64 noundef %289, i32 noundef %184)
  br label %293

293:                                              ; preds = %291, %292
  %294 = add i64 %289, %179
  br label %446

295:                                              ; preds = %132, %129
  %296 = icmp eq ptr %74, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %295
  %298 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 1
  br label %302

299:                                              ; preds = %295
  %300 = load ptr, ptr %36, align 8, !tbaa !194
  %301 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 2
  br label %302

302:                                              ; preds = %299, %297
  %303 = phi ptr [ %301, %299 ], [ %298, %297 ]
  %304 = load ptr, ptr %303, align 8, !tbaa !194
  %305 = call i64 @tree_low_cst(ptr noundef %304, i32 noundef 1) #34
  br i1 %296, label %306, label %315

306:                                              ; preds = %302
  %307 = icmp eq ptr %75, null
  br i1 %307, label %312, label %308

308:                                              ; preds = %306
  %309 = call i64 @tree_low_cst(ptr noundef nonnull %75, i32 noundef 0) #34
  %310 = call i64 @tree_low_cst(ptr noundef %26, i32 noundef 0) #34
  %311 = sub nsw i64 %309, %310
  br label %315

312:                                              ; preds = %306
  %313 = add nsw i32 %43, 1
  %314 = sext i32 %313 to i64
  br label %315

315:                                              ; preds = %312, %308, %302
  %316 = phi i64 [ %311, %308 ], [ %314, %312 ], [ 0, %302 ]
  br i1 %296, label %319, label %317

317:                                              ; preds = %315
  %318 = call i64 @int_bit_position(ptr noundef nonnull %74) #34
  br label %321

319:                                              ; preds = %315
  %320 = mul nsw i64 %316, %305
  br label %321

321:                                              ; preds = %319, %317
  %322 = phi i64 [ %318, %317 ], [ %320, %319 ]
  br i1 %34, label %325, label %323

323:                                              ; preds = %321
  %324 = load i32, ptr %3, align 4, !tbaa !457
  br label %325

325:                                              ; preds = %323, %321
  %326 = phi i32 [ %324, %323 ], [ 0, %321 ]
  %327 = zext i32 %326 to i64
  %328 = add nsw i64 %322, %327
  %329 = add nsw i64 %328, %305
  %330 = trunc i64 %316 to i32
  %331 = icmp eq ptr %96, null
  %332 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %333 = select i1 %331, ptr %332, ptr %96
  br label %334

334:                                              ; preds = %338, %325
  %335 = phi ptr [ %333, %325 ], [ %340, %338 ]
  %336 = load i64, ptr %335, align 8
  %337 = trunc i64 %336 to i16
  switch i16 %337, label %341 [
    i16 118, label %338
    i16 117, label %338
    i16 23, label %344
    i16 51, label %344
  ]

338:                                              ; preds = %334, %334
  %339 = getelementptr inbounds %struct.tree_exp, ptr %335, i64 0, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !194
  br label %334, !llvm.loop !458

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !194
  call void (ptr, ...) @error(ptr noundef nonnull @.str.175, ptr noundef %343) #34
  br label %446

344:                                              ; preds = %334, %334
  %345 = sdiv i64 %328, 8
  %346 = srem i64 %328, 8
  %347 = icmp eq i64 %345, %39
  br i1 %347, label %368, label %348

348:                                              ; preds = %344
  %349 = icmp eq i8 %41, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %348
  %351 = sext i32 %42 to i64
  %352 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %351) #34
  %353 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %354 = call zeroext i8 %353(ptr noundef %352, i32 noundef 1, i32 noundef 1) #34
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %357

357:                                              ; preds = %350, %356
  %358 = add nsw i64 %39, 1
  br label %359

359:                                              ; preds = %357, %348
  %360 = phi i64 [ %39, %348 ], [ %358, %357 ]
  %361 = phi i8 [ %41, %348 ], [ 0, %357 ]
  %362 = icmp eq i64 %345, %360
  br i1 %362, label %368, label %363

363:                                              ; preds = %359
  %364 = icmp slt i64 %345, %360
  br i1 %364, label %365, label %366

365:                                              ; preds = %363
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5010, ptr noundef nonnull @.str.5) #34
  br label %366

366:                                              ; preds = %365, %363
  %367 = sub nsw i64 %345, %360
  call void @assemble_zeros(i64 noundef %367)
  br label %368

368:                                              ; preds = %366, %359, %344
  %369 = phi i64 [ %39, %344 ], [ %360, %359 ], [ %345, %366 ]
  %370 = phi i8 [ %41, %344 ], [ %361, %359 ], [ %361, %366 ]
  %371 = icmp eq i8 %370, 0
  %372 = icmp sgt i64 %305, 0
  %373 = zext i1 %372 to i8
  %374 = select i1 %371, i8 %373, i8 %370
  %375 = select i1 %371, i32 0, i32 %42
  %376 = load i64, ptr %335, align 8
  %377 = and i64 %376, 65535
  %378 = icmp eq i64 %377, 51
  br i1 %378, label %384, label %379

379:                                              ; preds = %368
  %380 = icmp sgt i64 %305, 0
  br i1 %380, label %381, label %446

381:                                              ; preds = %379
  %382 = getelementptr inbounds %struct.tree_int_cst, ptr %335, i64 0, i32 1, i32 1
  %383 = getelementptr inbounds %struct.tree_int_cst, ptr %335, i64 0, i32 1
  br label %390

384:                                              ; preds = %368
  %385 = getelementptr inbounds %struct.oc_outer_state, ptr %5, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #34
  %386 = trunc i64 %346 to i32
  store i32 %386, ptr %5, align 4, !tbaa !457
  store i32 %375, ptr %385, align 4, !tbaa !453
  %387 = call fastcc i64 @output_constructor(ptr noundef nonnull %335, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %5)
  %388 = add i64 %387, %369
  %389 = load i32, ptr %385, align 4, !tbaa !453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #34
  br label %446

390:                                              ; preds = %381, %429
  %391 = phi i64 [ %328, %381 ], [ %444, %429 ]
  %392 = phi i32 [ %375, %381 ], [ %442, %429 ]
  %393 = phi i64 [ %369, %381 ], [ %410, %429 ]
  %394 = sdiv i64 %391, 8
  %395 = srem i64 %391, 8
  %396 = icmp eq i64 %394, %393
  br i1 %396, label %409, label %397

397:                                              ; preds = %390, %406
  %398 = phi i32 [ 0, %406 ], [ %392, %390 ]
  %399 = phi i64 [ %407, %406 ], [ %393, %390 ]
  %400 = sext i32 %398 to i64
  %401 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %400) #34
  %402 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %403 = call zeroext i8 %402(ptr noundef %401, i32 noundef 1, i32 noundef 1) #34
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %397
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %406

406:                                              ; preds = %397, %405
  %407 = add nsw i64 %399, 1
  %408 = icmp eq i64 %394, %407
  br i1 %408, label %409, label %397, !llvm.loop !459

409:                                              ; preds = %406, %390
  %410 = phi i64 [ %393, %390 ], [ %394, %406 ]
  %411 = phi i32 [ %392, %390 ], [ 0, %406 ]
  %412 = sub nsw i64 %329, %391
  %413 = sub nsw i64 8, %395
  %414 = call i64 @llvm.smin.i64(i64 %412, i64 %413)
  %415 = trunc i64 %414 to i32
  %416 = sub nsw i64 %391, %328
  %417 = trunc i64 %416 to i32
  %418 = icmp slt i32 %417, 64
  %419 = add nsw i32 %415, %417
  %420 = icmp sgt i32 %419, 64
  %421 = select i1 %418, i1 %420, i1 false
  %422 = sub nsw i32 64, %417
  %423 = select i1 %421, i32 %422, i32 %415
  br i1 %418, label %429, label %424

424:                                              ; preds = %409
  %425 = icmp slt i32 %417, 128
  br i1 %425, label %427, label %426

426:                                              ; preds = %424
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5117, ptr noundef nonnull @.str.5) #34
  br label %427

427:                                              ; preds = %426, %424
  %428 = add i64 %416, 4294967232
  br label %429

429:                                              ; preds = %409, %427
  %430 = phi i64 [ %428, %427 ], [ %416, %409 ]
  %431 = phi ptr [ %382, %427 ], [ %383, %409 ]
  %432 = load i64, ptr %431, align 8, !tbaa !194
  %433 = and i64 %430, 4294967295
  %434 = ashr i64 %432, %433
  %435 = add nsw i32 %423, -1
  %436 = zext nneg i32 %435 to i64
  %437 = shl i64 2, %436
  %438 = add nuw i64 %437, 4294967295
  %439 = and i64 %434, %438
  %440 = shl i64 %439, %395
  %441 = trunc i64 %440 to i32
  %442 = or i32 %411, %441
  %443 = sext i32 %423 to i64
  %444 = add nsw i64 %391, %443
  %445 = icmp slt i64 %444, %329
  br i1 %445, label %390, label %446, !llvm.loop !460

446:                                              ; preds = %429, %125, %379, %103, %384, %341, %293
  %447 = phi i64 [ %294, %293 ], [ %39, %341 ], [ %388, %384 ], [ %39, %103 ], [ %369, %379 ], [ %126, %125 ], [ %410, %429 ]
  %448 = phi i8 [ %169, %293 ], [ %41, %341 ], [ %374, %384 ], [ %41, %103 ], [ %374, %379 ], [ %41, %125 ], [ 1, %429 ]
  %449 = phi i32 [ %42, %293 ], [ %42, %341 ], [ %389, %384 ], [ %42, %103 ], [ %375, %379 ], [ %42, %125 ], [ %442, %429 ]
  %450 = phi i32 [ %43, %293 ], [ %330, %341 ], [ %330, %384 ], [ %43, %103 ], [ %330, %379 ], [ %43, %125 ], [ %330, %429 ]
  %451 = add i64 %44, 1
  %452 = icmp eq ptr %74, null
  br i1 %452, label %453, label %455

453:                                              ; preds = %446, %455
  %454 = phi ptr [ null, %446 ], [ %457, %455 ]
  br label %38, !llvm.loop !461

455:                                              ; preds = %446
  %456 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !194
  br label %453

458:                                              ; preds = %54
  br i1 %6, label %459, label %461

459:                                              ; preds = %458
  %460 = getelementptr inbounds %struct.oc_outer_state, ptr %3, i64 0, i32 1
  store i32 %42, ptr %460, align 4, !tbaa !453
  br label %477

461:                                              ; preds = %458
  %462 = icmp eq i8 %41, 0
  br i1 %462, label %472, label %463

463:                                              ; preds = %461
  %464 = sext i32 %42 to i64
  %465 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %464) #34
  %466 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !287
  %467 = call zeroext i8 %466(ptr noundef %465, i32 noundef 1, i32 noundef 1) #34
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #34
  br label %470

470:                                              ; preds = %463, %469
  %471 = add nsw i64 %39, 1
  br label %472

472:                                              ; preds = %470, %461
  %473 = phi i64 [ %39, %461 ], [ %471, %470 ]
  %474 = icmp ult i64 %473, %1
  br i1 %474, label %475, label %477

475:                                              ; preds = %472
  %476 = sub i64 %1, %473
  call void @assemble_zeros(i64 noundef %476)
  br label %477

477:                                              ; preds = %472, %475, %459
  %478 = phi i64 [ %39, %459 ], [ %1, %475 ], [ %473, %472 ]
  ret i64 %478
}

; Function Attrs: nounwind uwtable
define dso_local void @merge_weak(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !462 {
  %3 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 7
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 7
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %6, %10
  %12 = icmp eq i32 %6, 0
  br i1 %11, label %13, label %37, !prof !463

13:                                               ; preds = %2
  br i1 %12, label %69, label %14, !prof !463

14:                                               ; preds = %13
  %15 = load ptr, ptr @weak_decls, align 8, !tbaa !183
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_list, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %27, label %32

21:                                               ; preds = %32
  %22 = getelementptr inbounds %struct.tree_list, ptr %35, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !194
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %32, !llvm.loop !464

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi ptr [ %15, %17 ], [ %35, %25 ]
  %29 = phi ptr [ @weak_decls, %17 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !194
  store ptr %31, ptr %29, align 8, !tbaa !183
  br label %69

32:                                               ; preds = %17, %21
  %33 = phi ptr [ %35, %21 ], [ %15, %17 ]
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !183
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %21, !llvm.loop !464

37:                                               ; preds = %2
  br i1 %12, label %68, label %38

38:                                               ; preds = %37
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.89, ptr noundef %0) #34
  br label %53

43:                                               ; preds = %38
  %44 = and i64 %39, 16777216
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #34
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 67108864
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef %0) #34
  br label %53

53:                                               ; preds = %43, %46, %51, %42
  %54 = load ptr, ptr @weak_decls, align 8, !tbaa !194
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %53, %63
  %57 = phi ptr [ %65, %63 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !194
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !194
  br label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !194
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %56, !llvm.loop !465

67:                                               ; preds = %63, %53, %61
  tail call fastcc void @mark_weak(ptr noundef nonnull %1)
  br label %69

68:                                               ; preds = %37
  tail call fastcc void @mark_weak(ptr noundef %0)
  br label %69

69:                                               ; preds = %32, %14, %27, %13, %68, %67
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_weak(ptr noundef %0) unnamed_addr #9 !prof !182 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 128
  store i32 %4, ptr %2, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %6, i64 11
  %8 = load i8, ptr %7, align 1, !tbaa !194
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load ptr, ptr %11, align 8, !tbaa !194
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %32 = load ptr, ptr %11, align 8, !tbaa !194
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %32, %31 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, -2147483648
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %33, %22, %18, %14, %10, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @declare_weak(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 134217728
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 4259839
  %7 = icmp eq i64 %6, 4194333
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = phi ptr [ @.str.91, %1 ], [ @.str.89, %5 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %9, ptr noundef nonnull %0) #34
  br label %10

10:                                               ; preds = %8, %5
  tail call fastcc void @mark_weak(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.77, ptr noundef %12) #34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call ptr @get_identifier(ptr noundef nonnull @.str.77) #34
  %17 = load ptr, ptr %11, align 8, !tbaa !194
  %18 = tail call ptr @tree_cons_stat(ptr noundef %16, ptr noundef null, ptr noundef %17) #34
  store ptr %18, ptr %11, align 8, !tbaa !194
  br label %19

19:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @weak_finish() local_unnamed_addr #9 !prof !337 {
  %1 = load ptr, ptr @weakref_targets, align 8, !tbaa !194
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %9, !prof !295

3:                                                ; preds = %53, %40
  %4 = load ptr, ptr %41, align 8, !tbaa !194
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !295, !llvm.loop !466

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @weak_decls, align 8, !tbaa !194
  %8 = icmp eq ptr %7, null
  br i1 %8, label %77, label %57, !prof !295

9:                                                ; preds = %0, %3
  %10 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %14 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %13)
  %15 = tail call ptr @decl_assembler_name(ptr noundef %12) #34
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 67108864
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, ptr null, ptr %14
  %20 = load ptr, ptr @weak_decls, align 8, !tbaa !183
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %9, %36
  %23 = phi ptr [ %38, %36 ], [ %20, %9 ]
  %24 = phi ptr [ %37, %36 ], [ @weak_decls, %9 ]
  %25 = getelementptr inbounds %struct.tree_list, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call ptr @decl_assembler_name(ptr noundef %26) #34
  %30 = icmp eq ptr %19, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  store ptr %33, ptr %24, align 8, !tbaa !183
  br label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %24, %31 ], [ %35, %34 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !183
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22, !llvm.loop !467

40:                                               ; preds = %36, %9
  %41 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !183
  %43 = icmp eq ptr %42, null
  br i1 %43, label %3, label %44

44:                                               ; preds = %40, %53
  %45 = phi ptr [ %55, %53 ], [ %42, %40 ]
  %46 = phi ptr [ %54, %53 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.tree_list, ptr %45, i64 0, i32 2
  %48 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %47)
  %49 = icmp eq ptr %19, %48
  %50 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 1
  br i1 %49, label %51, label %53

51:                                               ; preds = %44
  %52 = load ptr, ptr %50, align 8, !tbaa !194
  store ptr %52, ptr %46, align 8, !tbaa !183
  br label %53

53:                                               ; preds = %44, %51
  %54 = phi ptr [ %46, %51 ], [ %50, %44 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !183
  %56 = icmp eq ptr %55, null
  br i1 %56, label %3, label %44, !llvm.loop !468

57:                                               ; preds = %6, %73
  %58 = phi ptr [ %75, %73 ], [ %7, %6 ]
  %59 = getelementptr inbounds %struct.tree_list, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !194
  %61 = tail call ptr @decl_assembler_name(ptr noundef %60) #34
  %62 = load i64, ptr %60, align 8
  %63 = and i64 %62, 16777216
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.tree_identifier, ptr %61, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !194
  %68 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %69 = tail call i64 @fwrite(ptr nonnull @.str.176, i64 7, i64 1, ptr %68)
  %70 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %70, ptr noundef %67)
  %71 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %72 = tail call i32 @fputc(i32 noundef 10, ptr noundef %71)
  br label %73

73:                                               ; preds = %57, %65
  %74 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !194
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %57, !prof !295, !llvm.loop !469

77:                                               ; preds = %73, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @remove_unreachable_alias_pairs() local_unnamed_addr #9 !prof !470 {
  %1 = load ptr, ptr @alias_pairs, align 8, !tbaa !183
  %2 = icmp eq ptr %1, null
  br i1 %2, label %45, label %3, !prof !471

3:                                                ; preds = %0, %43
  %4 = phi i32 [ %44, %43 ], [ 0, %0 ]
  %5 = zext i32 %4 to i64
  %6 = zext i32 %4 to i64
  br label %7

7:                                                ; preds = %3, %36
  %8 = load ptr, ptr @alias_pairs, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !472
  %12 = icmp ule i32 %11, %4
  %13 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %8, i64 0, i32 2, i64 %5
  %14 = select i1 %12, ptr null, ptr %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi ptr [ null, %7 ], [ %14, %10 ]
  %17 = phi i1 [ true, %7 ], [ %12, %10 ]
  br i1 %17, label %45, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !474
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 33554432
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.alias_pair, ptr %16, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !476
  %27 = tail call ptr @cgraph_node_for_asm(ptr noundef %26) #34
  %28 = icmp ne ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !476
  %31 = tail call ptr @varpool_node_for_asm(ptr noundef %30) #34
  br label %32

32:                                               ; preds = %24, %29
  %33 = phi ptr [ %31, %29 ], [ null, %24 ]
  %34 = icmp ne ptr %33, null
  %35 = select i1 %28, i1 true, i1 %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @alias_pairs, align 8
  %38 = load i32, ptr %37, align 8, !tbaa !472
  %39 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %37, i64 0, i32 2, i64 %6
  %40 = add i32 %38, -1
  store i32 %40, ptr %37, align 8, !tbaa !472
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %37, i64 0, i32 2, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false), !tbaa.struct !477
  br label %7

43:                                               ; preds = %32, %18
  %44 = add i32 %4, 1
  br label %3, !llvm.loop !478

45:                                               ; preds = %15, %0
  ret void
}

declare ptr @cgraph_node_for_asm(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node_for_asm(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @finish_aliases_1() local_unnamed_addr #9 !prof !479 {
  br label %1

1:                                                ; preds = %48, %0
  %2 = phi i32 [ 0, %0 ], [ %49, %48 ]
  %3 = load ptr, ptr @alias_pairs, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !412

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !472
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %3, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %1 ]
  %13 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %1 ]
  br i1 %13, label %50, label %14, !prof !412

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !474
  %16 = getelementptr inbounds %struct.alias_pair, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !476
  %18 = tail call fastcc ptr @find_decl_and_mark_needed(ptr noundef %15, ptr noundef %17)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load ptr, ptr %12, align 8, !tbaa !474
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !194
  %24 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %23) #34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %48

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 33554432
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %18, align 8
  %33 = and i64 %32, 65535
  %34 = icmp ne i64 %33, 29
  %35 = and i64 %28, 512
  %36 = icmp eq i64 %35, 0
  %37 = or i1 %36, %34
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load ptr, ptr %12, align 8, !tbaa !474
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %41) #34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %20
  %45 = phi ptr [ @.str.93, %20 ], [ @.str.94, %38 ]
  %46 = load ptr, ptr %12, align 8, !tbaa !474
  %47 = load ptr, ptr %16, align 8, !tbaa !476
  tail call void (ptr, ...) @error(ptr noundef nonnull %45, ptr noundef %46, ptr noundef %47) #34
  br label %48

48:                                               ; preds = %44, %31, %26, %38, %20
  %49 = add i32 %2, 1
  br label %1, !llvm.loop !480

50:                                               ; preds = %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_decl_and_mark_needed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !182 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @cgraph_node_for_asm(ptr noundef %1) #34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call ptr @varpool_node_for_asm(ptr noundef %1) #34
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @varpool_node_for_asm(ptr noundef %1) #34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @cgraph_node_for_asm(ptr noundef %1) #34
  br label %16

16:                                               ; preds = %11, %14, %6, %9
  %17 = phi ptr [ null, %9 ], [ %7, %6 ], [ %15, %14 ], [ null, %11 ]
  %18 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %14 ], [ %12, %11 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %17) #34
  br label %24

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %18) #34
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi ptr [ %18, %23 ], [ %17, %20 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !183
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ null, %21 ], [ %26, %24 ]
  ret ptr %28
}

; Function Attrs: cold nounwind uwtable
define dso_local void @finish_aliases_2() local_unnamed_addr #9 !prof !337 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %18, %14 ]
  %3 = load ptr, ptr @alias_pairs, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !295

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !472
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %3, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %1 ]
  %13 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %1 ]
  br i1 %13, label %19, label %14, !prof !295

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !474
  %16 = getelementptr inbounds %struct.alias_pair, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !476
  tail call fastcc void @do_assemble_alias(ptr noundef %15, ptr noundef %17)
  %18 = add i32 %2, 1
  br label %1, !llvm.loop !481

19:                                               ; preds = %11
  br i1 %4, label %21, label %20, !prof !295

20:                                               ; preds = %19
  store i32 0, ptr %3, align 8, !tbaa !472
  br label %21

21:                                               ; preds = %19, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_assemble_alias(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !182 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !183
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 4194304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %103

7:                                                ; preds = %2
  tail call void @make_decl_rtl(ptr noundef nonnull %0)
  %8 = load i64, ptr %0, align 8
  %9 = or i64 %8, 4194304
  store i64 %9, ptr %0, align 8
  %10 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #34
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 4194304
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %14) #34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %7
  %18 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %19 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !210
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 49152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @emutls_decl(ptr noundef nonnull %0)
  %32 = load ptr, ptr %3, align 8, !tbaa !183
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 4), align 8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.164, ptr %33
  %36 = tail call fastcc ptr @prefix_name(ptr noundef nonnull %35, ptr noundef %32)
  store ptr %36, ptr %3, align 8, !tbaa !183
  br label %37

37:                                               ; preds = %30, %25, %21, %17
  %38 = phi ptr [ %0, %17 ], [ %31, %30 ], [ %0, %25 ], [ %0, %21 ]
  %39 = load ptr, ptr %3, align 8, !tbaa !183
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 67108864
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load ptr, ptr @weakref_targets, align 8, !tbaa !183
  %45 = tail call ptr @tree_cons_stat(ptr noundef %38, ptr noundef nonnull %39, ptr noundef %44) #34
  store ptr %45, ptr @weakref_targets, align 8, !tbaa !183
  br label %46

46:                                               ; preds = %37, %43
  %47 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %48 = tail call i64 @fwrite(ptr nonnull @.str.177, i64 10, i64 1, ptr %47)
  %49 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %50 = tail call ptr @decl_assembler_name(ptr noundef %38) #34
  %51 = getelementptr inbounds %struct.tree_identifier, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !194
  tail call void @assemble_name(ptr noundef %49, ptr noundef %52)
  %53 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %54 = tail call i32 @fputc(i32 44, ptr %53)
  br label %96

55:                                               ; preds = %7
  %56 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !210
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i64, ptr %0, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 49152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @emutls_decl(ptr noundef nonnull %0)
  %69 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 4), align 8
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr @.str.164, ptr %69
  %72 = tail call fastcc ptr @prefix_name(ptr noundef nonnull %71, ptr noundef %1)
  store ptr %72, ptr %3, align 8, !tbaa !183
  br label %73

73:                                               ; preds = %67, %62, %58, %55
  %74 = phi ptr [ %0, %55 ], [ %68, %67 ], [ %0, %62 ], [ %0, %58 ]
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 134217728
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  tail call fastcc void @globalize_decl(ptr noundef nonnull %74)
  %79 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %74, i64 0, i32 4
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 10
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  tail call void %85(ptr noundef nonnull %74, i32 noundef %82) #34
  br label %86

86:                                               ; preds = %84, %78, %73
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %88 = tail call i64 @fwrite(ptr nonnull @.str.156, i64 6, i64 1, ptr %87)
  %89 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %90 = tail call ptr @decl_assembler_name(ptr noundef nonnull %74) #34
  %91 = getelementptr inbounds %struct.tree_identifier, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !194
  tail call void @assemble_name(ptr noundef %89, ptr noundef %92)
  %93 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %94 = tail call i32 @fputc(i32 44, ptr %93)
  %95 = load ptr, ptr %3, align 8, !tbaa !183
  br label %96

96:                                               ; preds = %86, %46
  %97 = phi ptr [ %39, %46 ], [ %95, %86 ]
  %98 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %99 = getelementptr inbounds %struct.tree_identifier, ptr %97, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !194
  tail call void @assemble_name(ptr noundef %98, ptr noundef %100)
  %101 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %102 = tail call i32 @fputc(i32 10, ptr %101)
  br label %103

103:                                              ; preds = %96, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assemble_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %5) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @decl_assembler_name(ptr noundef %0) #34
  %10 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %11 = load ptr, ptr %3, align 8, !tbaa !183
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.95, ptr noundef %0) #34
  br label %14

14:                                               ; preds = %8, %13
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 134217728
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.96, ptr noundef nonnull %0) #34
  br label %19

19:                                               ; preds = %14, %18
  %20 = load i64, ptr %0, align 8
  %21 = or i64 %20, 16777216
  store i64 %21, ptr %0, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load i64, ptr %0, align 8
  %24 = or i64 %23, 16777216
  store i64 %24, ptr %0, align 8
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, -33554433
  store i64 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %19, %22
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 29
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #34
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %33, i64 0, i32 27
  %35 = load i16, ptr %34, align 4
  %36 = or i16 %35, 128
  store i16 %36, ptr %34, align 4
  br label %42

37:                                               ; preds = %28
  %38 = tail call ptr @varpool_node(ptr noundef nonnull %0) #34
  %39 = getelementptr inbounds %struct.varpool_node, ptr %38, i64 0, i32 5
  %40 = load i8, ptr %39, align 4
  %41 = or i8 %40, 64
  store i8 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !194
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !183
  %47 = tail call fastcc ptr @find_decl_and_mark_needed(ptr noundef nonnull %0, ptr noundef %46)
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %47, %45 ], [ null, %42 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64, ptr %49, align 8
  %53 = and i64 %52, 4194304
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8, !tbaa !183
  tail call fastcc void @do_assemble_alias(ptr noundef nonnull %0, ptr noundef %56)
  br label %75

57:                                               ; preds = %51, %48
  %58 = load ptr, ptr @alias_pairs, align 8, !tbaa !183
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %58, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !482
  %63 = load i32, ptr %58, align 8, !tbaa !472
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %60
  %66 = tail call ptr @vec_gc_o_reserve(ptr noundef %58, i32 noundef 1, i64 noundef 8, i64 noundef 16) #34
  store ptr %66, ptr @alias_pairs, align 8, !tbaa !183
  br label %67

67:                                               ; preds = %60, %65
  %68 = load ptr, ptr @alias_pairs, align 8, !tbaa !183
  %69 = load i32, ptr %68, align 8, !tbaa !472
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !472
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %68, i64 0, i32 2, i64 %71
  store ptr %0, ptr %72, align 8, !tbaa !474
  %73 = load ptr, ptr %3, align 8, !tbaa !183
  %74 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %68, i64 0, i32 2, i64 %71, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !476
  br label %75

75:                                               ; preds = %67, %55
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_assemble_visibility(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = tail call ptr @decl_assembler_name(ptr noundef %0) #34
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @default_assemble_visibility.visibility_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.100, ptr noundef %8)
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %11, ptr noundef %5)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @supports_one_only() local_unnamed_addr #26 !prof !182 {
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_varasm_once() local_unnamed_addr #9 !prof !337 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @section_entry_hash, ptr noundef nonnull @section_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  store ptr %1, ptr @section_htab, align 8, !tbaa !183
  %2 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @object_block_entry_hash, ptr noundef nonnull @object_block_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  store ptr %2, ptr @object_block_htab, align 8, !tbaa !183
  %3 = tail call ptr @htab_create_alloc(i64 noundef 1009, ptr noundef nonnull @const_desc_hash, ptr noundef nonnull @const_desc_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  store ptr %3, ptr @const_desc_htab, align 8, !tbaa !183
  %4 = tail call i32 @new_alias_set() #34
  store i32 %4, ptr @const_alias_set, align 4, !tbaa !198
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  %6 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @const_desc_rtx_hash, ptr noundef nonnull @const_desc_rtx_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #34
  %7 = getelementptr inbounds %struct.rtx_constant_pool, ptr %5, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !428
  %8 = getelementptr inbounds %struct.rtx_constant_pool, ptr %5, i64 0, i32 3
  store i64 0, ptr %8, align 8, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %5, ptr @shared_constant_pool, align 8, !tbaa !183
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 256, ptr %9, align 8, !tbaa !194
  %10 = getelementptr inbounds %struct.unnamed_section, ptr %9, i64 0, i32 1
  store ptr @output_section_asm_op, ptr %10, align 8, !tbaa !194
  %11 = getelementptr inbounds %struct.unnamed_section, ptr %9, i64 0, i32 2
  store ptr @.str.101, ptr %11, align 8, !tbaa !194
  %12 = load ptr, ptr @unnamed_sections, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.unnamed_section, ptr %9, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !194
  store ptr %9, ptr @unnamed_sections, align 8, !tbaa !183
  store ptr %9, ptr @text_section, align 8, !tbaa !183
  %14 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 512, ptr %14, align 8, !tbaa !194
  %15 = getelementptr inbounds %struct.unnamed_section, ptr %14, i64 0, i32 1
  store ptr @output_section_asm_op, ptr %15, align 8, !tbaa !194
  %16 = getelementptr inbounds %struct.unnamed_section, ptr %14, i64 0, i32 2
  store ptr @.str.102, ptr %16, align 8, !tbaa !194
  %17 = load ptr, ptr @unnamed_sections, align 8, !tbaa !183
  %18 = getelementptr inbounds %struct.unnamed_section, ptr %14, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !194
  store ptr %14, ptr @unnamed_sections, align 8, !tbaa !183
  store ptr %14, ptr @data_section, align 8, !tbaa !183
  %19 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 0, ptr %19, align 8, !tbaa !194
  %20 = getelementptr inbounds %struct.unnamed_section, ptr %19, i64 0, i32 1
  store ptr @output_section_asm_op, ptr %20, align 8, !tbaa !194
  %21 = getelementptr inbounds %struct.unnamed_section, ptr %19, i64 0, i32 2
  store ptr @.str.103, ptr %21, align 8, !tbaa !194
  %22 = load ptr, ptr @unnamed_sections, align 8, !tbaa !183
  %23 = getelementptr inbounds %struct.unnamed_section, ptr %19, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !194
  store ptr %19, ptr @unnamed_sections, align 8, !tbaa !183
  store ptr %19, ptr @readonly_data_section, align 8, !tbaa !183
  %24 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 8704, ptr %24, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.unnamed_section, ptr %24, i64 0, i32 1
  store ptr @output_section_asm_op, ptr %25, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.unnamed_section, ptr %24, i64 0, i32 2
  store ptr @.str.104, ptr %26, align 8, !tbaa !194
  %27 = load ptr, ptr @unnamed_sections, align 8, !tbaa !183
  %28 = getelementptr inbounds %struct.unnamed_section, ptr %24, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !194
  store ptr %24, ptr @unnamed_sections, align 8, !tbaa !183
  store ptr %24, ptr @bss_section, align 8, !tbaa !183
  %29 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 12591616, ptr %29, align 8, !tbaa !194
  %30 = getelementptr inbounds %struct.noswitch_section, ptr %29, i64 0, i32 1
  store ptr @emit_tls_common, ptr %30, align 8, !tbaa !194
  store ptr %29, ptr @tls_comm_section, align 8, !tbaa !183
  %31 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 12591616, ptr %31, align 8, !tbaa !194
  %32 = getelementptr inbounds %struct.noswitch_section, ptr %31, i64 0, i32 1
  store ptr @emit_local, ptr %32, align 8, !tbaa !194
  store ptr %31, ptr @lcomm_section, align 8, !tbaa !183
  %33 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 12591616, ptr %33, align 8, !tbaa !194
  %34 = getelementptr inbounds %struct.noswitch_section, ptr %33, i64 0, i32 1
  store ptr @emit_common, ptr %34, align 8, !tbaa !194
  store ptr %33, ptr @comm_section, align 8, !tbaa !183
  %35 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #34
  store i32 4203008, ptr %35, align 8, !tbaa !194
  %36 = getelementptr inbounds %struct.noswitch_section, ptr %35, i64 0, i32 1
  store ptr @emit_bss, ptr %36, align 8, !tbaa !194
  store ptr %35, ptr @bss_noswitch_section, align 8, !tbaa !183
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 18), align 8, !tbaa !483
  tail call void %37() #34, !prof !484
  %38 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42, !prof !293

40:                                               ; preds = %0
  %41 = load ptr, ptr @text_section, align 8, !tbaa !183
  store ptr %41, ptr @readonly_data_section, align 8, !tbaa !183
  br label %42

42:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @section_entry_hash(ptr nocapture noundef readonly %0) #9 !prof !182 {
  %2 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = tail call i32 @htab_hash_string(ptr noundef %3) #34
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @section_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !255 !PGOFuncName !485 {
  %3 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: cold nounwind uwtable
define internal i32 @object_block_entry_hash(ptr nocapture noundef readonly %0) #9 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !439
  %3 = load i32, ptr %2, align 8, !tbaa !194
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.named_section, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = tail call i32 @htab_hash_string(ptr noundef %8) #34
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %9, %6 ], [ %3, %1 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @object_block_entry_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #27 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !439
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @const_desc_hash(ptr nocapture noundef readonly %0) #27 !prof !182 {
  %2 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !410
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @const_desc_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !486 !PGOFuncName !487 {
  %3 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !410
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !410
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14, !prof !488

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !408
  %11 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !408
  %13 = tail call fastcc i32 @compare_constant(ptr noundef %10, ptr noundef %12)
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ 0, %2 ]
  ret i32 %15
}

declare i32 @new_alias_set() local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @output_section_asm_op(ptr noundef %0) #18 !prof !489 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.161, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @emit_tls_common(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #9 !prof !182 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1)
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !194
  %11 = lshr i32 %10, 3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %11)
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @emit_local(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #9 !prof !182 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %6 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 8, i64 1, ptr %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1)
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %9 = tail call i32 @fputc(i32 10, ptr %8)
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %11 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 7, i64 1, ptr %10)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %12, ptr noundef %1)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !194
  %16 = lshr i32 %15, 3
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %16)
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @emit_common(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #9 !prof !182 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %6 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 7, i64 1, ptr %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1)
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !194
  %11 = lshr i32 %10, 3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %11)
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @emit_bss(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #9 !prof !182 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !194
  %8 = load ptr, ptr @bss_section, align 8, !tbaa !183
  tail call void @switch_to_section(ptr noundef %8)
  %9 = sdiv i32 %7, 8
  %10 = sext i32 %9 to i64
  %11 = tail call i32 @floor_log2(i64 noundef %10) #34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @floor_log2(i64 noundef %10) #34
  %15 = shl nuw i32 1, %14
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.57, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %4
  store ptr %0, ptr @last_assemble_variable_decl, align 8, !tbaa !183
  %18 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 7, i64 1, ptr %5)
  tail call void @assemble_name(ptr noundef %5, ptr noundef %1)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %5)
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.170)
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  store i32 0, ptr @size_directive_output, align 4, !tbaa !198
  %22 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !198
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne ptr %0, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  store i32 1, ptr @size_directive_output, align 4, !tbaa !198
  %31 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = tail call i64 @int_size_in_bytes(ptr noundef %32) #34
  %34 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 7, i64 1, ptr %5)
  tail call void @assemble_name(ptr noundef %5, ptr noundef %1)
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.171, i64 noundef %33)
  br label %36

36:                                               ; preds = %17, %26, %30
  tail call void @assemble_name(ptr noundef %5, ptr noundef %1)
  %37 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %5)
  %38 = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %38)
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @decl_default_tls_model(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !385
  %3 = tail call zeroext i8 %2(ptr noundef %0) #34
  %4 = load i32, ptr @flag_shlib, align 4, !tbaa !198
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = icmp eq i8 %3, 0
  %8 = select i1 %7, i32 4, i32 5
  br label %15

9:                                                ; preds = %1
  %10 = load i32, ptr @optimize, align 4, !tbaa !198
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i8 %3, 0
  %13 = select i1 %11, i1 %12, i1 false
  %14 = select i1 %13, i32 3, i32 2
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = load i32, ptr @flag_tls_default, align 4, !tbaa !198
  %18 = tail call i32 @llvm.umax.i32(i32 %16, i32 %17)
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @default_section_type_flags(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = icmp ne ptr %0, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @categorize_decl_for_section(ptr noundef nonnull %0, i32 noundef %2), !range !490
  %11 = add nsw i32 %10, -6
  %12 = icmp ult i32 %11, -5
  br i1 %12, label %13, label %31

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !183
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr @cfun, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  %19 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %19)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22, %13
  %26 = or i1 %4, %18
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.7)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %27
  br label %31

31:                                               ; preds = %27, %22, %9, %5, %30
  %32 = phi i32 [ 512, %30 ], [ 256, %5 ], [ 0, %9 ], [ 256, %22 ], [ 256, %27 ]
  br i1 %4, label %33, label %39

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !194
  %36 = icmp eq ptr %35, null
  %37 = or disjoint i32 %32, 2048
  %38 = select i1 %36, i32 %32, i32 %37
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi i32 [ %32, %31 ], [ %38, %33 ]
  br i1 %4, label %41, label %52

41:                                               ; preds = %39
  %42 = load i64, ptr %0, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 49152
  %49 = icmp eq i32 %48, 0
  %50 = or i32 %40, 262656
  %51 = select i1 %49, i32 %40, i32 %50
  br label %52

52:                                               ; preds = %45, %41, %39
  %53 = phi i32 [ %40, %41 ], [ %40, %39 ], [ %51, %45 ]
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.105)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.106, i64 noundef 5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.107, i64 noundef 16)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.108)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.109, i64 noundef 6)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.110, i64 noundef 17)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65, %62, %59, %56, %52
  %72 = or i32 %53, 8192
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %72, %71 ], [ %53, %68 ]
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.111)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.112, i64 noundef 7)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.113, i64 noundef 17)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %77, %73
  %84 = or i32 %74, 262144
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %84, %83 ], [ %74, %80 ]
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.114)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.115, i64 noundef 6)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.116, i64 noundef 17)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %89, %85
  %96 = or i32 %86, 270336
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %96, %95 ], [ %86, %92 ]
  %99 = and i32 %98, 270592
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.117)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.118)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.119)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %104, %101
  %111 = or i32 %98, 524288
  br label %112

112:                                              ; preds = %110, %107, %97
  %113 = phi i32 [ %98, %97 ], [ %111, %110 ], [ %98, %107 ]
  ret i32 %113
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @decl_readonly_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1), !range !490
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 5
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @have_global_bss_p() local_unnamed_addr #15 !prof !182 {
  %1 = load ptr, ptr @bss_noswitch_section, align 8, !tbaa !183
  %2 = icmp ne ptr %1, null
  %3 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 111), align 2
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_no_named_section(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #9 !prof !182 {
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6089, ptr noundef nonnull @.str.5) #34
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @default_elf_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #16 !prof !231 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #34
  %5 = and i32 %1, 2048
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 1050624
  %8 = icmp eq i32 %7, 1048576
  br i1 %8, label %9, label %12, !prof !232

9:                                                ; preds = %3
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.120, ptr noundef %0)
  br label %91

12:                                               ; preds = %3
  %13 = and i32 %1, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !491

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 97, ptr %4, align 1, !tbaa !194
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %4, %12 ], [ %16, %15 ]
  %19 = and i32 %1, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !233

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 119, ptr %18, align 1, !tbaa !194
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %18, %17 ]
  %25 = and i32 %1, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !233

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 120, ptr %24, align 1, !tbaa !194
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %24, %23 ]
  %31 = and i32 %1, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !233

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 115, ptr %30, align 1, !tbaa !194
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %30, %29 ]
  %37 = and i32 %1, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !491

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 77, ptr %36, align 1, !tbaa !194
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %36, %35 ]
  %43 = and i32 %1, 65536
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !491

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 83, ptr %42, align 1, !tbaa !194
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %42, %41 ]
  %49 = and i32 %1, 262144
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !233

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 84, ptr %48, align 1, !tbaa !194
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %52, %51 ], [ %48, %47 ]
  br i1 %6, label %57, label %55, !prof !233

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 71, ptr %54, align 1, !tbaa !194
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %56, %55 ], [ %54, %53 ]
  store i8 0, ptr %58, align 1, !tbaa !194
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.121, ptr noundef %0, ptr noundef nonnull %4)
  %61 = and i32 %1, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88, !prof !233

63:                                               ; preds = %57
  %64 = and i32 %1, 8192
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr @.str.123, ptr @.str.122, !prof !233
  %67 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.124, ptr noundef nonnull %66)
  %69 = and i32 %1, 255
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !491

71:                                               ; preds = %63
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.125, i32 noundef %69)
  br label %74

74:                                               ; preds = %71, %63
  br i1 %6, label %88, label %75, !prof !233

75:                                               ; preds = %74
  %76 = load i64, ptr %2, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 1
  %79 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  br i1 %78, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !194
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %82, %80 ], [ %2, %75 ]
  %85 = getelementptr inbounds %struct.tree_identifier, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !194
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.126, ptr noundef %86)
  br label %88

88:                                               ; preds = %83, %74, %57
  %89 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %90 = call i32 @putc(i32 noundef 10, ptr noundef %89)
  br label %91

91:                                               ; preds = %88, %9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @default_coff_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #16 !prof !182 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #34
  %5 = and i32 %1, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 119, ptr %4, align 1, !tbaa !194
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %4, %3 ]
  %11 = and i32 %1, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 120, ptr %10, align 1, !tbaa !194
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %10, %9 ]
  store i8 0, ptr %16, align 1, !tbaa !194
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.127, ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @default_pe_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #16 !prof !182 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #34
  %5 = and i32 %1, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 119, ptr %4, align 1, !tbaa !194
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %4, %3 ]
  %11 = and i32 %1, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 120, ptr %10, align 1, !tbaa !194
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ %10, %9 ]
  store i8 0, ptr %16, align 1, !tbaa !194
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.127, ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #34
  %19 = and i32 %1, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %23 = select i1 %12, ptr @.str.130, ptr @.str.129
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.128, ptr noundef nonnull %23)
  br label %25

25:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_select_section(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !198
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = tail call i32 @categorize_decl_for_section(ptr noundef nonnull %0, i32 noundef %1), !range !490
  %11 = add nsw i32 %10, -6
  %12 = icmp ult i32 %11, -5
  br i1 %12, label %28, label %29

13:                                               ; preds = %3
  %14 = trunc i64 %4 to i16
  switch i16 %14, label %23 [
    i16 51, label %15
    i16 28, label %29
  ]

15:                                               ; preds = %13
  %16 = load i32, ptr @flag_pic, align 4, !tbaa !198
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne i32 %1, 0
  %19 = and i1 %18, %17
  %20 = and i64 %4, 1245184
  %21 = icmp ne i64 %20, 1179648
  %22 = or i1 %21, %19
  br i1 %22, label %28, label %29

23:                                               ; preds = %13
  %24 = load i32, ptr @flag_pic, align 4, !tbaa !198
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32 %1, 0
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %29

28:                                               ; preds = %15, %23, %9
  br label %29

29:                                               ; preds = %23, %15, %13, %9, %28
  %30 = phi ptr [ @data_section, %28 ], [ @readonly_data_section, %9 ], [ @readonly_data_section, %13 ], [ @readonly_data_section, %15 ], [ @readonly_data_section, %23 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !183
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !368 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %71 [
    i16 29, label %117
    i16 28, label %5
    i16 32, label %9
    i16 51, label %61
  ], !prof !492

5:                                                ; preds = %2
  %6 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1, !prof !412
  br label %117

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14, !prof !265
  br i1 %15, label %71, label %16, !prof !265

16:                                               ; preds = %9
  %17 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !198
  %18 = icmp ne i32 %17, 0
  %19 = and i64 %3, 1048576
  %20 = icmp eq i64 %19, 0
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %25, !prof !365

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %11) #34
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %71, !prof !332

25:                                               ; preds = %16, %22
  %26 = load i64, ptr %0, align 8
  %27 = and i64 %26, 1114112
  %28 = icmp eq i64 %27, 1048576
  br i1 %28, label %29, label %34, !prof !332

29:                                               ; preds = %25
  %30 = load ptr, ptr %10, align 8, !tbaa !194
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 131072
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42, !prof !357

34:                                               ; preds = %29, %25
  %35 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !493
  %36 = tail call i32 %35() #34
  %37 = and i32 %36, %1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = icmp eq i32 %1, 1
  %41 = select i1 %40, i32 8, i32 7
  br label %71

42:                                               ; preds = %29
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !493
  %44 = tail call i32 %43() #34, !prof !494
  %45 = and i32 %44, %1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !332

47:                                               ; preds = %42
  %48 = icmp eq i32 %1, 1
  %49 = select i1 %48, i32 10, i32 9
  br label %71

50:                                               ; preds = %42
  %51 = icmp ne i32 %1, 0
  %52 = load i32, ptr @flag_merge_constants, align 4
  %53 = icmp slt i32 %52, 2
  %54 = select i1 %51, i1 true, i1 %53, !prof !357
  br i1 %54, label %71, label %55, !prof !332

55:                                               ; preds = %50
  %56 = load ptr, ptr %10, align 8, !tbaa !194
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 28
  %60 = select i1 %59, i32 3, i32 4
  br label %71

61:                                               ; preds = %2
  %62 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !493
  %63 = tail call i32 %62() #34
  %64 = and i32 %63, %1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, ptr %0, align 8
  %68 = and i64 %67, 196608
  %69 = icmp eq i64 %68, 131072
  %70 = select i1 %69, i32 1, i32 6
  br label %71

71:                                               ; preds = %9, %66, %2, %61, %55, %50, %34, %22, %47, %39
  %72 = phi i32 [ %41, %39 ], [ %49, %47 ], [ 13, %22 ], [ 6, %34 ], [ 1, %50 ], [ %60, %55 ], [ 6, %61 ], [ 1, %2 ], [ %70, %66 ], [ 13, %9 ]
  %73 = load i64, ptr %0, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 32
  br i1 %75, label %76, label %105, !prof !332

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 13
  %80 = and i32 %79, 7
  switch i32 %80, label %94 [
    i32 0, label %105
    i32 1, label %81
  ], !prof !495

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !194
  %84 = load ptr, ptr @emutls_object_type, align 8, !tbaa !183
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !496
  %88 = icmp eq ptr %87, null
  %89 = select i1 %88, i32 %72, i32 16
  br label %117

90:                                               ; preds = %81
  %91 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 5), align 8, !tbaa !497
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, i32 %72, i32 17
  br label %117

94:                                               ; preds = %76
  %95 = icmp eq i32 %72, 13
  br i1 %95, label %117, label %96

96:                                               ; preds = %94
  %97 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !198
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !194
  %102 = tail call zeroext i8 @initializer_zerop(ptr noundef %101) #34
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99, %96
  br label %117

105:                                              ; preds = %76, %71
  %106 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !498
  %107 = tail call zeroext i8 %106(ptr noundef nonnull %0) #34, !prof !499
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %117, label %109, !prof !332

109:                                              ; preds = %105
  %110 = icmp eq i32 %72, 13
  br i1 %110, label %117, label %111

111:                                              ; preds = %109
  %112 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 114), align 1, !tbaa !500
  %113 = icmp ne i8 %112, 0
  %114 = icmp eq i32 %72, 1
  %115 = and i1 %114, %113
  %116 = select i1 %115, i32 5, i32 11
  br label %117

117:                                              ; preds = %105, %90, %86, %104, %99, %94, %109, %111, %2, %5
  %118 = phi i32 [ 0, %2 ], [ %8, %5 ], [ 12, %104 ], [ %89, %86 ], [ %93, %90 ], [ 15, %99 ], [ 15, %94 ], [ 14, %109 ], [ %116, %111 ], [ %72, %105 ]
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bss_initializer_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !182 !PGOFuncName !501 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @global_trees, align 16
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6, !prof !265
  br i1 %7, label %19, label %8, !prof !265

8:                                                ; preds = %1
  %9 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !198
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !265

11:                                               ; preds = %8
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 1048576
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19, !prof !265

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %3) #34
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %8, %11, %15, %1
  %20 = phi i8 [ 1, %1 ], [ 0, %11 ], [ 0, %8 ], [ %18, %15 ]
  ret i8 %20
}

declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @default_elf_select_section(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 !prof !368 {
  %4 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1), !range !490
  switch i32 %4, label %37 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %14
    i32 5, label %38
    i32 6, label %20
    i32 7, label %22
    i32 8, label %23
    i32 9, label %24
    i32 10, label %25
    i32 11, label %26
    i32 12, label %27
    i32 13, label %28
    i32 14, label %31
    i32 15, label %32
    i32 16, label %33
    i32 17, label %35
  ], !prof !502

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6349, ptr noundef nonnull @.str.5) #34
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  br label %47

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @mergeable_string_section(ptr noundef %0, i64 noundef %2)
  br label %47

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = tail call fastcc ptr @mergeable_string_section(ptr noundef %12, i64 noundef %2)
  br label %47

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = tail call ptr @mergeable_constant_section(i32 noundef %18, i64 noundef %2, i32 noundef 0)
  br label %47

20:                                               ; preds = %3
  %21 = load ptr, ptr @data_section, align 8, !tbaa !183
  br label %47

22:                                               ; preds = %3
  br label %38

23:                                               ; preds = %3
  br label %38

24:                                               ; preds = %3
  br label %38

25:                                               ; preds = %3
  br label %38

26:                                               ; preds = %3
  br label %38

27:                                               ; preds = %3
  br label %38

28:                                               ; preds = %3
  %29 = load ptr, ptr @bss_section, align 8, !tbaa !183
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %47

31:                                               ; preds = %3
  br label %38

32:                                               ; preds = %3
  br label %38

33:                                               ; preds = %3
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !496
  br label %38

35:                                               ; preds = %3
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 3), align 8, !tbaa !503
  br label %38

37:                                               ; preds = %3
  unreachable

38:                                               ; preds = %28, %3, %35, %33, %32, %31, %27, %26, %25, %24, %23, %22
  %39 = phi ptr [ %36, %35 ], [ %34, %33 ], [ @.str.114, %32 ], [ @.str.108, %31 ], [ @.str.111, %27 ], [ @.str.136, %26 ], [ @.str.135, %25 ], [ @.str.134, %24 ], [ @.str.133, %23 ], [ @.str.132, %22 ], [ @.str.131, %3 ], [ @.str.105, %28 ]
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !198
  %44 = icmp eq i32 %43, 3
  %45 = select i1 %44, ptr %0, ptr null
  %46 = tail call ptr @get_named_section(ptr noundef %45, ptr noundef %39, i32 noundef %1)
  br label %47

47:                                               ; preds = %28, %38, %20, %14, %10, %8, %6
  %48 = phi ptr [ %46, %38 ], [ %21, %20 ], [ %19, %14 ], [ %13, %10 ], [ %9, %8 ], [ %7, %6 ], [ %29, %28 ]
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mergeable_string_section(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #12 !prof !479 !PGOFuncName !504 {
  %3 = alloca [30 x i8], align 16
  %4 = load i32, ptr @flag_merge_constants, align 4, !tbaa !198
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %93, label %6, !prof !283

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 28
  br i1 %9, label %10, label %93, !prof !412

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 15
  %16 = icmp ult i64 %1, 257
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %93, !prof !412

18:                                               ; preds = %10
  %19 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %12) #34
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %93, !prof !412

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !194
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %93, label %26, !prof !283

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #34
  %27 = load ptr, ptr %11, align 8, !tbaa !194
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !194
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35, !prof !283

33:                                               ; preds = %26
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #34
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !194
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = add i8 %44, -1
  %48 = icmp ult i8 %47, 32
  %49 = tail call i32 @llvm.ctpop.i32(i32 %46), !range !505
  %50 = icmp ult i32 %49, 2
  %51 = select i1 %48, i1 %50, i1 false, !prof !412
  br i1 %51, label %52, label %90, !prof !412

52:                                               ; preds = %40
  %53 = zext nneg i32 %46 to i64
  %54 = tail call i64 @llvm.umax.i64(i64 %53, i64 %1)
  %55 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %56 = icmp eq i8 %44, 0
  %57 = zext i8 %44 to i64
  %58 = zext i8 %44 to i64
  br label %59

59:                                               ; preds = %52, %76
  %60 = phi i64 [ 0, %52 ], [ %77, %76 ]
  br i1 %56, label %73, label %61, !prof !506

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %55, i64 %60
  br label %63

63:                                               ; preds = %61, %68
  %64 = phi i64 [ 0, %61 ], [ %69, %68 ]
  %65 = getelementptr i8, ptr %62, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !194
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71, !prof !507

68:                                               ; preds = %63
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %58
  br i1 %70, label %73, label %63, !prof !508, !llvm.loop !509

71:                                               ; preds = %63
  %72 = trunc i64 %64 to i32
  br label %73

73:                                               ; preds = %71, %68, %59
  %74 = phi i32 [ 0, %59 ], [ %72, %71 ], [ %45, %68 ]
  %75 = icmp eq i32 %74, %45
  br i1 %75, label %79, label %76, !prof !507

76:                                               ; preds = %73
  %77 = add nuw nsw i64 %60, %57
  %78 = icmp slt i64 %77, %19
  br i1 %78, label %59, label %79, !prof !510, !llvm.loop !511

79:                                               ; preds = %76, %73
  %80 = phi i64 [ %77, %76 ], [ %60, %73 ]
  %81 = zext i8 %44 to i64
  %82 = sub nsw i64 %19, %81
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %90, !prof !412

84:                                               ; preds = %79
  %85 = lshr i64 %54, 3
  %86 = trunc i64 %85 to i32
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %45, i32 noundef %86)
  %88 = or disjoint i32 %45, 98304
  %89 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef %88, ptr noundef null)
  br label %90

90:                                               ; preds = %40, %79, %84
  %91 = phi ptr [ %89, %84 ], [ undef, %79 ], [ undef, %40 ]
  %92 = phi i1 [ false, %84 ], [ true, %79 ], [ true, %40 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #34
  br i1 %92, label %93, label %95, !prof !283

93:                                               ; preds = %90, %21, %18, %10, %6, %2
  %94 = load ptr, ptr @readonly_data_section, align 8, !tbaa !183
  br label %95

95:                                               ; preds = %90, %93
  %96 = phi ptr [ %94, %93 ], [ %91, %90 ]
  ret ptr %96
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_unique_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !182 {
  %3 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1), !range !490
  switch i32 %3, label %20 [
    i32 0, label %21
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 13, label %12
    i32 14, label %13
    i32 12, label %14
    i32 15, label %15
    i32 16, label %16
    i32 17, label %18
  ]

4:                                                ; preds = %2, %2, %2, %2
  br label %21

5:                                                ; preds = %2
  br label %21

6:                                                ; preds = %2
  br label %21

7:                                                ; preds = %2
  br label %21

8:                                                ; preds = %2
  br label %21

9:                                                ; preds = %2
  br label %21

10:                                               ; preds = %2
  br label %21

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  br label %21

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  br label %21

15:                                               ; preds = %2
  br label %21

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !496
  br label %21

18:                                               ; preds = %2
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 3), align 8, !tbaa !503
  br label %21

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %2, %18, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %22 = phi ptr [ %19, %18 ], [ %17, %16 ], [ @.str.114, %15 ], [ @.str.111, %14 ], [ @.str.108, %13 ], [ @.str.105, %12 ], [ @.str.136, %11 ], [ @.str.135, %10 ], [ @.str.134, %9 ], [ @.str.133, %8 ], [ @.str.132, %7 ], [ @.str.142, %6 ], [ @.str.131, %5 ], [ @.str.8, %4 ], [ @.str.138, %2 ]
  %23 = tail call ptr @decl_assembler_name(ptr noundef %0) #34
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %27 = tail call ptr %26(ptr noundef %25) #34
  %28 = tail call i64 (ptr, ...) @concat_length(ptr noundef nonnull @.str.153, ptr noundef %22, ptr noundef nonnull @.str.154, ptr noundef %27, ptr noundef null) #34
  %29 = add i64 %28, 1
  %30 = alloca i8, i64 %29, align 16
  store ptr %30, ptr @libiberty_concat_ptr, align 8, !tbaa !183
  %31 = call ptr (ptr, ...) @concat_copy2(ptr noundef nonnull @.str.153, ptr noundef %22, ptr noundef nonnull @.str.154, ptr noundef %27, ptr noundef null) #34
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31)
  %33 = trunc i64 %32 to i32
  %34 = call ptr @build_string(i32 noundef %33, ptr noundef %31) #34
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !194
  ret void
}

declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_select_rtx_section(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %1, ptr %4, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %11 [
    i16 35, label %8
    i16 45, label %8
    i16 44, label %8
  ]

8:                                                ; preds = %3, %3, %3
  store i32 0, ptr %5, align 4, !tbaa !198
  %9 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @compute_reloc_for_rtx_1, ptr noundef nonnull %5) #34
  %10 = load i32, ptr %5, align 4, !tbaa !198
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !493
  %14 = call i32 %13() #34
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @readonly_data_section, align 8
  %18 = load ptr, ptr @data_section, align 8
  %19 = select i1 %16, ptr %17, ptr %18
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_elf_select_rtx_section(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %1, ptr %4, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %11 [
    i16 35, label %8
    i16 45, label %8
    i16 44, label %8
  ]

8:                                                ; preds = %3, %3, %3
  store i32 0, ptr %5, align 4, !tbaa !198
  %9 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @compute_reloc_for_rtx_1, ptr noundef nonnull %5) #34
  %10 = load i32, ptr %5, align 4, !tbaa !198
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !493
  %14 = call i32 %13() #34
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %12, 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 31), align 8, !tbaa !243
  br i1 %18, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 %19(ptr noundef null, ptr noundef nonnull @.str.135, i32 noundef 1) #34
  %22 = call ptr @get_section(ptr noundef nonnull @.str.135, i32 noundef %21, ptr noundef null)
  br label %28

23:                                               ; preds = %17
  %24 = call i32 %19(ptr noundef null, ptr noundef nonnull @.str.134, i32 noundef 3) #34
  %25 = call ptr @get_section(ptr noundef nonnull @.str.134, i32 noundef %24, ptr noundef null)
  br label %28

26:                                               ; preds = %11
  %27 = call ptr @mergeable_constant_section(i32 noundef %0, i64 noundef %2, i32 noundef 0)
  br label %28

28:                                               ; preds = %26, %23, %20
  %29 = phi ptr [ %22, %20 ], [ %25, %23 ], [ %27, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local void @default_encode_section_info(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 !prof !512 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %64, !prof !513

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %13, label %64, !prof !513

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !194
  %16 = and i32 %15, 128
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 29
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !385
  %23 = tail call zeroext i8 %22(ptr noundef nonnull %0) #34, !prof !514
  %24 = icmp eq i8 %23, 0
  %25 = or disjoint i32 %21, 2
  %26 = select i1 %24, i32 %21, i32 %25, !prof !515
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 32
  br i1 %29, label %30, label %39, !prof !516

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 13
  %34 = and i32 %33, 7
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %39, !prof !252

36:                                               ; preds = %30
  %37 = shl nuw nsw i32 %34, 3
  %38 = or disjoint i32 %37, %26
  br label %45

39:                                               ; preds = %30, %13
  %40 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !498
  %41 = tail call zeroext i8 %40(ptr noundef nonnull %0) #34, !prof !517
  %42 = icmp eq i8 %41, 0
  %43 = or disjoint i32 %26, 4
  %44 = select i1 %42, i32 %26, i32 %43, !prof !513
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i32 [ %38, %36 ], [ %44, %39 ]
  %47 = load i64, ptr %0, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !198
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %62, !prof !518

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 33554432
  %56 = icmp eq i64 %55, 0
  %57 = and i64 %47, 134217728
  %58 = icmp eq i64 %57, 0
  %59 = or i1 %58, %56
  %60 = or i32 %46, 64
  %61 = select i1 %59, i32 %46, i32 %60, !prof !519
  br label %62

62:                                               ; preds = %52, %45
  %63 = phi i32 [ %46, %45 ], [ %61, %52 ]
  store i32 %63, ptr %14, align 8, !tbaa !194
  br label %64

64:                                               ; preds = %7, %3, %62
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @default_strip_name_encoding(ptr noundef readonly %0) local_unnamed_addr #28 !prof !337 {
  %2 = load i8, ptr %0, align 1, !tbaa !194
  %3 = icmp eq i8 %2, 42
  %4 = zext i1 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_asm_output_anchor(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !182 {
  %2 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #34
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !194
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.155, i64 noundef %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %8 = tail call i64 @fwrite(ptr nonnull @.str.156, i64 6, i64 1, ptr %7)
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %10 = load ptr, ptr %3, align 8, !tbaa !194
  tail call void @assemble_name(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %12 = tail call i32 @fputc(i32 44, ptr %11)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  call void @assemble_name(ptr noundef %13, ptr noundef nonnull %2)
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %15 = call i32 @fputc(i32 10, ptr %14)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #34
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @default_use_anchors_for_symbol_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !182 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = load ptr, ptr %3, align 8, !tbaa !439
  %5 = load i32, ptr %4, align 8, !tbaa !194
  %6 = and i32 %5, 36864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 67108864
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !198
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !385
  %26 = tail call zeroext i8 %25(ptr noundef nonnull %16) #34
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !498
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %16) #34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %18, %15
  br label %33

33:                                               ; preds = %28, %24, %1, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %1 ], [ 0, %24 ], [ 0, %28 ]
  ret i8 %34
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @default_binds_local_p(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !520 {
  %2 = load i32, ptr @flag_shlib, align 4, !tbaa !198
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !198
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %51, !prof !521

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %10) #34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %51, !prof !522

13:                                               ; preds = %8
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %51, label %17, !prof !523

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 3072
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %51, !prof !524

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 33554432
  %29 = icmp eq i64 %28, 0
  %30 = and i1 %23, %29
  %31 = zext i1 %29 to i8
  br i1 %30, label %32, label %51, !prof !525

32:                                               ; preds = %25
  %33 = and i32 %19, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51, !prof !526

35:                                               ; preds = %32
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %40, label %37, !prof !526

37:                                               ; preds = %35
  %38 = load i32, ptr @flag_whole_program, align 4, !tbaa !198
  %39 = trunc i32 %38 to i8
  br label %51

40:                                               ; preds = %35
  %41 = and i32 %19, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !prof !526

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr @global_trees, align 16
  %48 = icmp eq ptr %45, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %40
  br label %51

51:                                               ; preds = %1, %8, %13, %17, %25, %32, %37, %43, %50
  %52 = phi i8 [ %39, %37 ], [ 1, %50 ], [ 1, %1 ], [ 0, %8 ], [ 1, %13 ], [ 1, %17 ], [ %31, %25 ], [ 0, %32 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @default_binds_local_p_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !182 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !198
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %51, !prof !521

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %10) #34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %51, !prof !522

13:                                               ; preds = %8
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %51, label %17, !prof !523

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 3072
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %51, !prof !524

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 33554432
  %29 = icmp eq i64 %28, 0
  %30 = and i1 %23, %29
  %31 = zext i1 %29 to i8
  br i1 %30, label %32, label %51, !prof !525

32:                                               ; preds = %25
  %33 = and i32 %19, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51, !prof !526

35:                                               ; preds = %32
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %40, label %37, !prof !526

37:                                               ; preds = %35
  %38 = load i32, ptr @flag_whole_program, align 4, !tbaa !198
  %39 = trunc i32 %38 to i8
  br label %51

40:                                               ; preds = %35
  %41 = and i32 %19, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !prof !526

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr @global_trees, align 16
  %48 = icmp eq ptr %45, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %40
  br label %51

51:                                               ; preds = %25, %43, %32, %17, %13, %8, %2, %37, %50
  %52 = phi i8 [ %39, %37 ], [ 1, %50 ], [ 1, %2 ], [ 0, %8 ], [ 1, %13 ], [ 1, %17 ], [ %31, %25 ], [ 0, %32 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: nounwind uwtable
define dso_local void @default_globalize_label(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !330 {
  %3 = alloca ptr, align 8
  %4 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 7, i64 1, ptr %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !244
  %6 = icmp eq ptr %5, @default_strip_name_encoding
  br i1 %6, label %7, label %12, !prof !326

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !194
  %9 = icmp eq i8 %8, 42
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  br label %14

12:                                               ; preds = %2
  %13 = tail call ptr %5(ptr noundef %1) #34
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %11, %7 ]
  %16 = tail call ptr @maybe_get_identifier(ptr noundef %15) #34
  store ptr %16, ptr %3, align 8, !tbaa !183
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18, !prof !327

18:                                               ; preds = %14
  %19 = load i64, ptr %16, align 8
  %20 = or i64 %19, 67108864
  store i64 %20, ptr %16, align 8
  %21 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3)
  %22 = load ptr, ptr %3, align 8, !tbaa !183
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %27, label %24, !prof !328

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %26, %24 ], [ %1, %18 ]
  %29 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !328

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #34
  br label %33

33:                                               ; preds = %32, %27, %14
  %34 = phi ptr [ %1, %14 ], [ %28, %27 ], [ %28, %32 ]
  %35 = load i8, ptr %34, align 1, !tbaa !194
  %36 = icmp eq i8 %35, 42
  br i1 %36, label %37, label %40, !prof !327

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = tail call i32 @fputs(ptr noundef nonnull %38, ptr noundef %0)
  br label %41

40:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %34) #34
  br label %41

41:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  %42 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @default_globalize_decl_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !330 {
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !357

6:                                                ; preds = %2
  tail call void @make_decl_rtl(ptr noundef %1)
  %7 = load ptr, ptr %3, align 8, !tbaa !194
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !527
  tail call void %14(ptr noundef %0, ptr noundef %13) #34, !prof !528
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @default_emit_unwind_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #26 !prof !182 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @default_emit_except_table_label(ptr nocapture noundef readnone %0) local_unnamed_addr #26 !prof !182 {
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @default_internal_label(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 !prof !529 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %5 = add i64 %4, 40
  %6 = alloca i8, i64 %5, align 16
  %7 = trunc i64 %2 to i32
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %1, i32 noundef %7)
  %9 = load i8, ptr %6, align 16, !tbaa !194
  %10 = icmp eq i8 %9, 42
  br i1 %10, label %11, label %14, !prof !530

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = call i32 @fputs(ptr noundef nonnull %12, ptr noundef %0)
  br label %15

14:                                               ; preds = %3
  call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %6) #34
  br label %15

15:                                               ; preds = %11, %14
  %16 = call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_file_start() local_unnamed_addr #9 !prof !337 {
  %1 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 116), align 1, !tbaa !531
  %2 = icmp eq i8 %1, 0
  %3 = load i32, ptr @flag_verbose_asm, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !295
  %6 = load i32, ptr @flag_debug_asm, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !295
  %9 = load i32, ptr @flag_dump_rtl_in_asm, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10, !prof !295
  br i1 %11, label %15, label %12, !prof !295

12:                                               ; preds = %0
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %14 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 8, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 117), align 8, !tbaa !532
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18, !prof !293

18:                                               ; preds = %15
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %20 = load ptr, ptr @main_input_filename, align 8, !tbaa !183
  tail call void @output_file_directive(ptr noundef %19, ptr noundef %20) #34
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare void @output_file_directive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @file_end_indicate_exec_stack() local_unnamed_addr #9 !prof !337 {
  %1 = load i32, ptr @trampolines_created, align 4, !tbaa !198
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 1024, i32 1280, !prof !295
  %4 = tail call ptr @get_section(ptr noundef nonnull @.str.160, i32 noundef %3, ptr noundef null)
  tail call void @switch_to_section(ptr noundef %4)
  ret void
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_section_anchor(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !182 {
  %4 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #34
  %5 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 44), align 8, !tbaa !533
  %6 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 43), align 8, !tbaa !534
  %7 = sub i64 %5, %6
  %8 = add i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr @ptr_mode, align 4, !tbaa !198
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !194
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = add nsw i32 %16, -1
  %18 = shl nuw i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %1, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = sub i64 %5, %1
  %23 = urem i64 %22, %8
  %24 = sub i64 %22, %23
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %19)
  %26 = sub i64 0, %25
  br label %33

27:                                               ; preds = %10
  %28 = sub i64 %1, %6
  %29 = urem i64 %28, %8
  %30 = sub i64 %28, %29
  %31 = add nsw i64 %19, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %3, %21, %27
  %34 = phi i64 [ %26, %21 ], [ %32, %27 ], [ 0, %3 ]
  %35 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !535
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %36, align 8, !tbaa !378
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %40, %68
  %44 = phi i32 [ %70, %68 ], [ 0, %40 ]
  %45 = phi i32 [ %69, %68 ], [ %41, %40 ]
  %46 = add i32 %44, %45
  %47 = lshr i32 %46, 1
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_rtx_base, ptr %36, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !183
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !194
  %53 = icmp sgt i64 %52, %34
  br i1 %53, label %68, label %54

54:                                               ; preds = %43
  %55 = icmp slt i64 %52, %34
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = add nuw i32 %47, 1
  br label %68

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load i32, ptr %59, align 8, !tbaa !194
  %61 = lshr i32 %60, 3
  %62 = and i32 %61, 7
  %63 = icmp ugt i32 %62, %2
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = icmp ult i32 %62, %2
  br i1 %65, label %66, label %104

66:                                               ; preds = %64
  %67 = add nuw i32 %47, 1
  br label %68

68:                                               ; preds = %58, %43, %56, %66
  %69 = phi i32 [ %45, %56 ], [ %45, %66 ], [ %47, %43 ], [ %47, %58 ]
  %70 = phi i32 [ %57, %56 ], [ %67, %66 ], [ %44, %43 ], [ %44, %58 ]
  %71 = icmp eq i32 %70, %69
  br i1 %71, label %72, label %43, !llvm.loop !536

72:                                               ; preds = %68, %40
  %73 = phi i32 [ 0, %40 ], [ %70, %68 ]
  %74 = load i32, ptr @anchor_labelno, align 4, !tbaa !198
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @anchor_labelno, align 4, !tbaa !198
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.162, i32 noundef %74)
  %77 = call ptr @ggc_alloc_string(ptr noundef nonnull %4, i32 noundef -1) #34
  %78 = call ptr @ggc_alloc_stat(i64 noundef 48) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %78, i8 0, i64 48, i1 false)
  store i32 1048621, ptr %78, align 8
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  store ptr %77, ptr %79, align 8, !tbaa !194
  %80 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 128, ptr %80, align 8, !tbaa !194
  %81 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 1
  store ptr %0, ptr %81, align 8, !tbaa !194
  %82 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 2
  store i64 %34, ptr %82, align 8, !tbaa !194
  %83 = shl i32 %2, 3
  %84 = or i32 %83, 386
  store i32 %84, ptr %80, align 8, !tbaa !194
  %85 = load ptr, ptr %35, align 8, !tbaa !183
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.VEC_rtx_base, ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !376
  %90 = load i32, ptr %85, align 8, !tbaa !378
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %72, %87
  %93 = call ptr @vec_gc_p_reserve(ptr noundef %85, i32 noundef 1) #34
  store ptr %93, ptr %35, align 8, !tbaa !183
  br label %94

94:                                               ; preds = %87, %92
  %95 = load ptr, ptr %35, align 8, !tbaa !183
  %96 = load i32, ptr %95, align 8, !tbaa !378
  %97 = zext i32 %73 to i64
  %98 = getelementptr inbounds %struct.VEC_rtx_base, ptr %95, i64 0, i32 2, i64 %97
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = add i32 %96, 1
  store i32 %100, ptr %95, align 8, !tbaa !378
  %101 = sub i32 %96, %73
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %99, ptr nonnull align 8 %98, i64 %103, i1 false)
  store ptr %78, ptr %98, align 8, !tbaa !183
  br label %104

104:                                              ; preds = %64, %94
  %105 = phi ptr [ %78, %94 ], [ %50, %64 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #34
  ret ptr %105
}

; Function Attrs: cold nounwind uwtable
define dso_local void @output_object_blocks() local_unnamed_addr #9 !prof !337 {
  %1 = load ptr, ptr @object_block_htab, align 8, !tbaa !183
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @output_object_block_htab, ptr noundef null) #34
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @output_object_block_htab(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.object_block, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !537
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !439
  tail call void @switch_to_section(ptr noundef %8)
  %9 = getelementptr inbounds %struct.object_block, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !375
  tail call void @assemble_align(i32 noundef %10)
  %11 = getelementptr inbounds %struct.object_block, ptr %3, i64 0, i32 4
  br label %12

12:                                               ; preds = %26, %7
  %13 = phi i32 [ 0, %7 ], [ %28, %26 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !535
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %14, align 8, !tbaa !378
  %18 = icmp ugt i32 %17, %13
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = zext i32 %13 to i64
  %21 = getelementptr inbounds %struct.VEC_rtx_base, ptr %14, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !183
  br label %23

23:                                               ; preds = %19, %16, %12
  %24 = phi ptr [ %22, %19 ], [ null, %16 ], [ null, %12 ]
  %25 = phi i1 [ false, %19 ], [ true, %16 ], [ true, %12 ]
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 36), align 8, !tbaa !538
  tail call void %27(ptr noundef %24) #34
  %28 = add i32 %13, 1
  br label %12, !llvm.loop !539

29:                                               ; preds = %23, %88
  %30 = phi i32 [ %91, %88 ], [ 0, %23 ]
  %31 = phi i64 [ %90, %88 ], [ 0, %23 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !537
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %32, align 8, !tbaa !378
  %36 = icmp ugt i32 %35, %30
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = zext i32 %30 to i64
  %39 = getelementptr inbounds %struct.VEC_rtx_base, ptr %32, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !183
  br label %41

41:                                               ; preds = %37, %34, %29
  %42 = phi ptr [ %40, %37 ], [ null, %34 ], [ null, %29 ]
  %43 = phi i1 [ false, %37 ], [ true, %34 ], [ true, %29 ]
  br i1 %43, label %92, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !194
  %47 = sub nsw i64 %46, %31
  tail call void @assemble_zeros(i64 noundef %47)
  %48 = load i64, ptr %45, align 8, !tbaa !194
  %49 = load i32, ptr %42, align 8
  %50 = and i32 %49, 67108864
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !194
  tail call fastcc void @output_constant_pool_1(ptr noundef %54, i32 noundef 1)
  %55 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !310
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !194
  %60 = zext i8 %59 to i64
  br label %88

61:                                               ; preds = %44
  %62 = and i32 %49, 1073741824
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !194
  %66 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !194
  br i1 %63, label %84, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !194
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !194
  %73 = tail call i32 @ix86_constant_alignment(ptr noundef %65, i32 noundef %72) #34
  tail call fastcc void @assemble_constant_contents(ptr noundef %65, ptr noundef %67, i32 noundef %73)
  %74 = load ptr, ptr %69, align 8, !tbaa !194
  %75 = tail call i64 @int_size_in_bytes(ptr noundef %74) #34
  %76 = load i64, ptr %65, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 28
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.tree_string, ptr %65, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !194
  %82 = sext i32 %81 to i64
  %83 = tail call i64 @llvm.smax.i64(i64 %75, i64 %82)
  br label %88

84:                                               ; preds = %61
  tail call fastcc void @assemble_variable_contents(ptr noundef %65, ptr noundef %67, i8 noundef zeroext 0)
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %65, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !194
  %87 = tail call i64 @tree_low_cst(ptr noundef %86, i32 noundef 1) #34
  br label %88

88:                                               ; preds = %84, %79, %68, %52
  %89 = phi i64 [ %60, %52 ], [ %87, %84 ], [ %83, %79 ], [ %75, %68 ]
  %90 = add nsw i64 %89, %48
  %91 = add i32 %30, 1
  br label %29, !llvm.loop !540

92:                                               ; preds = %41, %2
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @elf_record_gcc_switches(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !182 {
  switch i32 %0, label %450 [
    i32 0, label %3
    i32 2, label %335
  ]

3:                                                ; preds = %2
  %4 = load i8, ptr %1, align 1, !tbaa !194
  %5 = icmp eq i8 %4, 45
  %6 = load i1, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br i1 %5, label %226, label %7

7:                                                ; preds = %3
  br i1 %6, label %8, label %119

8:                                                ; preds = %7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer)
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %10
  %12 = sub nsw i64 1024, %10
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %11, i64 noundef %12, ptr noundef nonnull @.str.163, ptr noundef nonnull %1)
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer)
  %15 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %14
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %116

17:                                               ; preds = %8, %106
  %18 = phi ptr [ %109, %106 ], [ @elf_record_gcc_switches.buffer, %8 ]
  %19 = phi ptr [ %38, %106 ], [ null, %8 ]
  %20 = phi i32 [ %107, %106 ], [ 0, %8 ]
  %21 = icmp ugt i32 %20, 59
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %24 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ 0, %22 ], [ %20, %17 ]
  %27 = icmp ugt ptr %18, %19
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = icmp ult ptr %18, %15
  br i1 %29, label %30, label %37

30:                                               ; preds = %28, %34
  %31 = phi ptr [ %35, %34 ], [ %18, %28 ]
  %32 = load i8, ptr %31, align 1, !tbaa !194
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp ult ptr %35, %15
  br i1 %36, label %30, label %37, !llvm.loop !541

37:                                               ; preds = %30, %34, %28, %25
  %38 = phi ptr [ %19, %25 ], [ %18, %28 ], [ %35, %34 ], [ %31, %30 ]
  %39 = icmp ult ptr %38, %15
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %18 to i64
  %42 = sub i64 %40, %41
  %43 = icmp slt i64 %42, 257
  %44 = and i1 %39, %43
  %45 = icmp eq i32 %26, 0
  br i1 %44, label %46, label %81

46:                                               ; preds = %37
  br i1 %45, label %50, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %49 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %46, %47
  %51 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71)
  %53 = load i8, ptr %18, align 1, !tbaa !194
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %50, %74
  %56 = phi i8 [ %76, %74 ], [ %53, %50 ]
  %57 = phi ptr [ %75, %74 ], [ %18, %50 ]
  %58 = zext i8 %56 to i32
  %59 = zext i8 %56 to i64
  %60 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !194
  switch i8 %61, label %68 [
    i8 0, label %62
    i8 1, label %65
  ]

62:                                               ; preds = %55
  %63 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %64 = tail call i32 @putc(i32 noundef %58, ptr noundef %63)
  br label %74

65:                                               ; preds = %55
  %66 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.73, i32 noundef %58)
  br label %74

68:                                               ; preds = %55
  %69 = sext i8 %61 to i32
  %70 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %71 = tail call i32 @putc(i32 noundef 92, ptr noundef %70)
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %73 = tail call i32 @putc(i32 noundef %69, ptr noundef %72)
  br label %74

74:                                               ; preds = %68, %65, %62
  %75 = getelementptr inbounds i8, ptr %57, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !194
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %55, !llvm.loop !542

78:                                               ; preds = %74, %50
  %79 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %80 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %79)
  br label %106

81:                                               ; preds = %37
  br i1 %45, label %82, label %85

82:                                               ; preds = %81
  %83 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74)
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i8, ptr %18, align 1, !tbaa !194
  %87 = zext i8 %86 to i32
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !194
  switch i8 %90, label %99 [
    i8 0, label %91
    i8 1, label %95
  ]

91:                                               ; preds = %85
  %92 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %93 = tail call i32 @putc(i32 noundef %87, ptr noundef %92)
  %94 = add nuw nsw i32 %26, 1
  br label %106

95:                                               ; preds = %85
  %96 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.73, i32 noundef %87)
  %98 = add nuw nsw i32 %26, 4
  br label %106

99:                                               ; preds = %85
  %100 = sext i8 %90 to i32
  %101 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %102 = tail call i32 @putc(i32 noundef 92, ptr noundef %101)
  %103 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %104 = tail call i32 @putc(i32 noundef %100, ptr noundef %103)
  %105 = add nuw nsw i32 %26, 2
  br label %106

106:                                              ; preds = %91, %95, %99, %78
  %107 = phi i32 [ 0, %78 ], [ %105, %99 ], [ %98, %95 ], [ %94, %91 ]
  %108 = phi ptr [ %38, %78 ], [ %18, %99 ], [ %18, %95 ], [ %18, %91 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = icmp ult ptr %109, %15
  br i1 %110, label %17, label %111, !llvm.loop !543

111:                                              ; preds = %106
  %112 = icmp eq i32 %107, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %115 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %114)
  br label %116

116:                                              ; preds = %8, %113, %111
  %117 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1)
  store i1 false, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br label %450

119:                                              ; preds = %7
  %120 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024)
  %121 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer)
  %122 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %121
  %123 = icmp sgt i64 %121, 0
  br i1 %123, label %124, label %223

124:                                              ; preds = %119, %213
  %125 = phi ptr [ %216, %213 ], [ @elf_record_gcc_switches.buffer, %119 ]
  %126 = phi ptr [ %145, %213 ], [ null, %119 ]
  %127 = phi i32 [ %214, %213 ], [ 0, %119 ]
  %128 = icmp ugt i32 %127, 59
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %131 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = phi i32 [ 0, %129 ], [ %127, %124 ]
  %134 = icmp ugt ptr %125, %126
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = icmp ult ptr %125, %122
  br i1 %136, label %137, label %144

137:                                              ; preds = %135, %141
  %138 = phi ptr [ %142, %141 ], [ %125, %135 ]
  %139 = load i8, ptr %138, align 1, !tbaa !194
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  %143 = icmp ult ptr %142, %122
  br i1 %143, label %137, label %144, !llvm.loop !544

144:                                              ; preds = %137, %141, %135, %132
  %145 = phi ptr [ %126, %132 ], [ %125, %135 ], [ %142, %141 ], [ %138, %137 ]
  %146 = icmp ult ptr %145, %122
  %147 = ptrtoint ptr %145 to i64
  %148 = ptrtoint ptr %125 to i64
  %149 = sub i64 %147, %148
  %150 = icmp slt i64 %149, 257
  %151 = and i1 %146, %150
  %152 = icmp eq i32 %133, 0
  br i1 %151, label %153, label %188

153:                                              ; preds = %144
  br i1 %152, label %157, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %156 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %153, %154
  %158 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71)
  %160 = load i8, ptr %125, align 1, !tbaa !194
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %185, label %162

162:                                              ; preds = %157, %181
  %163 = phi i8 [ %183, %181 ], [ %160, %157 ]
  %164 = phi ptr [ %182, %181 ], [ %125, %157 ]
  %165 = zext i8 %163 to i32
  %166 = zext i8 %163 to i64
  %167 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !194
  switch i8 %168, label %175 [
    i8 0, label %169
    i8 1, label %172
  ]

169:                                              ; preds = %162
  %170 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %171 = tail call i32 @putc(i32 noundef %165, ptr noundef %170)
  br label %181

172:                                              ; preds = %162
  %173 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.73, i32 noundef %165)
  br label %181

175:                                              ; preds = %162
  %176 = sext i8 %168 to i32
  %177 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %178 = tail call i32 @putc(i32 noundef 92, ptr noundef %177)
  %179 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %180 = tail call i32 @putc(i32 noundef %176, ptr noundef %179)
  br label %181

181:                                              ; preds = %175, %172, %169
  %182 = getelementptr inbounds i8, ptr %164, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !194
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %162, !llvm.loop !545

185:                                              ; preds = %181, %157
  %186 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %187 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %186)
  br label %213

188:                                              ; preds = %144
  br i1 %152, label %189, label %192

189:                                              ; preds = %188
  %190 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74)
  br label %192

192:                                              ; preds = %189, %188
  %193 = load i8, ptr %125, align 1, !tbaa !194
  %194 = zext i8 %193 to i32
  %195 = zext i8 %193 to i64
  %196 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !194
  switch i8 %197, label %206 [
    i8 0, label %198
    i8 1, label %202
  ]

198:                                              ; preds = %192
  %199 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %200 = tail call i32 @putc(i32 noundef %194, ptr noundef %199)
  %201 = add nuw nsw i32 %133, 1
  br label %213

202:                                              ; preds = %192
  %203 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.73, i32 noundef %194)
  %205 = add nuw nsw i32 %133, 4
  br label %213

206:                                              ; preds = %192
  %207 = sext i8 %197 to i32
  %208 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %209 = tail call i32 @putc(i32 noundef 92, ptr noundef %208)
  %210 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %211 = tail call i32 @putc(i32 noundef %207, ptr noundef %210)
  %212 = add nuw nsw i32 %133, 2
  br label %213

213:                                              ; preds = %198, %202, %206, %185
  %214 = phi i32 [ 0, %185 ], [ %212, %206 ], [ %205, %202 ], [ %201, %198 ]
  %215 = phi ptr [ %145, %185 ], [ %125, %206 ], [ %125, %202 ], [ %125, %198 ]
  %216 = getelementptr inbounds i8, ptr %215, i64 1
  %217 = icmp ult ptr %216, %122
  br i1 %217, label %124, label %218, !llvm.loop !546

218:                                              ; preds = %213
  %219 = icmp eq i32 %214, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %218
  %221 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %222 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %221)
  br label %223

223:                                              ; preds = %119, %220, %218
  %224 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1)
  br label %450

226:                                              ; preds = %3
  br i1 %6, label %227, label %333

227:                                              ; preds = %226
  %228 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer)
  %229 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %228
  %230 = icmp sgt i64 %228, 0
  br i1 %230, label %231, label %330

231:                                              ; preds = %227, %320
  %232 = phi i32 [ %322, %320 ], [ 0, %227 ]
  %233 = phi ptr [ %252, %320 ], [ null, %227 ]
  %234 = phi ptr [ %323, %320 ], [ @elf_record_gcc_switches.buffer, %227 ]
  %235 = icmp ugt i32 %232, 59
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %238 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %237)
  br label %239

239:                                              ; preds = %236, %231
  %240 = phi i32 [ 0, %236 ], [ %232, %231 ]
  %241 = icmp ugt ptr %234, %233
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = icmp ult ptr %234, %229
  br i1 %243, label %244, label %251

244:                                              ; preds = %242, %248
  %245 = phi ptr [ %249, %248 ], [ %234, %242 ]
  %246 = load i8, ptr %245, align 1, !tbaa !194
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds i8, ptr %245, i64 1
  %250 = icmp ult ptr %249, %229
  br i1 %250, label %244, label %251, !llvm.loop !547

251:                                              ; preds = %244, %248, %242, %239
  %252 = phi ptr [ %233, %239 ], [ %234, %242 ], [ %249, %248 ], [ %245, %244 ]
  %253 = icmp ult ptr %252, %229
  %254 = ptrtoint ptr %252 to i64
  %255 = ptrtoint ptr %234 to i64
  %256 = sub i64 %254, %255
  %257 = icmp slt i64 %256, 257
  %258 = and i1 %253, %257
  %259 = icmp eq i32 %240, 0
  br i1 %258, label %260, label %295

260:                                              ; preds = %251
  br i1 %259, label %264, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %263 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %262)
  br label %264

264:                                              ; preds = %260, %261
  %265 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71)
  %267 = load i8, ptr %234, align 1, !tbaa !194
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %292, label %269

269:                                              ; preds = %264, %288
  %270 = phi i8 [ %290, %288 ], [ %267, %264 ]
  %271 = phi ptr [ %289, %288 ], [ %234, %264 ]
  %272 = zext i8 %270 to i32
  %273 = zext i8 %270 to i64
  %274 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !194
  switch i8 %275, label %282 [
    i8 0, label %276
    i8 1, label %279
  ]

276:                                              ; preds = %269
  %277 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %278 = tail call i32 @putc(i32 noundef %272, ptr noundef %277)
  br label %288

279:                                              ; preds = %269
  %280 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.73, i32 noundef %272)
  br label %288

282:                                              ; preds = %269
  %283 = sext i8 %275 to i32
  %284 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %285 = tail call i32 @putc(i32 noundef 92, ptr noundef %284)
  %286 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %287 = tail call i32 @putc(i32 noundef %283, ptr noundef %286)
  br label %288

288:                                              ; preds = %282, %279, %276
  %289 = getelementptr inbounds i8, ptr %271, i64 1
  %290 = load i8, ptr %289, align 1, !tbaa !194
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %269, !llvm.loop !548

292:                                              ; preds = %288, %264
  %293 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %294 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %293)
  br label %320

295:                                              ; preds = %251
  br i1 %259, label %296, label %299

296:                                              ; preds = %295
  %297 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %298 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74)
  br label %299

299:                                              ; preds = %296, %295
  %300 = load i8, ptr %234, align 1, !tbaa !194
  %301 = zext i8 %300 to i32
  %302 = zext i8 %300 to i64
  %303 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !194
  switch i8 %304, label %313 [
    i8 0, label %305
    i8 1, label %309
  ]

305:                                              ; preds = %299
  %306 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %307 = tail call i32 @putc(i32 noundef %301, ptr noundef %306)
  %308 = add nuw nsw i32 %240, 1
  br label %320

309:                                              ; preds = %299
  %310 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.73, i32 noundef %301)
  %312 = add nuw nsw i32 %240, 4
  br label %320

313:                                              ; preds = %299
  %314 = sext i8 %304 to i32
  %315 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %316 = tail call i32 @putc(i32 noundef 92, ptr noundef %315)
  %317 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %318 = tail call i32 @putc(i32 noundef %314, ptr noundef %317)
  %319 = add nuw nsw i32 %240, 2
  br label %320

320:                                              ; preds = %305, %309, %313, %292
  %321 = phi ptr [ %252, %292 ], [ %234, %313 ], [ %234, %309 ], [ %234, %305 ]
  %322 = phi i32 [ 0, %292 ], [ %319, %313 ], [ %312, %309 ], [ %308, %305 ]
  %323 = getelementptr inbounds i8, ptr %321, i64 1
  %324 = icmp ult ptr %323, %229
  br i1 %324, label %231, label %325, !llvm.loop !549

325:                                              ; preds = %320
  %326 = icmp eq i32 %322, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %325
  %328 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %329 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %328)
  br label %330

330:                                              ; preds = %227, %327, %325
  %331 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1)
  br label %333

333:                                              ; preds = %330, %226
  %334 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024)
  store i1 true, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br label %450

335:                                              ; preds = %2
  %336 = icmp eq ptr %1, null
  br i1 %336, label %337, label %450

337:                                              ; preds = %335
  %338 = load i1, ptr @elf_record_gcc_switches.started, align 1
  br i1 %338, label %339, label %447

339:                                              ; preds = %337
  %340 = load i1, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br i1 %340, label %341, label %450

341:                                              ; preds = %339
  %342 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer)
  %343 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %342
  %344 = icmp sgt i64 %342, 0
  br i1 %344, label %345, label %444

345:                                              ; preds = %341, %434
  %346 = phi i32 [ %436, %434 ], [ 0, %341 ]
  %347 = phi ptr [ %366, %434 ], [ null, %341 ]
  %348 = phi ptr [ %437, %434 ], [ @elf_record_gcc_switches.buffer, %341 ]
  %349 = icmp ugt i32 %346, 59
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %352 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %351)
  br label %353

353:                                              ; preds = %350, %345
  %354 = phi i32 [ 0, %350 ], [ %346, %345 ]
  %355 = icmp ugt ptr %348, %347
  br i1 %355, label %356, label %365

356:                                              ; preds = %353
  %357 = icmp ult ptr %348, %343
  br i1 %357, label %358, label %365

358:                                              ; preds = %356, %362
  %359 = phi ptr [ %363, %362 ], [ %348, %356 ]
  %360 = load i8, ptr %359, align 1, !tbaa !194
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds i8, ptr %359, i64 1
  %364 = icmp ult ptr %363, %343
  br i1 %364, label %358, label %365, !llvm.loop !550

365:                                              ; preds = %358, %362, %356, %353
  %366 = phi ptr [ %347, %353 ], [ %348, %356 ], [ %363, %362 ], [ %359, %358 ]
  %367 = icmp ult ptr %366, %343
  %368 = ptrtoint ptr %366 to i64
  %369 = ptrtoint ptr %348 to i64
  %370 = sub i64 %368, %369
  %371 = icmp slt i64 %370, 257
  %372 = and i1 %367, %371
  %373 = icmp eq i32 %354, 0
  br i1 %372, label %374, label %409

374:                                              ; preds = %365
  br i1 %373, label %378, label %375

375:                                              ; preds = %374
  %376 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %377 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %376)
  br label %378

378:                                              ; preds = %374, %375
  %379 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %380 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %379, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71)
  %381 = load i8, ptr %348, align 1, !tbaa !194
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %406, label %383

383:                                              ; preds = %378, %402
  %384 = phi i8 [ %404, %402 ], [ %381, %378 ]
  %385 = phi ptr [ %403, %402 ], [ %348, %378 ]
  %386 = zext i8 %384 to i32
  %387 = zext i8 %384 to i64
  %388 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !194
  switch i8 %389, label %396 [
    i8 0, label %390
    i8 1, label %393
  ]

390:                                              ; preds = %383
  %391 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %392 = tail call i32 @putc(i32 noundef %386, ptr noundef %391)
  br label %402

393:                                              ; preds = %383
  %394 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %394, ptr noundef nonnull @.str.73, i32 noundef %386)
  br label %402

396:                                              ; preds = %383
  %397 = sext i8 %389 to i32
  %398 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %399 = tail call i32 @putc(i32 noundef 92, ptr noundef %398)
  %400 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %401 = tail call i32 @putc(i32 noundef %397, ptr noundef %400)
  br label %402

402:                                              ; preds = %396, %393, %390
  %403 = getelementptr inbounds i8, ptr %385, i64 1
  %404 = load i8, ptr %403, align 1, !tbaa !194
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %383, !llvm.loop !551

406:                                              ; preds = %402, %378
  %407 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %408 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %407)
  br label %434

409:                                              ; preds = %365
  br i1 %373, label %410, label %413

410:                                              ; preds = %409
  %411 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74)
  br label %413

413:                                              ; preds = %410, %409
  %414 = load i8, ptr %348, align 1, !tbaa !194
  %415 = zext i8 %414 to i32
  %416 = zext i8 %414 to i64
  %417 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !194
  switch i8 %418, label %427 [
    i8 0, label %419
    i8 1, label %423
  ]

419:                                              ; preds = %413
  %420 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %421 = tail call i32 @putc(i32 noundef %415, ptr noundef %420)
  %422 = add nuw nsw i32 %354, 1
  br label %434

423:                                              ; preds = %413
  %424 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %425 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef nonnull @.str.73, i32 noundef %415)
  %426 = add nuw nsw i32 %354, 4
  br label %434

427:                                              ; preds = %413
  %428 = sext i8 %418 to i32
  %429 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %430 = tail call i32 @putc(i32 noundef 92, ptr noundef %429)
  %431 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %432 = tail call i32 @putc(i32 noundef %428, ptr noundef %431)
  %433 = add nuw nsw i32 %354, 2
  br label %434

434:                                              ; preds = %419, %423, %427, %406
  %435 = phi ptr [ %366, %406 ], [ %348, %427 ], [ %348, %423 ], [ %348, %419 ]
  %436 = phi i32 [ 0, %406 ], [ %433, %427 ], [ %426, %423 ], [ %422, %419 ]
  %437 = getelementptr inbounds i8, ptr %435, i64 1
  %438 = icmp ult ptr %437, %343
  br i1 %438, label %345, label %439, !llvm.loop !552

439:                                              ; preds = %434
  %440 = icmp eq i32 %436, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %439
  %442 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %443 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %442)
  br label %444

444:                                              ; preds = %341, %441, %439
  %445 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %446 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %445, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1)
  br label %450

447:                                              ; preds = %337
  %448 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 35), align 8, !tbaa !553
  %449 = tail call ptr @get_section(ptr noundef %448, i32 noundef 99329, ptr noundef null)
  tail call void @switch_to_section(ptr noundef %449)
  store i1 true, ptr @elf_record_gcc_switches.started, align 1
  br label %450

450:                                              ; preds = %2, %447, %444, %339, %335, %333, %223, %116
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @default_elf_asm_output_external(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #12 !prof !182 {
  %4 = tail call ptr @decl_assembler_name(ptr noundef %1) #34
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 67108864
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %20, label %8, !prof !381

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !385
  %10 = tail call zeroext i8 %9(ptr noundef %1) #34, !prof !554
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12, !prof !382

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 10
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !324
  tail call void %19(ptr noundef %1, i32 noundef %16) #34
  br label %20

20:                                               ; preds = %18, %12, %8, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_rtx_constant_pool(ptr noundef %0) #9 !prof !182 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !555
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !438
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !428
  tail call void @gt_ggc_m_P23constant_descriptor_rtx4htab(ptr noundef %17)
  br label %18

18:                                               ; preds = %1, %15, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %8, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !434
  %9 = icmp ult ptr %8, inttoptr (i64 2 to ptr)
  br i1 %9, label %10, label %3, !llvm.loop !556

10:                                               ; preds = %3, %7, %1
  %11 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %8, %7 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %36, label %13

13:                                               ; preds = %10, %33
  %14 = phi ptr [ %34, %33 ], [ %0, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !434
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !433
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %20) #34
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !308
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %25) #34
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !311
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %30) #34
  br label %33

33:                                               ; preds = %32, %28
  %34 = load ptr, ptr %14, align 8, !tbaa !434
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %13, !llvm.loop !557

36:                                               ; preds = %33, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P23constant_descriptor_rtx4htab(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !558
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !560
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !558
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !183
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !560
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !561

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !558
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #34
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_rtx_constant_pool(ptr noundef %0) #9 !prof !182 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17rtx_constant_pool, i32 noundef 122) #34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !555
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !438
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !428
  tail call void @gt_pch_n_P23constant_descriptor_rtx4htab(ptr noundef %15)
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17rtx_constant_pool(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !182 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #34
  %7 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #34
  %8 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #34
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_constant_descriptor_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23constant_descriptor_rtx, i32 noundef 146) #34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %9, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %35, label %12

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !434
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_23constant_descriptor_rtx, i32 noundef 146) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %7, !llvm.loop !562

12:                                               ; preds = %4, %32
  %13 = phi ptr [ %33, %32 ], [ %0, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !434
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !433
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %19) #34
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !308
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %24) #34
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %13, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !311
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %29) #34
  br label %32

32:                                               ; preds = %31, %27
  %33 = load ptr, ptr %13, align 8, !tbaa !434
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %35, label %12, !llvm.loop !563

35:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P23constant_descriptor_rtx4htab(ptr noundef %0) local_unnamed_addr #9 !prof !182 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23constant_descriptor_rtx4htab, i32 noundef 191) #34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !558
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !560
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !558
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !183
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !560
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !564

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !558
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23constant_descriptor_rtx4htab, i32 noundef 217) #34
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_23constant_descriptor_rtx(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !182 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #34
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #34
  %8 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #34
  %9 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #34
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P23constant_descriptor_rtx4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !182 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !558
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !560
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !558
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #34
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !560
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !565

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #34
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @gt_ggc_m_P24constant_descriptor_tree4htab(ptr noundef) #3

declare void @gt_pch_n_P24constant_descriptor_tree4htab(ptr noundef) #3

declare void @gt_ggc_m_P12object_block4htab(ptr noundef) #3

declare void @gt_pch_n_P12object_block4htab(ptr noundef) #3

declare void @gt_ggc_m_P7section4htab(ptr noundef) #3

declare void @gt_pch_n_P7section4htab(ptr noundef) #3

declare void @gt_ggc_mx_section(ptr noundef) #3

declare void @gt_pch_nx_section(ptr noundef) #3

declare void @gt_ggc_m_S(ptr noundef) #3

declare void @gt_pch_n_S(ptr noundef) #3

declare void @gt_ggc_mx_tree_map(ptr noundef) #3

declare void @gt_pch_nx_tree_map(ptr noundef) #3

declare i32 @tree_map_base_marked_p(ptr noundef) #3

declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #3

declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @prefix_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !182 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %7 = add i64 %6, 1
  %8 = add i64 %7, %3
  %9 = and i64 %8, 4294967295
  %10 = alloca i8, i64 %9, align 16
  %11 = and i64 %3, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %11, i1 false)
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = add i64 %6, 1
  %14 = and i64 %13, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %5, i64 %14, i1 false)
  %15 = call ptr @get_identifier(ptr noundef nonnull %10) #34
  ret ptr %15
}

declare void @layout_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @contains_pointers_p(ptr nocapture noundef readonly %0) unnamed_addr #25 !prof !182 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi ptr [ %0, %1 ], [ %26, %24 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %27 [
    i16 10, label %28
    i16 12, label %28
    i16 5, label %28
    i16 16, label %6
    i16 17, label %6
    i16 18, label %6
    i16 15, label %24
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %6 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = tail call fastcc i32 @contains_pointers_p(ptr noundef %17), !range !362
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %10, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !194
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %10, !llvm.loop !566

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  br label %2

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %20, %15, %6, %2, %2, %2, %27
  %29 = phi i32 [ 0, %27 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 0, %6 ], [ 1, %15 ], [ 0, %20 ]
  ret i32 %29
}

declare zeroext i8 @is_builtin_name(ptr noundef) local_unnamed_addr #3

declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decode_addr_const(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !182 {
  br label %3

3:                                                ; preds = %36, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %36 ]
  %5 = phi i32 [ 0, %2 ], [ %39, %36 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 41
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = tail call ptr @byte_position(ptr noundef %13) #34
  %15 = tail call i32 @host_integerp(ptr noundef %14, i32 noundef 0) #34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8, !tbaa !194
  %19 = tail call i64 @int_byte_position(ptr noundef %18) #34
  br label %36

20:                                               ; preds = %11, %3
  %21 = load i64, ptr %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -45
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !194
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = tail call i64 @tree_low_cst(ptr noundef %30, i32 noundef 1) #34
  %32 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  %34 = tail call i64 @tree_low_cst(ptr noundef %33, i32 noundef 0) #34
  %35 = mul nsw i64 %34, %31
  br label %36

36:                                               ; preds = %26, %17
  %37 = phi i64 [ %19, %17 ], [ %35, %26 ]
  %38 = trunc i64 %37 to i32
  %39 = add i32 %5, %38
  br label %3, !llvm.loop !567

40:                                               ; preds = %20
  %41 = trunc i64 %21 to i16
  switch i16 %41, label %54 [
    i16 32, label %42
    i16 29, label %42
    i16 30, label %48
    i16 24, label %52
    i16 25, label %52
    i16 28, label %52
    i16 26, label %52
    i16 51, label %52
    i16 23, label %52
  ]

42:                                               ; preds = %40, %40
  %43 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !194
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  tail call void @make_decl_rtl(ptr noundef nonnull %7)
  %47 = load ptr, ptr %43, align 8, !tbaa !194
  br label %55

48:                                               ; preds = %40
  %49 = tail call ptr @force_label_rtx(ptr noundef nonnull %7) #34
  %50 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %49) #34
  %51 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %50) #34
  br label %55

52:                                               ; preds = %40, %40, %40, %40, %40, %40
  %53 = tail call ptr @output_constant_def(ptr noundef nonnull %7, i32 noundef 1)
  br label %55

54:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2845, ptr noundef nonnull @.str.5) #34
  br label %55

55:                                               ; preds = %46, %42, %54, %52, %48
  %56 = phi ptr [ undef, %54 ], [ %53, %52 ], [ %51, %48 ], [ %47, %46 ], [ %44, %42 ]
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 43
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2848, ptr noundef nonnull @.str.5) #34
  br label %61

61:                                               ; preds = %55, %60
  %62 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !194
  store ptr %63, ptr %1, align 8, !tbaa !420
  %64 = sext i32 %5 to i64
  %65 = getelementptr inbounds %struct.addr_const, ptr %1, i64 0, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !422
  ret void
}

declare ptr @byte_position(ptr noundef) local_unnamed_addr #3

declare i64 @int_byte_position(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_label_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @copy_constant(ptr noundef %0) unnamed_addr #9 !prof !479 !PGOFuncName !568 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %94 [
    i16 121, label %4
    i16 23, label %21
    i16 24, label %21
    i16 25, label %21
    i16 28, label %21
    i16 26, label %23
    i16 63, label %33
    i16 66, label %33
    i16 64, label %33
    i16 116, label %45
    i16 113, label %45
    i16 118, label %45
    i16 51, label %54
  ], !prof !569

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !198
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %19

12:                                               ; preds = %19, %21, %92, %94, %45, %33, %23, %14
  %13 = phi ptr [ %18, %14 ], [ %32, %23 ], [ %44, %33 ], [ %53, %45 ], [ null, %94 ], [ %55, %92 ], [ %22, %21 ], [ %20, %19 ]
  ret ptr %13

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call fastcc ptr @copy_constant(ptr noundef nonnull %6)
  %18 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %16, ptr noundef %17) #34
  br label %12

19:                                               ; preds = %4
  %20 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #34
  br label %12

21:                                               ; preds = %1, %1, %1, %1
  %22 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #34
  br label %12

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = tail call fastcc ptr @copy_constant(ptr noundef %27)
  %29 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  %31 = tail call fastcc ptr @copy_constant(ptr noundef %30)
  %32 = tail call ptr @build_complex(ptr noundef %25, ptr noundef %28, ptr noundef %31) #34
  br label %12

33:                                               ; preds = %1, %1, %1
  %34 = trunc i64 %2 to i32
  %35 = and i32 %34, 65535
  %36 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !194
  %40 = tail call fastcc ptr @copy_constant(ptr noundef %39)
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !194
  %43 = tail call fastcc ptr @copy_constant(ptr noundef %42)
  %44 = tail call ptr @build2_stat(i32 noundef %35, ptr noundef %37, ptr noundef %40, ptr noundef %43) #34
  br label %12

45:                                               ; preds = %1, %1, %1
  %46 = trunc i64 %2 to i32
  %47 = and i32 %46, 65535
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !194
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !194
  %52 = tail call fastcc ptr @copy_constant(ptr noundef %51)
  %53 = tail call ptr @build1_stat(i32 noundef %47, ptr noundef %49, ptr noundef %52) #34
  br label %12

54:                                               ; preds = %1
  %55 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #34
  %56 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !194
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %57, align 8, !tbaa !352
  br label %61

61:                                               ; preds = %54, %59
  %62 = phi i32 [ %60, %59 ], [ 0, %54 ]
  %63 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %62, i64 noundef 8, i64 noundef 16) #34
  br label %64

64:                                               ; preds = %84, %61
  %65 = phi i64 [ 0, %61 ], [ %91, %84 ]
  %66 = phi ptr [ undef, %61 ], [ %82, %84 ]
  %67 = phi ptr [ undef, %61 ], [ %83, %84 ]
  %68 = load ptr, ptr %56, align 8, !tbaa !194
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %68, align 8, !tbaa !352
  br label %72

72:                                               ; preds = %64, %70
  %73 = phi i32 [ %71, %70 ], [ 0, %64 ]
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %65, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %68, i64 0, i32 2, i64 %65
  %78 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %68, i64 0, i32 2, i64 %65, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !356
  %80 = load ptr, ptr %77, align 8, !tbaa !354
  br label %81

81:                                               ; preds = %72, %76
  %82 = phi ptr [ %66, %72 ], [ %80, %76 ]
  %83 = phi ptr [ %67, %72 ], [ %79, %76 ]
  br i1 %75, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, ptr %63, align 8, !tbaa !352
  %86 = add i32 %85, 1
  store i32 %86, ptr %63, align 8, !tbaa !352
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %63, i64 0, i32 2, i64 %87
  store ptr %82, ptr %88, align 8, !tbaa !354
  %89 = tail call fastcc ptr @copy_constant(ptr noundef %83)
  %90 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %63, i64 0, i32 2, i64 %87, i32 1
  store ptr %89, ptr %90, align 8, !tbaa !356
  %91 = add nuw nsw i64 %65, 1
  br label %64, !llvm.loop !570

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.tree_constructor, ptr %55, i64 0, i32 1
  store ptr %63, ptr %93, align 8, !tbaa !194
  br label %12

94:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3184, ptr noundef nonnull @.str.5) #34
  br label %12
}

declare i32 @mf_marked_p(ptr noundef) local_unnamed_addr #3

declare ptr @mf_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_constant_section(ptr noundef %0) unnamed_addr #9 !prof !479 !PGOFuncName !571 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %11 [
    i16 29, label %4
    i16 32, label %4
  ], !prof !572

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %0), !range !363
  %10 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef %9)
  br label %21

11:                                               ; preds = %4, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 21), align 8, !tbaa !366
  %13 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %0), !range !363
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !194
  %18 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %0, i32 noundef %17) #34
  %19 = zext i32 %18 to i64
  %20 = tail call ptr %12(ptr noundef nonnull %0, i32 noundef %13, i64 noundef %19) #34, !prof !573
  br label %21

21:                                               ; preds = %11, %8
  %22 = phi ptr [ %10, %8 ], [ %20, %11 ]
  ret ptr %22
}

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_constant_def_contents(ptr noundef %0) unnamed_addr #9 !prof !479 !PGOFuncName !574 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8, !prof !412

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  tail call fastcc void @output_addressed_constants(ptr noundef %9)
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %10, 4194304
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !194
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !412

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @place_block_symbol(ptr noundef nonnull %0)
  br label %42

22:                                               ; preds = %17, %8
  %23 = tail call fastcc ptr @get_constant_section(ptr noundef nonnull %9)
  tail call void @switch_to_section(ptr noundef %23)
  %24 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !194
  %28 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %9, i32 noundef %27) #34
  %29 = icmp ugt i32 %28, 8
  br i1 %29, label %30, label %40, !prof !283

30:                                               ; preds = %22
  %31 = lshr i32 %28, 3
  %32 = zext nneg i32 %31 to i64
  %33 = tail call i32 @floor_log2(i64 noundef %32) #34
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %37 = tail call i32 @floor_log2(i64 noundef %32) #34
  %38 = shl nuw i32 1, %37
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.57, i32 noundef %38)
  br label %40

40:                                               ; preds = %30, %35, %22
  %41 = load ptr, ptr %12, align 8, !tbaa !194
  tail call fastcc void @assemble_constant_contents(ptr noundef nonnull %9, ptr noundef %41, i32 noundef %28)
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, ptr @flag_mudflap, align 4, !tbaa !198
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !412

45:                                               ; preds = %42
  tail call void @mudflap_enqueue_constant(ptr noundef nonnull %9) #34
  br label %46

46:                                               ; preds = %45, %42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @assemble_constant_contents(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !479 !PGOFuncName !575 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = tail call i64 @int_size_in_bytes(ptr noundef %5) #34
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 28
  br i1 %9, label %10, label %15, !prof !412

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !194
  %13 = sext i32 %12 to i64
  %14 = tail call i64 @llvm.smax.i64(i64 %6, i64 %13)
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i64 [ %14, %10 ], [ %6, %3 ]
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  tail call void @assemble_name(ptr noundef %17, ptr noundef %1)
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %19 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 2, i64 1, ptr %18)
  tail call void @output_constant(ptr noundef nonnull %0, i64 noundef %16, i32 noundef %2)
  ret void
}

declare void @mudflap_enqueue_constant(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @const_desc_rtx_hash(ptr nocapture noundef readonly %0) #27 !prof !182 {
  %2 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !436
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @const_desc_rtx_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !182 {
  %3 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !310
  %5 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !310
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !311
  %11 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !311
  %13 = tail call i32 @rtx_equal_p(ptr noundef %10, ptr noundef %12) #34
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ 0, %2 ]
  ret i32 %15
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @const_rtx_hash_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = lshr i32 %4, 16
  %7 = and i32 %6, 255
  %8 = mul i32 %5, 1048573
  %9 = add i32 %8, %7
  %10 = trunc i32 %4 to i16
  switch i16 %10, label %68 [
    i16 30, label %11
    i16 32, label %20
    i16 31, label %31
    i16 33, label %35
    i16 45, label %51
    i16 44, label %56
    i16 18, label %63
    i16 19, label %63
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !194
  br label %14

14:                                               ; preds = %23, %11
  %15 = phi i64 [ %27, %23 ], [ %13, %11 ]
  %16 = lshr i64 %15, 32
  %17 = xor i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = xor i32 %9, %18
  br label %68

20:                                               ; preds = %2
  %21 = icmp eq i32 %7, 0
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br i1 %21, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, ptr %22, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !194
  %27 = xor i64 %26, %24
  br label %14

28:                                               ; preds = %20
  %29 = tail call i32 @real_hash(ptr noundef nonnull %22) #34
  %30 = xor i32 %29, %9
  br label %68

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %33 = tail call i32 @fixed_hash(ptr noundef nonnull %32) #34
  %34 = xor i32 %33, %9
  br label %68

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  %38 = load i32, ptr %37, align 8, !tbaa !576
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %44 = phi i32 [ %9, %40 ], [ %46, %42 ]
  %45 = add nsw i64 %43, -1
  %46 = mul i32 %44, 251
  %47 = load ptr, ptr %36, align 8, !tbaa !194
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %47, i64 0, i32 1, i64 %45
  %49 = tail call i32 @const_rtx_hash_1(ptr noundef nonnull %48, ptr noundef %1)
  %50 = icmp sgt i64 %43, 1
  br i1 %50, label %42, label %68, !llvm.loop !578

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !194
  %54 = tail call i32 @htab_hash_string(ptr noundef %53) #34
  %55 = xor i32 %54, %9
  br label %68

56:                                               ; preds = %2
  %57 = mul i32 %9, 251
  %58 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !194
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !194
  %62 = add i32 %61, %57
  br label %68

63:                                               ; preds = %2, %2
  %64 = mul i32 %9, 251
  %65 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load i32, ptr %65, align 8, !tbaa !194
  %67 = add i32 %66, %64
  br label %68

68:                                               ; preds = %42, %35, %14, %2, %63, %56, %51, %31, %28
  %69 = phi i32 [ %9, %2 ], [ %67, %63 ], [ %62, %56 ], [ %55, %51 ], [ %34, %31 ], [ %30, %28 ], [ %19, %14 ], [ %9, %35 ], [ %46, %42 ]
  %70 = load i32, ptr %1, align 4, !tbaa !198
  %71 = mul i32 %70, 509
  %72 = add i32 %71, %69
  store i32 %72, ptr %1, align 4, !tbaa !198
  ret i32 0
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_constants(ptr noundef %0) unnamed_addr #9 !prof !182 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = load i32, ptr %14, align 8, !tbaa !576
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %31
  %20 = phi i64 [ 0, %17 ], [ %32, %31 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !194
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !183
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %30 = tail call i32 @for_each_rtx(ptr noundef nonnull %29, ptr noundef nonnull @mark_constant, ptr noundef null) #34
  br label %31

31:                                               ; preds = %19, %28
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %36, label %19, !llvm.loop !579

34:                                               ; preds = %6
  %35 = tail call i32 @for_each_rtx(ptr noundef nonnull %7, ptr noundef nonnull @mark_constant, ptr noundef null) #34
  br label %36

36:                                               ; preds = %31, %12, %1, %34
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @mark_constant(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 45
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = and i32 %6, 67108864
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !194
  %15 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !306
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  store i32 1, ptr %15, align 8, !tbaa !306
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 3
  %20 = tail call i32 @for_each_rtx(ptr noundef nonnull %19, ptr noundef nonnull @mark_constant, ptr noundef null) #34
  br label %33

21:                                               ; preds = %9
  %22 = and i32 %6, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 4194304
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !416
  %32 = add i32 %31, -1
  store i32 %32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !416
  tail call fastcc void @output_constant_def_contents(ptr noundef nonnull %3)
  br label %33

33:                                               ; preds = %21, %18, %12, %30, %24, %2, %5
  %34 = phi i32 [ 0, %5 ], [ 0, %2 ], [ -1, %24 ], [ -1, %30 ], [ -1, %12 ], [ -1, %18 ], [ -1, %21 ]
  ret i32 %34
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_constant_pool_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !182 {
  %3 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !311
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %36 [
    i16 35, label %7
    i16 44, label %19
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %36

19:                                               ; preds = %13, %2
  %20 = phi ptr [ %4, %2 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !194
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3846, ptr noundef nonnull @.str.5) #34
  br label %27

27:                                               ; preds = %19, %26
  %28 = load i32, ptr %22, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %33 = load i32, ptr %32, align 8, !tbaa !194
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3848, ptr noundef nonnull @.str.5) #34
  br label %36

36:                                               ; preds = %27, %13, %2, %35, %31, %7
  tail call void @assemble_align(i32 noundef %1)
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !403
  %38 = load ptr, ptr @asm_out_file, align 8, !tbaa !183
  %39 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !437
  %41 = sext i32 %40 to i64
  tail call void %37(ptr noundef %38, ptr noundef nonnull @.str.86, i64 noundef %41) #34
  %42 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !310
  tail call fastcc void @output_constant_pool_2(i32 noundef %43, ptr noundef nonnull %4, i32 noundef %1)
  %44 = load i32, ptr %42, align 4, !tbaa !310
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !194
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 3
  %50 = icmp ult i32 %49, %1
  %51 = load ptr, ptr @in_section, align 8
  %52 = icmp ne ptr %51, null
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load i32, ptr %51, align 8, !tbaa !194
  %56 = and i32 %55, 32768
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @assemble_align(i32 noundef %1)
  br label %59

59:                                               ; preds = %58, %54, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_constant_pool_2(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !182 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !194
  switch i8 %6, label %49 [
    i8 8, label %7
    i8 9, label %7
    i8 2, label %14
    i8 3, label %14
    i8 4, label %14
    i8 5, label %14
    i8 6, label %14
    i8 7, label %14
    i8 17, label %19
    i8 12, label %19
    i8 13, label %19
    i8 14, label %19
    i8 15, label %19
    i8 16, label %19
  ]

7:                                                ; preds = %3, %3
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3772, ptr noundef nonnull @.str.5) #34
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  tail call void @assemble_real(ptr noundef nonnull byval(%struct.real_value) align 8 %13, i32 noundef %0, i32 noundef %2)
  br label %50

14:                                               ; preds = %3, %3, %3, %3, %3, %3
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %16 = load i8, ptr %15, align 1, !tbaa !194
  %17 = zext i8 %16 to i32
  %18 = tail call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef 1), !range !277
  br label %50

19:                                               ; preds = %3, %3, %3, %3, %3, %3
  %20 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %4
  %21 = load i8, ptr %20, align 1, !tbaa !194
  %22 = zext i8 %21 to i32
  %23 = zext i8 %21 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !194
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %2)
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 33
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3798, ptr noundef nonnull @.str.5) #34
  br label %33

33:                                               ; preds = %19, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !194
  %36 = load i32, ptr %35, align 8, !tbaa !576
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %47, %40 ]
  %42 = load ptr, ptr %34, align 8, !tbaa !194
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !183
  %45 = icmp eq i64 %41, 0
  %46 = select i1 %45, i32 %2, i32 %28
  tail call fastcc void @output_constant_pool_2(i32 noundef %22, ptr noundef %44, i32 noundef %46)
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %39
  br i1 %48, label %50, label %40, !llvm.loop !580

49:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3810, ptr noundef nonnull @.str.5) #34
  br label %50

50:                                               ; preds = %40, %33, %49, %14, %12
  ret void
}

declare ptr @staticp(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @narrowing_initializer_constant_valid_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !182 {
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -6
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %302

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  br label %14

14:                                               ; preds = %133, %9
  %15 = phi ptr [ %11, %9 ], [ %135, %133 ]
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %137 [
    i16 116, label %18
    i16 113, label %18
    i16 117, label %18
  ]

18:                                               ; preds = %14, %14, %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = load ptr, ptr @global_trees, align 16, !tbaa !183
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %133, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @vector_type_mode(ptr noundef nonnull %25) #34
  br label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !194
  %41 = icmp eq i8 %40, 2
  br i1 %41, label %96, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %24, align 8, !tbaa !194
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call i32 @vector_type_mode(ptr noundef nonnull %43) #34
  br label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i32 [ %48, %47 ], [ %53, %49 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !194
  %59 = icmp eq i8 %58, 3
  br i1 %59, label %96, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %24, align 8, !tbaa !194
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 14
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call i32 @vector_type_mode(ptr noundef nonnull %61) #34
  br label %72

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i32 [ %66, %65 ], [ %71, %67 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !194
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %24, align 8, !tbaa !194
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 14
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #34
  br label %90

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  br label %90

90:                                               ; preds = %85, %83
  %91 = phi i32 [ %84, %83 ], [ %89, %85 ]
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !194
  %95 = icmp eq i8 %94, 12
  br i1 %95, label %96, label %133

96:                                               ; preds = %90, %72, %54, %36
  %97 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !194
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 14
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = tail call i32 @vector_type_mode(ptr noundef nonnull %98) #34
  br label %109

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  br label %109

109:                                              ; preds = %104, %102
  %110 = phi i32 [ %103, %102 ], [ %108, %104 ]
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !194
  %114 = load ptr, ptr %24, align 8, !tbaa !194
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %114) #34
  br label %125

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !194
  %130 = icmp ugt i8 %113, %129
  %131 = select i1 %130, i32 3, i32 0
  %132 = select i1 %130, ptr %15, ptr %20
  br label %133

133:                                              ; preds = %18, %125, %90
  %134 = phi i32 [ 3, %90 ], [ %131, %125 ], [ 3, %18 ]
  %135 = phi ptr [ %15, %90 ], [ %132, %125 ], [ %15, %18 ]
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %14, label %137

137:                                              ; preds = %14, %133
  %138 = phi ptr [ %135, %133 ], [ %15, %14 ]
  br label %139

139:                                              ; preds = %258, %137
  %140 = phi ptr [ %13, %137 ], [ %259, %258 ]
  %141 = load i64, ptr %140, align 8
  %142 = trunc i64 %141 to i16
  switch i16 %142, label %262 [
    i16 116, label %143
    i16 113, label %143
    i16 117, label %143
  ]

143:                                              ; preds = %139, %139, %139
  %144 = getelementptr inbounds %struct.tree_exp, ptr %140, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !194
  %146 = load ptr, ptr @global_trees, align 16, !tbaa !183
  %147 = icmp eq ptr %145, %146
  br i1 %147, label %258, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !194
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 14
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = tail call i32 @vector_type_mode(ptr noundef nonnull %150) #34
  br label %161

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  br label %161

161:                                              ; preds = %156, %154
  %162 = phi i32 [ %155, %154 ], [ %160, %156 ]
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !194
  %166 = icmp eq i8 %165, 2
  br i1 %166, label %221, label %167

167:                                              ; preds = %161
  %168 = load ptr, ptr %149, align 8, !tbaa !194
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 14
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = tail call i32 @vector_type_mode(ptr noundef nonnull %168) #34
  br label %179

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  br label %179

179:                                              ; preds = %174, %172
  %180 = phi i32 [ %173, %172 ], [ %178, %174 ]
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !194
  %184 = icmp eq i8 %183, 3
  br i1 %184, label %221, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr %149, align 8, !tbaa !194
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 14
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = tail call i32 @vector_type_mode(ptr noundef nonnull %186) #34
  br label %197

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %197

197:                                              ; preds = %192, %190
  %198 = phi i32 [ %191, %190 ], [ %196, %192 ]
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !194
  %202 = icmp eq i8 %201, 10
  br i1 %202, label %221, label %203

203:                                              ; preds = %197
  %204 = load ptr, ptr %149, align 8, !tbaa !194
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = tail call i32 @vector_type_mode(ptr noundef nonnull %204) #34
  br label %215

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  br label %215

215:                                              ; preds = %210, %208
  %216 = phi i32 [ %209, %208 ], [ %214, %210 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !194
  %220 = icmp eq i8 %219, 12
  br i1 %220, label %221, label %258

221:                                              ; preds = %215, %197, %179, %161
  %222 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !194
  %224 = load i64, ptr %223, align 8
  %225 = and i64 %224, 65535
  %226 = icmp eq i64 %225, 14
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = tail call i32 @vector_type_mode(ptr noundef nonnull %223) #34
  br label %234

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.tree_type, ptr %223, i64 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  br label %234

234:                                              ; preds = %229, %227
  %235 = phi i32 [ %228, %227 ], [ %233, %229 ]
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !194
  %239 = load ptr, ptr %149, align 8, !tbaa !194
  %240 = load i64, ptr %239, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 14
  br i1 %242, label %243, label %245

243:                                              ; preds = %234
  %244 = tail call i32 @vector_type_mode(ptr noundef nonnull %239) #34
  br label %250

245:                                              ; preds = %234
  %246 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !194
  %255 = icmp ugt i8 %238, %254
  %256 = select i1 %255, ptr %140, ptr %145
  %257 = select i1 %255, i32 5, i32 0
  br label %258

258:                                              ; preds = %143, %250, %215
  %259 = phi ptr [ %140, %215 ], [ %256, %250 ], [ %140, %143 ]
  %260 = phi i32 [ 5, %215 ], [ %257, %250 ], [ 5, %143 ]
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %139, label %262

262:                                              ; preds = %139, %258
  %263 = phi ptr [ %259, %258 ], [ %140, %139 ]
  %264 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %138, ptr noundef nonnull %1, ptr noundef %2)
  %265 = icmp eq ptr %264, null
  br i1 %265, label %302, label %266

266:                                              ; preds = %262
  %267 = icmp eq ptr %2, null
  %268 = getelementptr inbounds ptr, ptr %2, i64 2
  %269 = select i1 %267, ptr null, ptr %268
  %270 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %263, ptr noundef nonnull %1, ptr noundef %269)
  %271 = icmp eq ptr %270, null
  br i1 %271, label %302, label %272

272:                                              ; preds = %266
  %273 = icmp eq ptr %264, %270
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %275 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  %276 = icmp eq ptr %264, %275
  br i1 %276, label %302, label %277

277:                                              ; preds = %274
  %278 = load i64, ptr %0, align 8
  %279 = and i64 %278, 65535
  %280 = icmp eq i64 %279, 64
  br i1 %280, label %302, label %281

281:                                              ; preds = %277, %272
  %282 = load i64, ptr %264, align 8
  %283 = and i64 %282, 65535
  %284 = trunc i64 %282 to i16
  switch i16 %284, label %302 [
    i16 30, label %285
    i16 28, label %293
  ]

285:                                              ; preds = %281
  %286 = load i64, ptr %270, align 8
  %287 = and i64 %286, 65535
  %288 = icmp eq i64 %287, 30
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !183
  br label %302

291:                                              ; preds = %285
  %292 = icmp eq i64 %283, 28
  br i1 %292, label %293, label %302

293:                                              ; preds = %281, %291
  %294 = load i64, ptr %270, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 28
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = tail call i32 @operand_equal_p(ptr noundef nonnull %264, ptr noundef nonnull %270, i32 noundef 1) #34
  %299 = icmp eq i32 %298, 0
  %300 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %301 = select i1 %299, ptr null, ptr %300
  br label %302

302:                                              ; preds = %281, %274, %277, %297, %3, %266, %293, %291, %262, %289
  %303 = phi ptr [ %290, %289 ], [ null, %3 ], [ null, %262 ], [ null, %291 ], [ null, %293 ], [ null, %266 ], [ %301, %297 ], [ %275, %277 ], [ %275, %274 ], [ null, %281 ]
  ret ptr %303
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compare_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !486 !PGOFuncName !581 {
  %3 = alloca %struct.addr_const, align 8
  %4 = alloca %struct.addr_const, align 8
  br label %5

5:                                                ; preds = %285, %2
  %6 = phi ptr [ %0, %2 ], [ %287, %285 ]
  %7 = phi ptr [ %1, %2 ], [ %289, %285 ]
  %8 = icmp eq ptr %6, null
  %9 = icmp eq ptr %7, null
  br i1 %8, label %10, label %12, !prof !582

10:                                               ; preds = %5
  %11 = zext i1 %9 to i32
  br label %148

12:                                               ; preds = %5
  br i1 %9, label %148, label %13, !prof !582

13:                                               ; preds = %12
  %14 = load i64, ptr %6, align 8
  %15 = load i64, ptr %7, align 8
  %16 = xor i64 %15, %14
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %148, !prof !488

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i16
  switch i16 %20, label %148 [
    i16 23, label %21
    i16 24, label %60
    i16 25, label %79
    i16 28, label %98
    i16 26, label %141
    i16 51, label %158
    i16 121, label %252
    i16 122, label %252
    i16 63, label %270
    i16 66, label %270
    i16 64, label %270
    i16 111, label %270
    i16 116, label %285
    i16 113, label %285
    i16 118, label %285
  ], !prof !583

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !194
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, %25
  %31 = and i32 %30, 1023
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %148

33:                                               ; preds = %21
  %34 = load i64, ptr %23, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #34
  br label %42

39:                                               ; preds = %33
  %40 = lshr i32 %25, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = load ptr, ptr %26, align 8, !tbaa !194
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #34
  br label %55

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = icmp eq i32 %43, %56
  br i1 %57, label %58, label %148

58:                                               ; preds = %55
  %59 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %6, ptr noundef nonnull %7) #34
  br label %148

60:                                               ; preds = %19
  %61 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !194
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, %64
  %70 = and i32 %69, 1023
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %148

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.tree_real_cst, ptr %6, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !194
  %75 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !194
  %77 = tail call zeroext i8 @real_identical(ptr noundef %74, ptr noundef %76) #34
  %78 = zext i8 %77 to i32
  br label %148

79:                                               ; preds = %19
  %80 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !194
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !194
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %83
  %89 = and i32 %88, 1023
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.tree_fixed_cst, ptr %6, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !194
  %94 = getelementptr inbounds %struct.tree_fixed_cst, ptr %7, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !194
  %96 = tail call zeroext i8 @fixed_identical(ptr noundef %93, ptr noundef %95) #34
  %97 = zext i8 %96 to i32
  br label %148

98:                                               ; preds = %19
  %99 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !194
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 14
  br i1 %103, label %104, label %106, !prof !582

104:                                              ; preds = %98
  %105 = tail call i32 @vector_type_mode(ptr noundef nonnull %100) #34
  br label %111

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.tree_type, ptr %100, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  br label %111

111:                                              ; preds = %106, %104
  %112 = phi i32 [ %105, %104 ], [ %110, %106 ]
  %113 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !194
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120, !prof !582

118:                                              ; preds = %111
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %114) #34
  br label %125

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = icmp eq i32 %112, %126
  br i1 %127, label %128, label %148, !prof !488

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tree_string, ptr %6, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !194
  %131 = getelementptr inbounds %struct.tree_string, ptr %7, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !194
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %148, !prof !488

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.tree_string, ptr %6, i64 0, i32 2
  %136 = getelementptr inbounds %struct.tree_string, ptr %7, i64 0, i32 2
  %137 = sext i32 %130 to i64
  %138 = tail call i32 @bcmp(ptr nonnull %135, ptr nonnull %136, i64 %137), !prof !584
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  br label %148

141:                                              ; preds = %19
  %142 = getelementptr inbounds %struct.tree_complex, ptr %6, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !194
  %144 = getelementptr inbounds %struct.tree_complex, ptr %7, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !194
  %146 = tail call fastcc i32 @compare_constant(ptr noundef %143, ptr noundef %145)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %10, %58, %72, %91, %268, %12, %13, %21, %55, %60, %79, %125, %134, %128, %141, %222, %207, %198, %158, %270, %19, %203, %233, %245, %229, %248, %277, %150
  %149 = phi i32 [ %157, %150 ], [ %284, %277 ], [ %11, %10 ], [ %269, %268 ], [ %97, %91 ], [ %78, %72 ], [ %59, %58 ], [ 0, %12 ], [ 0, %13 ], [ 0, %21 ], [ 0, %55 ], [ 0, %60 ], [ 0, %79 ], [ 0, %125 ], [ 0, %128 ], [ %140, %134 ], [ 0, %141 ], [ 0, %158 ], [ 0, %198 ], [ 0, %207 ], [ 0, %222 ], [ 0, %270 ], [ 0, %19 ], [ 0, %203 ], [ 0, %245 ], [ 0, %233 ], [ 1, %229 ], [ 0, %248 ]
  ret i32 %149

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.tree_complex, ptr %6, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !194
  %153 = getelementptr inbounds %struct.tree_complex, ptr %7, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !194
  %155 = tail call fastcc i32 @compare_constant(ptr noundef %152, ptr noundef %154)
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  br label %148

158:                                              ; preds = %19
  %159 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !194
  %161 = load i64, ptr %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = and i32 %162, 65535
  %164 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !194
  %166 = load i64, ptr %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %148

170:                                              ; preds = %158
  %171 = icmp eq i32 %163, 15
  br i1 %171, label %172, label %207

172:                                              ; preds = %170
  %173 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %160) #34
  %174 = load ptr, ptr %159, align 8, !tbaa !194
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 14
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = tail call i32 @vector_type_mode(ptr noundef nonnull %174) #34
  br label %185

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  br label %185

185:                                              ; preds = %180, %178
  %186 = phi i32 [ %179, %178 ], [ %184, %180 ]
  %187 = load ptr, ptr %164, align 8, !tbaa !194
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = tail call i32 @vector_type_mode(ptr noundef nonnull %187) #34
  br label %198

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  br label %198

198:                                              ; preds = %193, %191
  %199 = phi i32 [ %192, %191 ], [ %197, %193 ]
  %200 = icmp ne i32 %186, %199
  %201 = icmp eq i64 %173, -1
  %202 = select i1 %200, i1 true, i1 %201
  br i1 %202, label %148, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %164, align 8, !tbaa !194
  %205 = tail call i64 @int_size_in_bytes(ptr noundef %204) #34
  %206 = icmp eq i64 %173, %205
  br i1 %206, label %209, label %148

207:                                              ; preds = %170
  %208 = icmp eq ptr %160, %165
  br i1 %208, label %209, label %148

209:                                              ; preds = %203, %207
  %210 = getelementptr inbounds %struct.tree_constructor, ptr %6, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !194
  %212 = getelementptr inbounds %struct.tree_constructor, ptr %7, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !194
  %214 = icmp eq ptr %211, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %209
  %216 = load i32, ptr %211, align 8, !tbaa !352
  br label %217

217:                                              ; preds = %209, %215
  %218 = phi i32 [ %216, %215 ], [ 0, %209 ]
  %219 = icmp eq ptr %213, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %213, align 8, !tbaa !352
  br label %222

222:                                              ; preds = %217, %220
  %223 = phi i32 [ %221, %220 ], [ 0, %217 ]
  %224 = icmp eq i32 %218, %223
  br i1 %224, label %225, label %148

225:                                              ; preds = %222, %250
  %226 = phi i64 [ %251, %250 ], [ 0, %222 ]
  br i1 %214, label %229, label %227

227:                                              ; preds = %225
  %228 = load i32, ptr %211, align 8, !tbaa !352
  br label %229

229:                                              ; preds = %225, %227
  %230 = phi i32 [ %228, %227 ], [ 0, %225 ]
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %226, %231
  br i1 %232, label %233, label %148

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %211, i64 0, i32 2, i64 %226, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !356
  %236 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %213, i64 0, i32 2, i64 %226, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !356
  %238 = tail call fastcc i32 @compare_constant(ptr noundef %235, ptr noundef %237)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %148, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %213, i64 0, i32 2, i64 %226
  %242 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %211, i64 0, i32 2, i64 %226
  %243 = load ptr, ptr %242, align 8, !tbaa !354
  %244 = load ptr, ptr %241, align 8, !tbaa !354
  br i1 %171, label %245, label %248

245:                                              ; preds = %240
  %246 = tail call fastcc i32 @compare_constant(ptr noundef %243, ptr noundef %244)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %148, label %250

248:                                              ; preds = %240
  %249 = icmp eq ptr %243, %244
  br i1 %249, label %250, label %148

250:                                              ; preds = %248, %245
  %251 = add nuw nsw i64 %226, 1
  br label %225, !llvm.loop !585

252:                                              ; preds = %19, %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #34
  call fastcc void @decode_addr_const(ptr noundef nonnull %6, ptr noundef nonnull %3)
  call fastcc void @decode_addr_const(ptr noundef nonnull %7, ptr noundef nonnull %4)
  %253 = getelementptr inbounds %struct.addr_const, ptr %3, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !422
  %255 = getelementptr inbounds %struct.addr_const, ptr %4, i64 0, i32 1
  %256 = load i64, ptr %255, align 8, !tbaa !422
  %257 = icmp eq i64 %254, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %252
  %259 = load ptr, ptr %3, align 8, !tbaa !420
  %260 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !194
  %262 = load ptr, ptr %4, align 8, !tbaa !420
  %263 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !194
  %265 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %261, ptr noundef nonnull dereferenceable(1) %264)
  %266 = icmp eq i32 %265, 0
  %267 = zext i1 %266 to i32
  br label %268

268:                                              ; preds = %258, %252
  %269 = phi i32 [ 0, %252 ], [ %267, %258 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #34
  br label %148

270:                                              ; preds = %19, %19, %19, %19
  %271 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !194
  %273 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !194
  %275 = tail call fastcc i32 @compare_constant(ptr noundef %272, ptr noundef %274)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %148, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !194
  %280 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !194
  %282 = tail call fastcc i32 @compare_constant(ptr noundef %279, ptr noundef %281)
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  br label %148

285:                                              ; preds = %19, %19, %19
  %286 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !194
  %288 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !194
  br label %5
}

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fixed_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @compute_reloc_for_rtx_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #29 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %19 [
    i16 45, label %6
    i16 44, label %13
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load i32, ptr %7, align 8, !tbaa !194
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 2, i32 1
  %12 = load i32, ptr %1, align 4, !tbaa !198
  br label %15

13:                                               ; preds = %2
  %14 = load i32, ptr %1, align 4, !tbaa !198
  br label %15

15:                                               ; preds = %6, %13
  %16 = phi i32 [ 1, %13 ], [ %12, %6 ]
  %17 = phi i32 [ %14, %13 ], [ %11, %6 ]
  %18 = or i32 %17, %16
  store i32 %18, ptr %1, align 4, !tbaa !198
  br label %19

19:                                               ; preds = %15, %2
  ret i32 0
}

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #31

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind }
attributes #33 = { nofree nounwind willreturn memory(argmem: read) }
attributes #34 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!181}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!35 = !{ptr @get_section, ptr @htab_hash_string, i64 4}
!36 = !{ptr @get_section, ptr @htab_find_slot_with_hash, i64 4}
!37 = !{ptr @get_section, ptr @ggc_alloc_stat, i64 2}
!38 = !{ptr @get_section, ptr @ggc_alloc_string, i64 2}
!39 = !{ptr @set_user_assembler_name, ptr @strlen, i64 2}
!40 = !{ptr @set_user_assembler_name, ptr @strcpy, i64 2}
!41 = !{ptr @set_user_assembler_name, ptr @get_identifier, i64 2}
!42 = !{ptr @set_user_assembler_name, ptr @change_decl_assembler_name, i64 2}
!43 = !{ptr @set_user_assembler_name, ptr @set_decl_rtl, i64 2}
!44 = !{ptr @align_variable, ptr @ix86_data_alignment, i64 78}
!45 = !{ptr @align_variable, ptr @ix86_constant_alignment, i64 78}
!46 = !{ptr @make_decl_rtl, ptr @decl_assembler_name, i64 135}
!47 = !{ptr @make_decl_rtl, ptr @gen_rtx_fmt_s00_stat, i64 135}
!48 = !{ptr @make_decl_rtl, ptr @gen_rtx_MEM, i64 135}
!49 = !{ptr @make_decl_rtl, ptr @set_mem_attributes, i64 46}
!50 = !{ptr @make_decl_rtl, ptr @set_decl_rtl, i64 135}
!51 = !{ptr @switch_to_section, ptr @strcmp, i64 3}
!52 = !{ptr @switch_to_section, ptr @default_elf_asm_named_section, i64 4}
!53 = !{ptr @switch_to_section, ptr @output_section_asm_op, i64 50}
!54 = !{ptr @notice_global_symbol, ptr @make_decl_rtl, i64 1}
!55 = !{ptr @notice_global_symbol, ptr @default_strip_name_encoding, i64 1}
!56 = !{ptr @notice_global_symbol, ptr @ggc_alloc_string, i64 1}
!57 = !{ptr @assemble_start_function, ptr @app_disable, i64 38}
!58 = !{ptr @assemble_start_function, ptr @switch_to_section, i64 38}
!59 = !{ptr @assemble_start_function, ptr @floor_log2, i64 38}
!60 = !{ptr @assemble_start_function, ptr @optimize_function_for_speed_p, i64 38}
!61 = !{ptr @assemble_start_function, ptr @fprintf, i64 76}
!62 = !{ptr @assemble_start_function, ptr @notice_global_symbol, i64 38}
!63 = !{ptr @assemble_start_function, ptr @globalize_decl, i64 38}
!64 = !{ptr @assemble_start_function, ptr @fwrite, i64 114}
!65 = !{ptr @assemble_start_function, ptr @maybe_get_identifier, i64 76}
!66 = !{ptr @assemble_start_function, ptr @ultimate_transparent_alias_target, i64 34}
!67 = !{ptr @assemble_start_function, ptr @fputs, i64 42}
!68 = !{ptr @assemble_start_function, ptr @asm_fprintf, i64 34}
!69 = !{ptr @assemble_start_function, ptr @putc, i64 38}
!70 = !{ptr @assemble_name, ptr @maybe_get_identifier, i64 332645}
!71 = !{ptr @assemble_name, ptr @ultimate_transparent_alias_target, i64 146106}
!72 = !{ptr @assemble_name, ptr @fputs, i64 186539}
!73 = !{ptr @assemble_name, ptr @asm_fprintf, i64 146106}
!74 = !{ptr @globalize_decl, ptr @default_globalize_decl_name, i64 39}
!75 = !{ptr @assemble_end_function, ptr @fwrite, i64 76}
!76 = !{ptr @assemble_end_function, ptr @maybe_get_identifier, i64 76}
!77 = !{ptr @assemble_end_function, ptr @ultimate_transparent_alias_target, i64 34}
!78 = !{ptr @assemble_end_function, ptr @fputs, i64 42}
!79 = !{ptr @assemble_end_function, ptr @asm_fprintf, i64 34}
!80 = !{ptr @assemble_end_function, ptr @putc, i64 38}
!81 = !{ptr @assemble_zeros, ptr @fprintf, i64 1}
!82 = !{ptr @assemble_string, ptr @fprintf, i64 41}
!83 = !{ptr @assemble_string, ptr @putc, i64 798}
!84 = !{ptr @assemble_string, ptr @fwrite, i64 41}
!85 = !{ptr @assemble_variable, ptr @make_decl_rtl, i64 1}
!86 = !{ptr @assemble_variable, ptr @app_disable, i64 39}
!87 = !{ptr @assemble_variable, ptr @host_integerp, i64 39}
!88 = !{ptr @assemble_variable, ptr @notice_global_symbol, i64 1}
!89 = !{ptr @assemble_variable, ptr @align_variable, i64 39}
!90 = !{ptr @assemble_variable, ptr @set_mem_align, i64 39}
!91 = !{ptr @assemble_variable, ptr @get_variable_section, i64 39}
!92 = !{ptr @assemble_variable, ptr @globalize_decl, i64 1}
!93 = !{ptr @assemble_variable, ptr @output_addressed_constants, i64 39}
!94 = !{ptr @assemble_variable, ptr @switch_to_section, i64 39}
!95 = !{ptr @assemble_variable, ptr @floor_log2, i64 2}
!96 = !{ptr @assemble_variable, ptr @fprintf, i64 1}
!97 = !{ptr @assemble_variable, ptr @assemble_variable_contents, i64 39}
!98 = !{ptr @get_variable_section, ptr @compute_reloc_for_constant, i64 39}
!99 = !{ptr @get_variable_section, ptr @default_elf_select_section, i64 39}
!100 = !{ptr @assemble_variable_contents, ptr @fwrite, i64 156}
!101 = !{ptr @assemble_variable_contents, ptr @maybe_get_identifier, i64 117}
!102 = !{ptr @assemble_variable_contents, ptr @ultimate_transparent_alias_target, i64 51}
!103 = !{ptr @assemble_variable_contents, ptr @fputs, i64 66}
!104 = !{ptr @assemble_variable_contents, ptr @asm_fprintf, i64 51}
!105 = !{ptr @assemble_variable_contents, ptr @fprintf, i64 78}
!106 = !{ptr @assemble_variable_contents, ptr @putc, i64 39}
!107 = !{ptr @assemble_variable_contents, ptr @int_size_in_bytes, i64 39}
!108 = !{ptr @assemble_variable_contents, ptr @initializer_zerop, i64 39}
!109 = !{ptr @assemble_variable_contents, ptr @tree_low_cst, i64 39}
!110 = !{ptr @assemble_variable_contents, ptr @output_constant, i64 38}
!111 = !{ptr @assemble_variable_contents, ptr @assemble_zeros, i64 1}
!112 = !{ptr @process_pending_assemble_externals, ptr @decl_assembler_name, i64 42}
!113 = !{ptr @process_pending_assemble_externals, ptr @default_binds_local_p, i64 42}
!114 = !{ptr @assemble_external, ptr @value_member, i64 202810}
!115 = !{ptr @assemble_external, ptr @tree_cons_stat, i64 42}
!116 = !{ptr @mark_decl_referenced, ptr @cgraph_node, i64 68727}
!117 = !{ptr @mark_decl_referenced, ptr @cgraph_mark_needed_node, i64 52567}
!118 = !{ptr @mark_decl_referenced, ptr @varpool_node, i64 77206}
!119 = !{ptr @mark_decl_referenced, ptr @varpool_mark_needed_node, i64 77206}
!120 = !{ptr @output_constant_def, ptr @const_hash_1, i64 63}
!121 = !{ptr @output_constant_def, ptr @htab_find_slot_with_hash, i64 63}
!122 = !{ptr @output_constant_def, ptr @ggc_alloc_stat, i64 3}
!123 = !{ptr @output_constant_def, ptr @copy_constant, i64 3}
!124 = !{ptr @output_constant_def, ptr @sprintf, i64 3}
!125 = !{ptr @output_constant_def, ptr @ggc_alloc_string, i64 3}
!126 = !{ptr @output_constant_def, ptr @gen_rtx_fmt_s00_stat, i64 3}
!127 = !{ptr @output_constant_def, ptr @gen_rtx_MEM, i64 3}
!128 = !{ptr @output_constant_def, ptr @set_mem_attributes, i64 3}
!129 = !{ptr @output_constant_def, ptr @set_mem_alias_set, i64 6}
!130 = !{ptr @output_constant_def, ptr @output_constant_def_contents, i64 3}
!131 = !{ptr @init_varasm_status, ptr @ggc_alloc_stat, i64 40}
!132 = !{ptr @init_varasm_status, ptr @htab_create_alloc, i64 40}
!133 = !{ptr @output_shared_constant_pool, ptr @output_constant_pool_contents, i64 1}
!134 = !{ptr @initializer_constant_valid_p, ptr @initializer_constant_valid_p_1, i64 1}
!135 = !{ptr @output_constant, ptr @int_size_in_bytes, i64 41}
!136 = !{ptr @output_constant, ptr @assemble_string, i64 41}
!137 = !{ptr @init_varasm_once, ptr @htab_create_alloc, i64 4}
!138 = !{ptr @init_varasm_once, ptr @new_alias_set, i64 1}
!139 = !{ptr @init_varasm_once, ptr @ggc_alloc_stat, i64 9}
!140 = !{ptr @section_entry_eq, ptr @strcmp, i64 2}
!141 = !{ptr @const_desc_eq, ptr @compare_constant, i64 60}
!142 = !{ptr @output_section_asm_op, ptr @fprintf, i64 50}
!143 = !{ptr @default_elf_asm_named_section, ptr @fprintf, i64 7}
!144 = !{ptr @default_elf_asm_named_section, ptr @putc, i64 2}
!145 = !{ptr @default_elf_select_section, ptr @categorize_decl_for_section, i64 42}
!146 = !{ptr @default_elf_select_section, ptr @mergeable_string_section, i64 3}
!147 = !{ptr @mergeable_string_section, ptr @int_size_in_bytes, i64 3}
!148 = !{ptr @mergeable_string_section, ptr @sprintf, i64 3}
!149 = !{ptr @mergeable_string_section, ptr @get_section, i64 3}
!150 = !{ptr @default_encode_section_info, ptr @default_binds_local_p, i64 138}
!151 = !{ptr @default_binds_local_p, ptr @lookup_attribute, i64 317376}
!152 = !{ptr @default_globalize_label, ptr @fwrite, i64 39}
!153 = !{ptr @default_globalize_label, ptr @maybe_get_identifier, i64 39}
!154 = !{ptr @default_globalize_label, ptr @ultimate_transparent_alias_target, i64 17}
!155 = !{ptr @default_globalize_label, ptr @fputs, i64 22}
!156 = !{ptr @default_globalize_label, ptr @asm_fprintf, i64 17}
!157 = !{ptr @default_globalize_label, ptr @putc, i64 39}
!158 = !{ptr @default_globalize_decl_name, ptr @default_globalize_label, i64 39}
!159 = !{ptr @default_internal_label, ptr @strlen, i64 83456}
!160 = !{ptr @default_internal_label, ptr @sprintf, i64 83456}
!161 = !{ptr @default_internal_label, ptr @fputs, i64 83456}
!162 = !{ptr @default_internal_label, ptr @fwrite, i64 83456}
!163 = !{ptr @default_file_start, ptr @output_file_directive, i64 1}
!164 = !{ptr @file_end_indicate_exec_stack, ptr @get_section, i64 1}
!165 = !{ptr @file_end_indicate_exec_stack, ptr @switch_to_section, i64 1}
!166 = !{ptr @output_object_blocks, ptr @htab_traverse, i64 1}
!167 = !{ptr @copy_constant, ptr @copy_node_stat, i64 3}
!168 = !{ptr @get_constant_section, ptr @compute_reloc_for_constant, i64 3}
!169 = !{ptr @get_constant_section, ptr @ix86_constant_alignment, i64 3}
!170 = !{ptr @get_constant_section, ptr @default_elf_select_section, i64 3}
!171 = !{ptr @output_constant_def_contents, ptr @output_addressed_constants, i64 3}
!172 = !{ptr @output_constant_def_contents, ptr @get_constant_section, i64 3}
!173 = !{ptr @output_constant_def_contents, ptr @switch_to_section, i64 3}
!174 = !{ptr @output_constant_def_contents, ptr @ix86_constant_alignment, i64 3}
!175 = !{ptr @output_constant_def_contents, ptr @assemble_constant_contents, i64 3}
!176 = !{ptr @assemble_constant_contents, ptr @int_size_in_bytes, i64 3}
!177 = !{ptr @assemble_constant_contents, ptr @assemble_name, i64 3}
!178 = !{ptr @assemble_constant_contents, ptr @fwrite, i64 3}
!179 = !{ptr @assemble_constant_contents, ptr @output_constant, i64 3}
!180 = !{ptr @compare_constant, ptr @bcmp, i64 60}
!181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!182 = !{!"function_entry_count", i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"any pointer", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !{!188, !184, i64 8}
!188 = !{!"_IO_FILE", !189, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !189, i64 112, !189, i64 116, !190, i64 120, !191, i64 128, !185, i64 130, !185, i64 131, !184, i64 136, !190, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !190, i64 184, !189, i64 192, !185, i64 196}
!189 = !{!"int", !185, i64 0}
!190 = !{!"long", !185, i64 0}
!191 = !{!"short", !185, i64 0}
!192 = !{!188, !184, i64 16}
!193 = !{!"branch_weights", i32 2000, i32 1}
!194 = !{!185, !185, i64 0}
!195 = !{!188, !184, i64 40}
!196 = !{!188, !184, i64 48}
!197 = !{!188, !189, i64 0}
!198 = !{!189, !189, i64 0}
!199 = distinct !{!199, !200, !201}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !{!"llvm.loop.unroll.disable"}
!202 = !{!203, !184, i64 448}
!203 = !{!"lang_hooks", !184, i64 0, !190, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !184, i64 184, !184, i64 192, !184, i64 200, !184, i64 208, !184, i64 216, !184, i64 224, !184, i64 232, !204, i64 240, !205, i64 248, !206, i64 256, !207, i64 272, !208, i64 432, !209, i64 560, !184, i64 584, !184, i64 592, !184, i64 600, !184, i64 608, !184, i64 616, !184, i64 624, !184, i64 632, !184, i64 640, !184, i64 648, !184, i64 656, !184, i64 664, !185, i64 672}
!204 = !{!"lang_hooks_for_tree_inlining", !184, i64 0}
!205 = !{!"lang_hooks_for_callgraph", !184, i64 0}
!206 = !{!"lang_hooks_for_tree_dump", !184, i64 0, !184, i64 8}
!207 = !{!"lang_hooks_for_decls", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152}
!208 = !{!"lang_hooks_for_types", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !185, i64 120}
!209 = !{!"lang_hooks_for_lto", !184, i64 0, !184, i64 8, !184, i64 16}
!210 = !{!211, !185, i64 2028}
!211 = !{!"gcc_target", !212, i64 0, !214, i64 368, !215, i64 664, !189, i64 744, !184, i64 752, !184, i64 760, !184, i64 768, !184, i64 776, !184, i64 784, !184, i64 792, !184, i64 800, !184, i64 808, !184, i64 816, !184, i64 824, !184, i64 832, !184, i64 840, !184, i64 848, !184, i64 856, !184, i64 864, !184, i64 872, !184, i64 880, !184, i64 888, !184, i64 896, !184, i64 904, !184, i64 912, !184, i64 920, !184, i64 928, !184, i64 936, !184, i64 944, !184, i64 952, !184, i64 960, !184, i64 968, !184, i64 976, !184, i64 984, !184, i64 992, !184, i64 1000, !184, i64 1008, !184, i64 1016, !184, i64 1024, !184, i64 1032, !184, i64 1040, !184, i64 1048, !184, i64 1056, !190, i64 1064, !190, i64 1072, !184, i64 1080, !184, i64 1088, !184, i64 1096, !184, i64 1104, !184, i64 1112, !184, i64 1120, !184, i64 1128, !184, i64 1136, !184, i64 1144, !184, i64 1152, !184, i64 1160, !184, i64 1168, !216, i64 1176, !184, i64 1232, !184, i64 1240, !184, i64 1248, !184, i64 1256, !184, i64 1264, !184, i64 1272, !184, i64 1280, !184, i64 1288, !184, i64 1296, !184, i64 1304, !184, i64 1312, !184, i64 1320, !184, i64 1328, !184, i64 1336, !184, i64 1344, !184, i64 1352, !184, i64 1360, !184, i64 1368, !184, i64 1376, !184, i64 1384, !184, i64 1392, !184, i64 1400, !184, i64 1408, !184, i64 1416, !184, i64 1424, !184, i64 1432, !184, i64 1440, !184, i64 1448, !184, i64 1456, !190, i64 1464, !217, i64 1472, !184, i64 1664, !184, i64 1672, !184, i64 1680, !184, i64 1688, !184, i64 1696, !184, i64 1704, !184, i64 1712, !184, i64 1720, !184, i64 1728, !184, i64 1736, !184, i64 1744, !184, i64 1752, !184, i64 1760, !184, i64 1768, !184, i64 1776, !218, i64 1784, !219, i64 1792, !220, i64 1896, !221, i64 1968, !184, i64 2016, !185, i64 2024, !185, i64 2025, !185, i64 2026, !185, i64 2027, !185, i64 2028, !185, i64 2029, !185, i64 2030, !185, i64 2031, !185, i64 2032, !185, i64 2033, !185, i64 2034, !185, i64 2035}
!212 = !{!"asm_out", !184, i64 0, !184, i64 8, !184, i64 16, !213, i64 24, !213, i64 56, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !184, i64 184, !184, i64 192, !184, i64 200, !184, i64 208, !184, i64 216, !184, i64 224, !184, i64 232, !184, i64 240, !184, i64 248, !184, i64 256, !184, i64 264, !184, i64 272, !184, i64 280, !184, i64 288, !184, i64 296, !184, i64 304, !184, i64 312, !184, i64 320, !184, i64 328, !184, i64 336, !184, i64 344, !184, i64 352, !184, i64 360}
!213 = !{!"asm_int_op", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24}
!214 = !{!"sched", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !184, i64 184, !184, i64 192, !184, i64 200, !184, i64 208, !184, i64 216, !184, i64 224, !184, i64 232, !184, i64 240, !184, i64 248, !184, i64 256, !184, i64 264, !184, i64 272, !184, i64 280, !184, i64 288}
!215 = !{!"vectorize", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72}
!216 = !{!"addr_space", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48}
!217 = !{!"calls", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !184, i64 184}
!218 = !{!"c", !184, i64 0}
!219 = !{!"cxx", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96}
!220 = !{!"emutls", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !185, i64 64, !185, i64 65}
!221 = !{!"target_option_hooks", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40}
!222 = !{!223, !189, i64 8}
!223 = !{!"tree_map", !224, i64 0, !189, i64 8, !184, i64 16}
!224 = !{!"tree_map_base", !184, i64 0}
!225 = !{!223, !184, i64 0}
!226 = !{!223, !184, i64 16}
!227 = !{!203, !184, i64 432}
!228 = !{!211, !184, i64 1944}
!229 = !{!211, !185, i64 1960}
!230 = !{!211, !184, i64 1904}
!231 = !{!"function_entry_count", i64 4}
!232 = !{!"branch_weights", i32 2, i32 2}
!233 = !{!"branch_weights", i32 2, i32 0}
!234 = !{!235, !184, i64 240}
!235 = !{!"rtl_data", !236, i64 0, !237, i64 40, !238, i64 96, !239, i64 112, !241, i64 208, !242, i64 248, !189, i64 312, !184, i64 320, !184, i64 328, !184, i64 336, !184, i64 344, !184, i64 352, !184, i64 360, !184, i64 368, !184, i64 376, !184, i64 384, !184, i64 392, !190, i64 400, !184, i64 408, !184, i64 416, !184, i64 424, !189, i64 432, !189, i64 436, !189, i64 440, !189, i64 444, !189, i64 448, !189, i64 452, !184, i64 456, !185, i64 464, !185, i64 465, !185, i64 466, !185, i64 467, !185, i64 468, !185, i64 469, !185, i64 470, !185, i64 471, !185, i64 472, !185, i64 473, !185, i64 474, !185, i64 475, !185, i64 476, !185, i64 477, !185, i64 478, !185, i64 479, !185, i64 480, !185, i64 481, !185, i64 482, !185, i64 483, !185, i64 484, !185, i64 485}
!236 = !{!"expr_status", !189, i64 0, !189, i64 4, !189, i64 8, !184, i64 16, !184, i64 24, !184, i64 32}
!237 = !{!"emit_status", !189, i64 0, !189, i64 4, !184, i64 8, !184, i64 16, !184, i64 24, !189, i64 32, !189, i64 36, !189, i64 40, !189, i64 44, !184, i64 48}
!238 = !{!"varasm_status", !184, i64 0, !189, i64 8}
!239 = !{!"incoming_args", !189, i64 0, !189, i64 4, !189, i64 8, !184, i64 16, !240, i64 24, !184, i64 88}
!240 = !{!"ix86_args", !189, i64 0, !189, i64 4, !189, i64 8, !189, i64 12, !189, i64 16, !189, i64 20, !189, i64 24, !189, i64 28, !189, i64 32, !189, i64 36, !189, i64 40, !189, i64 44, !189, i64 48, !189, i64 52, !189, i64 56, !189, i64 60}
!241 = !{!"function_subsections", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32}
!242 = !{!"rtl_eh", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !185, i64 48}
!243 = !{!211, !184, i64 968}
!244 = !{!211, !184, i64 1136}
!245 = !{!211, !184, i64 232}
!246 = !{!"branch_weights", i32 38, i32 0}
!247 = !{!"branch_weights", i32 0, i32 38}
!248 = !{!"function_entry_count", i64 23}
!249 = !{!"branch_weights", i32 23, i32 0}
!250 = !{!"branch_weights", i32 0, i32 23}
!251 = !{!"function_entry_count", i64 46}
!252 = !{!"branch_weights", i32 0, i32 46}
!253 = !{!"branch_weights", i32 46, i32 0}
!254 = !{i64 0, i64 65}
!255 = !{!"function_entry_count", i64 2}
!256 = !{!191, !191, i64 0}
!257 = distinct !{!257, !200, !201}
!258 = distinct !{!258, !200, !201}
!259 = !{!260, !184, i64 0}
!260 = !{!"", !184, i64 0, !189, i64 8}
!261 = !{!260, !189, i64 8}
!262 = distinct !{!262, !200, !201}
!263 = !{!"function_entry_count", i64 78}
!264 = !{!"branch_weights", i32 78, i32 0}
!265 = !{!"branch_weights", i32 0, i32 78}
!266 = !{!"function_entry_count", i64 135}
!267 = !{!"branch_weights", i32 135, i32 0, i32 0}
!268 = !{!"branch_weights", i32 0, i32 135}
!269 = !{!"branch_weights", i32 135, i32 0}
!270 = !{!211, !184, i64 1128}
!271 = !{!"branch_weights", i32 89, i32 46}
!272 = distinct !{!272, !200, !201}
!273 = !{!"branch_weights", i32 46, i32 89}
!274 = !{!211, !184, i64 1184}
!275 = !{!"VP", i32 0, i64 135, i64 -6774708585206560366, i64 135}
!276 = !{!"VP", i32 0, i64 135, i64 -7147166255639797249, i64 135}
!277 = !{i8 0, i8 2}
!278 = !{!"function_entry_count", i64 150}
!279 = !{!"branch_weights", i32 96, i32 54}
!280 = !{!"branch_weights", i32 54, i32 0}
!281 = !{!"branch_weights", i32 0, i32 4, i32 50, i32 0}
!282 = !{!"branch_weights", i32 1, i32 3}
!283 = !{!"branch_weights", i32 0, i32 3}
!284 = !{!211, !184, i64 200}
!285 = !{!"VP", i32 0, i64 4, i64 6381378066282184349, i64 4}
!286 = !{!"VP", i32 0, i64 50, i64 3062244779437780318, i64 50}
!287 = !{!211, !184, i64 88}
!288 = distinct !{!288, !200, !201}
!289 = !{!"function_entry_count", i64 812}
!290 = !{!"branch_weights", i32 618, i32 194}
!291 = !{!"branch_weights", i32 561, i32 57}
!292 = !{!"branch_weights", i32 1, i32 56}
!293 = !{!"branch_weights", i32 0, i32 1}
!294 = !{!"branch_weights", i32 0, i32 1, i32 0}
!295 = !{!"branch_weights", i32 1, i32 0}
!296 = !{!"VP", i32 0, i64 1, i64 -5257308578500246814, i64 1}
!297 = !{!"function_entry_count", i64 38}
!298 = !{!235, !184, i64 208}
!299 = !{!235, !184, i64 216}
!300 = !{!235, !184, i64 224}
!301 = !{!235, !184, i64 232}
!302 = !{!235, !184, i64 96}
!303 = !{!235, !185, i64 472}
!304 = distinct !{!304, !200, !201}
!305 = distinct !{!305, !200, !201}
!306 = !{!307, !189, i64 56}
!307 = !{!"constant_descriptor_rtx", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !190, i64 32, !189, i64 40, !189, i64 44, !189, i64 48, !189, i64 52, !189, i64 56}
!308 = !{!307, !184, i64 16}
!309 = !{!211, !184, i64 224}
!310 = !{!307, !189, i64 44}
!311 = !{!307, !184, i64 24}
!312 = !{!307, !189, i64 48}
!313 = distinct !{!313, !200, !201}
!314 = !{!315, !184, i64 8}
!315 = !{!"function", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !189, i64 104, !189, i64 108, !189, i64 112, !189, i64 116, !189, i64 120, !189, i64 124, !184, i64 128, !189, i64 136, !189, i64 137, !189, i64 138, !189, i64 138, !189, i64 138, !189, i64 138, !189, i64 138, !189, i64 138, !189, i64 138, !189, i64 139, !189, i64 139, !189, i64 139, !189, i64 139, !189, i64 139, !189, i64 139, !189, i64 139}
!316 = !{!317, !184, i64 0}
!317 = !{!"control_flow_graph", !184, i64 0, !184, i64 8, !184, i64 16, !189, i64 24, !189, i64 28, !189, i64 32, !184, i64 40, !189, i64 48, !185, i64 52, !185, i64 60, !189, i64 68, !189, i64 72}
!318 = !{!319, !184, i64 56}
!319 = !{!"basic_block_def", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !185, i64 32, !184, i64 48, !184, i64 56, !185, i64 64, !190, i64 72, !189, i64 80, !189, i64 84, !189, i64 88, !189, i64 92, !189, i64 96}
!320 = !{!319, !189, i64 96}
!321 = !{!322, !184, i64 112}
!322 = !{!"gcc_debug_hooks", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !184, i64 128, !184, i64 136, !184, i64 144, !184, i64 152, !184, i64 160, !184, i64 168, !184, i64 176, !184, i64 184, !184, i64 192, !184, i64 200, !184, i64 208, !184, i64 216, !184, i64 224, !184, i64 232, !184, i64 240, !189, i64 248}
!323 = !{!"VP", i32 0, i64 38, i64 7830675925866490575, i64 38}
!324 = !{!211, !184, i64 152}
!325 = !{!211, !184, i64 312}
!326 = !{!"branch_weights", i32 332953, i32 0}
!327 = !{!"branch_weights", i32 186712, i32 146241}
!328 = !{!"branch_weights", i32 146241, i32 0}
!329 = !{!"function_entry_count", i64 332645}
!330 = !{!"function_entry_count", i64 39}
!331 = !{!"varasm.c;globalize_decl"}
!332 = !{!"branch_weights", i32 39, i32 0}
!333 = distinct !{!333, !200, !201}
!334 = distinct !{!334, !200, !201}
!335 = !{!211, !184, i64 104}
!336 = !{!"VP", i32 0, i64 39, i64 7797321616449198129, i64 39}
!337 = !{!"function_entry_count", i64 1}
!338 = distinct !{!338, !200, !201}
!339 = !{!"function_entry_count", i64 41}
!340 = !{!"branch_weights", i32 163, i32 1}
!341 = !{!"branch_weights", i32 0, i32 41}
!342 = !{!"branch_weights", i32 41, i32 0}
!343 = !{!"branch_weights", i32 41, i32 798}
!344 = !{!"branch_weights", i32 839, i32 0}
!345 = distinct !{!345, !200, !201}
!346 = !{!"branch_weights", i32 1, i32 163}
!347 = !{!"branch_weights", i32 0, i32 798, i32 0}
!348 = !{!"branch_weights", i32 163, i32 3029}
!349 = distinct !{!349, !200, !201}
!350 = distinct !{!350, !200, !201}
!351 = distinct !{!351, !200, !201}
!352 = !{!353, !189, i64 0}
!353 = !{!"VEC_constructor_elt_base", !189, i64 0, !189, i64 4, !185, i64 8}
!354 = !{!355, !184, i64 0}
!355 = !{!"constructor_elt_d", !184, i64 0, !184, i64 8}
!356 = !{!355, !184, i64 8}
!357 = !{!"branch_weights", i32 0, i32 39}
!358 = !{!211, !184, i64 1952}
!359 = !{!"branch_weights", i32 1, i32 38}
!360 = !{!"branch_weights", i32 38, i32 1}
!361 = !{!"varasm.c;get_variable_section"}
!362 = !{i32 0, i32 2}
!363 = !{i32 0, i32 4}
!364 = !{!"branch_weights", i32 0, i32 0, i32 39}
!365 = !{!"branch_weights", i32 0, i32 6084}
!366 = !{!211, !184, i64 216}
!367 = !{!"VP", i32 0, i64 39, i64 -7117281985255240324, i64 39}
!368 = !{!"function_entry_count", i64 42}
!369 = !{!"varasm.c;output_addressed_constants"}
!370 = !{!"branch_weights", i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!371 = distinct !{!371, !200, !201}
!372 = distinct !{!372, !200, !201}
!373 = !{!374, !190, i64 16}
!374 = !{!"object_block", !184, i64 0, !189, i64 8, !190, i64 16, !184, i64 24, !184, i64 32}
!375 = !{!374, !189, i64 8}
!376 = !{!377, !189, i64 4}
!377 = !{!"VEC_rtx_base", !189, i64 0, !189, i64 4, !185, i64 8}
!378 = !{!377, !189, i64 0}
!379 = !{!"varasm.c;assemble_variable_contents"}
!380 = !{!"branch_weights", i32 1, i32 127}
!381 = !{!"branch_weights", i32 0, i32 42}
!382 = !{!"branch_weights", i32 42, i32 0}
!383 = !{!"branch_weights", i32 35, i32 7}
!384 = !{!"branch_weights", i32 0, i32 35, i32 0}
!385 = !{!211, !184, i64 1112}
!386 = !{!"VP", i32 0, i64 42, i64 -4452430551855564803, i64 42}
!387 = !{!"branch_weights", i32 127, i32 5249}
!388 = distinct !{!388, !200, !201}
!389 = !{!"function_entry_count", i64 431327}
!390 = !{!"branch_weights", i32 0, i32 431327}
!391 = !{!"branch_weights", i32 431245, i32 82}
!392 = !{!"branch_weights", i32 228435, i32 202810}
!393 = !{!"branch_weights", i32 0, i32 202810}
!394 = !{!"branch_weights", i32 42, i32 202768}
!395 = !{!211, !184, i64 304}
!396 = !{!"function_entry_count", i64 145974}
!397 = !{!"branch_weights", i32 41, i32 68727, i32 77206}
!398 = !{!"branch_weights", i32 52567, i32 16160}
!399 = !{!"branch_weights", i32 52567, i32 0}
!400 = !{!"function_entry_count", i64 146241}
!401 = !{!"varasm.c;ultimate_transparent_alias_target"}
!402 = !{!211, !184, i64 360}
!403 = !{!211, !184, i64 136}
!404 = !{!211, !184, i64 16}
!405 = !{!190, !190, i64 0}
!406 = distinct !{!406, !200, !201}
!407 = !{!"function_entry_count", i64 63}
!408 = !{!409, !184, i64 8}
!409 = !{!"constant_descriptor_tree", !184, i64 0, !184, i64 8, !189, i64 16}
!410 = !{!409, !189, i64 16}
!411 = !{!"branch_weights", i32 3, i32 60}
!412 = !{!"branch_weights", i32 3, i32 0}
!413 = !{!"VP", i32 0, i64 3, i64 -7147166255639797249, i64 3}
!414 = !{!409, !184, i64 0}
!415 = !{!"branch_weights", i32 63, i32 0}
!416 = !{!235, !189, i64 104}
!417 = !{!"varasm.c;const_hash_1"}
!418 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!419 = distinct !{!419, !200, !201}
!420 = !{!421, !184, i64 0}
!421 = !{!"addr_const", !184, i64 0, !190, i64 8}
!422 = !{!421, !190, i64 8}
!423 = distinct !{!423, !200, !201}
!424 = !{!"branch_weights", i32 251, i32 1}
!425 = !{!"branch_weights", i32 251, i32 7113}
!426 = distinct !{!426, !200, !201}
!427 = !{!"function_entry_count", i64 40}
!428 = !{!429, !184, i64 16}
!429 = !{!"rtx_constant_pool", !184, i64 0, !184, i64 8, !184, i64 16, !190, i64 24}
!430 = !{!429, !190, i64 24}
!431 = !{!211, !184, i64 1008}
!432 = !{!211, !184, i64 1056}
!433 = !{!307, !184, i64 8}
!434 = !{!307, !184, i64 0}
!435 = !{!307, !190, i64 32}
!436 = !{!307, !189, i64 40}
!437 = !{!307, !189, i64 52}
!438 = !{!429, !184, i64 8}
!439 = !{!374, !184, i64 0}
!440 = !{!"varasm.c;output_constant_pool_contents"}
!441 = distinct !{!441, !200, !201}
!442 = distinct !{!442, !200, !201}
!443 = !{!"varasm.c;initializer_constant_valid_p_1"}
!444 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!445 = distinct !{!445, !200, !201}
!446 = distinct !{!446, !200, !201}
!447 = !{!211, !184, i64 1192}
!448 = distinct !{!448, !200, !201}
!449 = !{!"branch_weights", i32 41, i32 0, i32 0, i32 0, i32 0}
!450 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 0, i32 0, i32 0, i32 0}
!451 = !{!"branch_weights", i32 0, i32 0, i32 41, i32 0}
!452 = distinct !{!452, !200, !201}
!453 = !{!454, !189, i64 4}
!454 = !{!"", !189, i64 0, !189, i64 4}
!455 = distinct !{!455, !200, !201}
!456 = distinct !{!456, !200, !201}
!457 = !{!454, !189, i64 0}
!458 = distinct !{!458, !200, !201}
!459 = distinct !{!459, !200, !201}
!460 = distinct !{!460, !200, !201}
!461 = distinct !{!461, !200, !201}
!462 = !{!"function_entry_count", i64 315}
!463 = !{!"branch_weights", i32 315, i32 0}
!464 = distinct !{!464, !200, !201}
!465 = distinct !{!465, !200, !201}
!466 = distinct !{!466, !200, !201}
!467 = distinct !{!467, !200, !201}
!468 = distinct !{!468, !200, !201}
!469 = distinct !{!469, !200, !201}
!470 = !{!"function_entry_count", i64 9}
!471 = !{!"branch_weights", i32 9, i32 0}
!472 = !{!473, !189, i64 0}
!473 = !{!"VEC_alias_pair_base", !189, i64 0, !189, i64 4, !185, i64 8}
!474 = !{!475, !184, i64 0}
!475 = !{!"alias_pair", !184, i64 0, !184, i64 8}
!476 = !{!475, !184, i64 8}
!477 = !{i64 0, i64 8, !183, i64 8, i64 8, !183}
!478 = distinct !{!478, !200, !201}
!479 = !{!"function_entry_count", i64 3}
!480 = distinct !{!480, !200, !201}
!481 = distinct !{!481, !200, !201}
!482 = !{!473, !189, i64 4}
!483 = !{!211, !184, i64 192}
!484 = !{!"VP", i32 0, i64 1, i64 -7047677361869380989, i64 1}
!485 = !{!"varasm.c;section_entry_eq"}
!486 = !{!"function_entry_count", i64 60}
!487 = !{!"varasm.c;const_desc_eq"}
!488 = !{!"branch_weights", i32 60, i32 0}
!489 = !{!"function_entry_count", i64 50}
!490 = !{i32 0, i32 18}
!491 = !{!"branch_weights", i32 1, i32 1}
!492 = !{!"branch_weights", i32 0, i32 0, i32 3, i32 39, i32 0}
!493 = !{!211, !184, i64 208}
!494 = !{!"VP", i32 0, i64 39, i64 7778574763986618327, i64 39}
!495 = !{!"branch_weights", i32 0, i32 39, i32 0}
!496 = !{!211, !184, i64 1912}
!497 = !{!211, !184, i64 1936}
!498 = !{!211, !184, i64 1104}
!499 = !{!"VP", i32 0, i64 39, i64 -7850396760365598585, i64 39}
!500 = !{!211, !185, i64 2029}
!501 = !{!"varasm.c;bss_initializer_p"}
!502 = !{!"branch_weights", i32 0, i32 0, i32 39, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!503 = !{!211, !184, i64 1920}
!504 = !{!"varasm.c;mergeable_string_section"}
!505 = !{i32 0, i32 7}
!506 = !{!"branch_weights", i32 1, i32 191}
!507 = !{!"branch_weights", i32 3, i32 62}
!508 = !{!"branch_weights", i32 191, i32 3969}
!509 = distinct !{!509, !200, !201}
!510 = !{!"branch_weights", i32 65, i32 0}
!511 = distinct !{!511, !200, !201}
!512 = !{!"function_entry_count", i64 138}
!513 = !{!"branch_weights", i32 138, i32 0}
!514 = !{!"VP", i32 0, i64 138, i64 -4452430551855564803, i64 138}
!515 = !{!"branch_weights", i32 58, i32 80}
!516 = !{!"branch_weights", i32 46, i32 92}
!517 = !{!"VP", i32 0, i64 138, i64 -7850396760365598585, i64 138}
!518 = !{!"branch_weights", i32 135, i32 3}
!519 = !{!"branch_weights", i32 77, i32 58}
!520 = !{!"function_entry_count", i64 317379}
!521 = !{!"branch_weights", i32 317376, i32 3}
!522 = !{!"branch_weights", i32 317376, i32 0}
!523 = !{!"branch_weights", i32 38, i32 317338}
!524 = !{!"branch_weights", i32 317338, i32 0}
!525 = !{!"branch_weights", i32 317238, i32 100}
!526 = !{!"branch_weights", i32 317238, i32 0}
!527 = !{!211, !184, i64 96}
!528 = !{!"VP", i32 0, i64 39, i64 1439947961706016203, i64 39}
!529 = !{!"function_entry_count", i64 83456}
!530 = !{!"branch_weights", i32 83456, i32 0}
!531 = !{!211, !185, i64 2031}
!532 = !{!211, !185, i64 2032}
!533 = !{!211, !190, i64 1072}
!534 = !{!211, !190, i64 1064}
!535 = !{!374, !184, i64 32}
!536 = distinct !{!536, !200, !201}
!537 = !{!374, !184, i64 24}
!538 = !{!211, !184, i64 336}
!539 = distinct !{!539, !200, !201}
!540 = distinct !{!540, !200, !201}
!541 = distinct !{!541, !200, !201}
!542 = distinct !{!542, !200, !201}
!543 = distinct !{!543, !200, !201}
!544 = distinct !{!544, !200, !201}
!545 = distinct !{!545, !200, !201}
!546 = distinct !{!546, !200, !201}
!547 = distinct !{!547, !200, !201}
!548 = distinct !{!548, !200, !201}
!549 = distinct !{!549, !200, !201}
!550 = distinct !{!550, !200, !201}
!551 = distinct !{!551, !200, !201}
!552 = distinct !{!552, !200, !201}
!553 = !{!211, !184, i64 328}
!554 = !{!"VP", i32 0, i64 0, i64 -4452430551855564803, i64 0}
!555 = !{!429, !184, i64 0}
!556 = distinct !{!556, !200, !201}
!557 = distinct !{!557, !200, !201}
!558 = !{!559, !184, i64 24}
!559 = !{!"htab", !184, i64 0, !184, i64 8, !184, i64 16, !184, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !189, i64 56, !189, i64 60, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !189, i64 104}
!560 = !{!559, !190, i64 32}
!561 = distinct !{!561, !200, !201}
!562 = distinct !{!562, !200, !201}
!563 = distinct !{!563, !200, !201}
!564 = distinct !{!564, !200, !201}
!565 = distinct !{!565, !200, !201}
!566 = distinct !{!566, !200, !201}
!567 = distinct !{!567, !201}
!568 = !{!"varasm.c;copy_constant"}
!569 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!570 = distinct !{!570, !200, !201}
!571 = !{!"varasm.c;get_constant_section"}
!572 = !{!"branch_weights", i32 3, i32 0, i32 0}
!573 = !{!"VP", i32 0, i64 3, i64 -7117281985255240324, i64 3}
!574 = !{!"varasm.c;output_constant_def_contents"}
!575 = !{!"varasm.c;assemble_constant_contents"}
!576 = !{!577, !189, i64 0}
!577 = !{!"rtvec_def", !189, i64 0, !185, i64 8}
!578 = distinct !{!578, !200, !201}
!579 = distinct !{!579, !200, !201}
!580 = distinct !{!580, !200, !201}
!581 = !{!"varasm.c;compare_constant"}
!582 = !{!"branch_weights", i32 0, i32 60}
!583 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!584 = !{!"VP", i32 1, i64 60, i64 17, i64 59, i64 6, i64 1}
!585 = distinct !{!585, !200, !201}
