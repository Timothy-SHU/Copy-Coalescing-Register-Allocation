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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constant_descriptor_rtx = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32 }
%struct.object_block = type { ptr, i32, i64, ptr, ptr }
%struct.noswitch_section = type { %struct.section_common, ptr }
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
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.oc_local_state = type { ptr, i64, i32, ptr, ptr, ptr, i64, i8, i32, i32, ptr, ptr }
%struct.oc_outer_state = type { i32, i32 }
%struct.alias_pair = type { ptr, ptr }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_emutls_var_fields(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_identifier(ptr noundef nonnull @.str) #27
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %3, ptr noundef %4) #27
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !9
  %7 = tail call ptr @get_identifier(ptr noundef nonnull @.str.1) #27
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %9 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %7, ptr noundef %8) #27
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 4
  store ptr %0, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  store ptr %5, ptr %11, align 8, !tbaa !9
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !10
  %13 = load i32, ptr @word_mode, align 4, !tbaa !19
  %14 = tail call ptr %12(i32 noundef %13, i32 noundef 1) #27
  %15 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #27
  %16 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %15, ptr noundef %14) #27
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  store ptr %0, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  store ptr %9, ptr %18, align 8, !tbaa !9
  %19 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #27
  %20 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %19, ptr noundef %14) #27
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 4
  store ptr %0, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  store ptr %16, ptr %22, align 8, !tbaa !9
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emutls_decl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  %3 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !21
  %4 = icmp ne i8 %3, 0
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, %4
  %7 = load ptr, ptr @global_trees, align 16
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %109, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %109

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 49152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @emutls_htab, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @htab_create_alloc(i64 noundef 512, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  store ptr %23, ptr @emutls_htab, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %22, %19
  %25 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #27
  %26 = getelementptr inbounds %struct.tree_identifier, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = tail call i32 @htab_hash_string(ptr noundef %27) #27
  %29 = getelementptr inbounds %struct.tree_map, ptr %2, i64 0, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !33
  store ptr %0, ptr %2, align 8, !tbaa !36
  %30 = load ptr, ptr @emutls_htab, align 8, !tbaa !5
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 1) #27
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.tree_map, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  br label %73

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !9
  %40 = call fastcc ptr @get_emutls_object_name(ptr noundef nonnull %25) #29
  %41 = call fastcc ptr @get_emutls_object_type() #29
  %42 = call ptr @build_decl_stat(i32 noundef %39, i32 noundef 32, ptr noundef %40, ptr noundef %41) #27
  %43 = call ptr @ggc_alloc_stat(i64 noundef 24) #27
  %44 = load i32, ptr %29, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.tree_map, ptr %43, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !33
  store ptr %0, ptr %43, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.tree_map, ptr %43, i64 0, i32 2
  store ptr %42, ptr %46, align 8, !tbaa !37
  store ptr %43, ptr %31, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %42, i64 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -57345
  %50 = or disjoint i32 %49, 8192
  store i32 %50, ptr %47, align 8
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = or i64 %52, 5120
  store i64 %53, ptr %51, align 8
  %54 = load i64, ptr %42, align 8
  %55 = and i64 %54, -1048577
  store i64 %55, ptr %42, align 8
  %56 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %42, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %37
  %63 = call ptr @decl_assembler_name(ptr noundef nonnull %42) #27
  call void @make_decl_one_only(ptr noundef nonnull %42, ptr noundef %63) #29
  br label %64

64:                                               ; preds = %62, %37
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 4
  store ptr %66, ptr %67, align 8, !tbaa !9
  %68 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 8), align 8, !tbaa !38
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i64, ptr %42, align 8
  %72 = or i64 %71, 4398046511104
  store i64 %72, ptr %42, align 8
  br label %73

73:                                               ; preds = %64, %70, %34
  %74 = phi ptr [ %36, %34 ], [ %42, %70 ], [ %42, %64 ]
  %75 = load i64, ptr %0, align 8
  %76 = and i64 %75, 67108864
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, -67108865
  %79 = or disjoint i64 %78, %76
  store i64 %79, ptr %74, align 8
  %80 = load i64, ptr %0, align 8
  %81 = and i64 %80, 16777216
  %82 = and i64 %79, -16777217
  %83 = or disjoint i64 %82, %81
  store i64 %83, ptr %74, align 8
  %84 = load i64, ptr %0, align 8
  %85 = and i64 %84, 134217728
  %86 = and i64 %83, -134217729
  %87 = or disjoint i64 %86, %85
  store i64 %87, ptr %74, align 8
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 33554432
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, -33554433
  %94 = or disjoint i64 %93, %90
  store i64 %94, ptr %91, align 8
  %95 = load i32, ptr %15, align 8
  %96 = and i32 %95, 8
  %97 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %74, i64 0, i32 4
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, -9
  %100 = or disjoint i32 %99, %96
  store i32 %100, ptr %97, align 8
  %101 = load i32, ptr %15, align 8
  %102 = and i32 %101, 128
  %103 = and i32 %100, -129
  %104 = or disjoint i32 %103, %102
  store i32 %104, ptr %97, align 8
  %105 = load i32, ptr %15, align 8
  %106 = and i32 %105, 3072
  %107 = and i32 %104, -3073
  %108 = or disjoint i32 %107, %106
  store i32 %108, ptr %97, align 8
  br label %109

109:                                              ; preds = %1, %10, %14, %73
  %110 = phi ptr [ %74, %73 ], [ %0, %14 ], [ %0, %10 ], [ %0, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  ret ptr %110
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #2

; Function Attrs: optsize
declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_emutls_object_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 4), align 8
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.164, ptr %2
  %5 = tail call fastcc ptr @prefix_name(ptr noundef nonnull %4, ptr noundef %0) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_emutls_object_type() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  %2 = load ptr, ptr @emutls_object_type, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !39
  %6 = tail call ptr %5(i32 noundef 16) #27
  store ptr %6, ptr @emutls_object_type, align 8, !tbaa !5
  store ptr null, ptr %1, align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 6), align 8, !tbaa !40
  %8 = call ptr %7(ptr noundef %6, ptr noundef nonnull %1) #27
  %9 = load ptr, ptr %1, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call ptr @get_identifier(ptr noundef nonnull @.str.165) #27
  store ptr %12, ptr %1, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ %9, %4 ]
  %15 = call ptr @build_decl_stat(i32 noundef 0, i32 noundef 35, ptr noundef %14, ptr noundef %6) #27
  store ptr %15, ptr %1, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  store ptr %15, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  store ptr %8, ptr %17, align 8, !tbaa !9
  call void @layout_type(ptr noundef %6) #27
  br label %18

18:                                               ; preds = %0, %13
  %19 = phi ptr [ %6, %13 ], [ %2, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_decl_one_only(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 32, label %7
    i16 29, label %7
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5882, ptr noundef nonnull @.str.5) #27
  %6 = load i64, ptr %0, align 8
  br label %7

7:                                                ; preds = %2, %2, %5
  %8 = phi i64 [ %3, %2 ], [ %3, %2 ], [ %6, %5 ]
  %9 = or i64 %8, 134217728
  store i64 %9, ptr %0, align 8
  %10 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 128
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emutls_finish() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  store ptr null, ptr %1, align 8, !tbaa !5
  %5 = load ptr, ptr @emutls_htab, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  call void @htab_traverse_noresize(ptr noundef nonnull %5, ptr noundef nonnull @emutls_common_1, ptr noundef nonnull %1) #27
  %8 = load ptr, ptr %1, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef nonnull %8, i32 noundef 65535) #27
  br label %11

11:                                               ; preds = %7, %4, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  br label %12

12:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @emutls_common_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !10
  %18 = load i32, ptr @word_mode, align 4, !tbaa !19
  %19 = tail call ptr %17(i32 noundef %18, i32 noundef 1) #27
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %21 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %20, ptr noundef null) #27
  %22 = load ptr, ptr %3, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = lshr i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = tail call ptr @build_int_cst(ptr noundef %19, i64 noundef %26) #27
  %28 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %27, ptr noundef %21) #27
  %29 = load ptr, ptr %3, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %31) #27
  %33 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %32, ptr noundef %28) #27
  %34 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  %36 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %35) #27
  %37 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %36, ptr noundef %33) #27
  %38 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 549), align 8, !tbaa !5
  %39 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %38, ptr noundef %37) #27
  tail call void @append_to_statement_list(ptr noundef %39, ptr noundef %1) #27
  br label %40

40:                                               ; preds = %2, %9, %16
  ret i32 1
}

; Function Attrs: optsize
declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_unnamed_section(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #27
  store i32 %0, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !9
  %7 = load ptr, ptr @unnamed_sections, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.unnamed_section, ptr %4, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !9
  store ptr %4, ptr @unnamed_sections, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_section(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @section_htab, align 8, !tbaa !5
  %5 = tail call i32 @htab_hash_string(ptr noundef %0) #27
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef %0, i32 noundef %5, i32 noundef 1) #27
  %7 = or i32 %1, 2097152
  %8 = load ptr, ptr %6, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #27
  store i32 %7, ptr %11, align 8, !tbaa !9
  %12 = tail call ptr @ggc_alloc_string(ptr noundef %0, i32 noundef -1) #27
  %13 = getelementptr inbounds %struct.named_section, ptr %11, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.named_section, ptr %11, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !9
  store ptr %11, ptr %6, align 8, !tbaa !5
  br label %32

15:                                               ; preds = %3
  %16 = load i32, ptr %8, align 8, !tbaa !9
  %17 = and i32 %16, -1048577
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = or i32 %16, %1
  %21 = and i32 %20, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.named_section, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 579, ptr noundef nonnull @.str.5) #27
  br label %30

30:                                               ; preds = %23, %25, %29
  %31 = phi ptr [ %27, %25 ], [ null, %29 ], [ %2, %23 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef %31) #27
  br label %32

32:                                               ; preds = %15, %19, %30, %10
  %33 = phi ptr [ %11, %10 ], [ %8, %30 ], [ %8, %19 ], [ %8, %15 ]
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unlikely_text_section() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call fastcc void @initialize_cold_section_name() #29
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %10 = tail call ptr @get_named_section(ptr noundef null, ptr noundef %9, i32 noundef 0) #29
  br label %13

11:                                               ; preds = %0
  %12 = tail call ptr @get_named_section(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 0) #29
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_cold_section_name() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @current_function_decl, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 657, ptr noundef nonnull @.str.5) #27
  br label %7

7:                                                ; preds = %0, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = load i32, ptr @flag_function_sections, align 4, !tbaa !19
  %15 = icmp ne i32 %14, 0
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !9
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  %24 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %23, ptr nonnull align 4 %24, i64 %22, i1 false)
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !51
  %26 = call ptr %25(ptr noundef nonnull %23) #27
  %27 = call i64 (ptr, ...) @concat_length(ptr noundef %26, ptr noundef nonnull @.str.166, ptr noundef null) #27
  %28 = add i64 %27, 1
  %29 = alloca i8, i64 %28, align 16
  store ptr %29, ptr @libiberty_concat_ptr, align 8, !tbaa !5
  %30 = call ptr (ptr, ...) @concat_copy2(ptr noundef %26, ptr noundef nonnull @.str.166, ptr noundef null) #27
  %31 = call ptr @ggc_alloc_string(ptr noundef %30, i32 noundef -1) #27
  br label %32

32:                                               ; preds = %10, %18
  %33 = phi ptr [ %31, %18 ], [ @.str.7, %10 ]
  store ptr %33, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  br label %34

34:                                               ; preds = %7, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_named_section(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 725, ptr noundef nonnull @.str.5) #27
  br label %12

12:                                               ; preds = %3, %5, %11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.tree_string, ptr %16, i64 0, i32 2
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %17, %14 ], [ %1, %12 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 31), align 8, !tbaa !52
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %2) #27
  %22 = tail call ptr @get_section(ptr noundef nonnull %19, i32 noundef %21, ptr noundef %0) #29
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @unlikely_text_section_p(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %5 = select i1 %3, ptr @.str.7, ptr %4
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8, !tbaa !9
  %11 = and i32 %10, 6291456
  %12 = icmp eq i32 %11, 2097152
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %15) #29
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %13, %9, %1
  %20 = phi i8 [ 0, %9 ], [ 0, %1 ], [ %18, %13 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @resolve_unique_section(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
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
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 23), align 8, !tbaa !53
  tail call void %17(ptr noundef nonnull %0, i32 noundef %1) #27
  br label %18

18:                                               ; preds = %16, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @function_section(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @unlikely_text_section() #29
  br label %8

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @hot_function_section(ptr noundef %0) #29
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @hot_function_section(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = icmp ne ptr %5, null
  %7 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #29
  br label %14

12:                                               ; preds = %3, %1
  %13 = load ptr, ptr @text_section, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @current_function_section() local_unnamed_addr #0 {
  %1 = load i8, ptr @in_cold_section_p, align 1, !tbaa !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @unlikely_text_section() #29
  br label %8

5:                                                ; preds = %0
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %7 = tail call fastcc ptr @hot_function_section(ptr noundef %6) #29
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %5 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_function_rodata_section(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2, i64 1
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 46) #29
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr %8, ptr %14
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #29
  %18 = add i64 %17, 8
  %19 = alloca i8, i64 %18, align 16
  store i64 27431034386608686, ptr %19, align 16
  %20 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %16) #29
  %21 = call ptr @get_section(ptr noundef nonnull %19, i32 noundef 2048, ptr noundef nonnull %0) #29
  br label %41

22:                                               ; preds = %7
  %23 = load i32, ptr @flag_function_sections, align 4, !tbaa !19
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @flag_data_sections, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #29
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #29
  %33 = add i64 %32, 3
  %34 = alloca i8, i64 %33, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %34, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %35 = getelementptr inbounds i8, ptr %34, i64 7
  %36 = getelementptr inbounds i8, ptr %5, i64 33
  %37 = add i64 %32, -4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %36, i64 %37, i1 false)
  %38 = call ptr @get_section(ptr noundef nonnull %34, i32 noundef 0, ptr noundef nonnull %0) #29
  br label %41

39:                                               ; preds = %22, %28, %3, %1
  %40 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %12, %31, %39
  %42 = phi ptr [ %40, %39 ], [ %21, %12 ], [ %38, %31 ]
  ret ptr %42
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @default_no_function_rodata_section(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mergeable_constant_section(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [24 x i8], align 16
  %5 = load i32, ptr @flag_merge_constants, align 4, !tbaa !19
  %6 = icmp ne i32 %5, 0
  %7 = icmp ugt i32 %0, 1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = icmp ule i64 %14, %1
  %16 = add i64 %1, -8
  %17 = icmp ult i64 %16, 249
  %18 = and i1 %17, %15
  %19 = tail call i64 @llvm.ctpop.i64(i64 %1), !range !54
  %20 = icmp ult i64 %19, 2
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  %23 = lshr i64 %1, 3
  %24 = trunc i64 %23 to i32
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %24) #29
  %26 = or i32 %24, %2
  %27 = or i32 %26, 32768
  %28 = call ptr @get_section(ptr noundef nonnull %4, i32 noundef %27, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  br label %31

29:                                               ; preds = %9, %3
  %30 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %28, %22 ], [ %30, %29 ]
  ret ptr %32
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_user_assembler_name(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %4 = add i64 %3, 2
  %5 = alloca i8, i64 %4, align 16
  store i8 42, ptr %5, align 16, !tbaa !9
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #29
  %8 = call ptr @get_identifier(ptr noundef nonnull %5) #27
  call void @change_decl_assembler_name(ptr noundef %0, ptr noundef %8) #27
  call void @set_decl_rtl(ptr noundef %0, ptr noundef null) #27
  ret void
}

; Function Attrs: optsize
declare void @change_decl_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define dso_local i32 @decode_reg_name(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @strip_reg_name(ptr noundef nonnull %0) #29
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %6 = and i64 %5, 4294967295
  br label %7

7:                                                ; preds = %12, %3
  %8 = phi i64 [ %9, %12 ], [ %6, %3 ]
  %9 = add nsw i64 %8, -1
  %10 = and i64 %9, 2147483648
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = and i64 %9, 2147483647
  %14 = getelementptr inbounds i8, ptr %4, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !55
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %7, !llvm.loop !57

21:                                               ; preds = %7
  %22 = load i8, ptr %4, align 1, !tbaa !9
  %23 = icmp ne i8 %22, 0
  %24 = and i1 %11, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %12, %21
  br label %30

26:                                               ; preds = %21
  %27 = tail call i32 @atoi(ptr nocapture noundef nonnull %4) #29
  %28 = icmp ult i32 %27, 53
  %29 = select i1 %28, i32 %27, i32 -2
  br label %67

30:                                               ; preds = %25, %40
  %31 = phi i64 [ %41, %40 ], [ 0, %25 ]
  %32 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @strip_reg_name(ptr noundef nonnull %33) #29
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %37) #29
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %30, %36
  %41 = add nuw nsw i64 %31, 1
  %42 = icmp eq i64 %41, 53
  br i1 %42, label %43, label %30, !llvm.loop !59

43:                                               ; preds = %40, %55
  %44 = phi i64 [ %56, %55 ], [ 0, %40 ]
  %45 = getelementptr inbounds [24 x %struct.anon], ptr @decode_reg_name.table, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 16, !tbaa !60
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %46) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds [24 x %struct.anon], ptr @decode_reg_name.table, i64 0, i64 %44, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !62
  br label %67

55:                                               ; preds = %43, %49
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, 24
  br i1 %57, label %58, label %43, !llvm.loop !63

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.36) #29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.37) #29
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 -3, i32 -2
  br label %67

65:                                               ; preds = %36
  %66 = trunc i64 %31 to i32
  br label %67

67:                                               ; preds = %65, %1, %52, %26, %58, %61
  %68 = phi i32 [ %54, %52 ], [ %29, %26 ], [ -4, %58 ], [ %64, %61 ], [ -1, %1 ], [ %66, %65 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @strip_reg_name(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, ptr %0, align 1, !tbaa !9
  switch i8 %2, label %5 [
    i8 37, label %3
    i8 35, label %3
  ]

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ %0, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @align_variable(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 15
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !9
  %21 = tail call i32 @llvm.umax.i32(i32 %4, i32 %20)
  br label %22

22:                                               ; preds = %16, %10, %6, %2
  %23 = phi i32 [ %21, %16 ], [ %4, %10 ], [ %4, %6 ], [ %4, %2 ]
  %24 = icmp ugt i32 %23, -2147483648
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull %0, i32 noundef 268435456) #27
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ -2147483648, %25 ], [ %23, %22 ]
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 4398046511104
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = tail call i32 @ix86_data_alignment(ptr noundef %34, i32 noundef %28) #27
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 49152
  %39 = icmp eq i32 %38, 0
  %40 = icmp ult i32 %35, 33
  %41 = select i1 %39, i1 true, i1 %40
  %42 = select i1 %41, i32 %35, i32 %28
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr @global_trees, align 16
  %47 = icmp eq ptr %44, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %32
  %50 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %44, i32 noundef %42) #27
  %51 = load i32, ptr %36, align 8
  %52 = and i32 %51, 49152
  %53 = icmp eq i32 %52, 0
  %54 = icmp ult i32 %50, 33
  %55 = select i1 %53, i1 true, i1 %54
  %56 = select i1 %55, i32 %50, i32 %42
  br label %57

57:                                               ; preds = %32, %49, %27
  %58 = phi i32 [ %28, %27 ], [ %56, %49 ], [ %42, %32 ]
  store i32 %58, ptr %3, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_data_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_decl_rtl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %6 [
    i16 34, label %4
    i16 36, label %4
  ]

4:                                                ; preds = %1, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1310, ptr noundef nonnull @.str.5) #27
  %5 = load i64, ptr %0, align 8
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %2, %1 ], [ %5, %4 ]
  %8 = and i64 %7, 201392127
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 50331648
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1317, ptr noundef nonnull @.str.5) #27
  %16 = load i64, ptr %0, align 8
  br label %17

17:                                               ; preds = %6, %10, %15
  %18 = phi i64 [ %7, %6 ], [ %7, %10 ], [ %16, %15 ]
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %22 [
    i16 35, label %20
    i16 30, label %20
  ]

20:                                               ; preds = %17, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1321, ptr noundef nonnull @.str.5) #27
  %21 = load i64, ptr %0, align 8
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i64 [ %18, %17 ], [ %21, %20 ]
  %24 = and i64 %23, 65535
  %25 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %24, i64 11
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %83, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %83, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = tail call ptr @adjust_address_1(ptr noundef nonnull %30, i32 noundef %39, i64 noundef 0, i32 noundef 0, i32 noundef 1) #27
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %42) #27
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi i64 [ %44, %41 ], [ %24, %32 ]
  %47 = icmp eq i64 %46, 29
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, ptr %36, align 8
  %50 = and i64 %49, 16777216
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %287

52:                                               ; preds = %48, %45
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !64
  %54 = load ptr, ptr %29, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %57 = load ptr, ptr %29, align 8, !tbaa !9
  br label %58

58:                                               ; preds = %52, %56
  %59 = phi ptr [ %57, %56 ], [ %54, %52 ]
  tail call void %53(ptr noundef nonnull %0, ptr noundef %59, i32 noundef 0) #27
  %60 = load i32, ptr %30, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 43
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load i32, ptr %70, align 8, !tbaa !9
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_block_for_decl(ptr noundef nonnull %0) #29
  tail call fastcc void @change_symbol_block(ptr noundef nonnull %65, ptr noundef %75) #29
  br label %76

76:                                               ; preds = %74, %69, %63, %58
  %77 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %287, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %0, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 32
  br i1 %82, label %286, label %287

83:                                               ; preds = %28, %22
  %84 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #27
  %85 = getelementptr inbounds %struct.tree_identifier, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  %87 = load i8, ptr %86, align 1, !tbaa !9
  %88 = icmp eq i8 %87, 42
  %89 = load i64, ptr %0, align 8
  %90 = and i64 %89, 65535
  br i1 %88, label %98, label %91

91:                                               ; preds = %83
  %92 = icmp eq i64 %90, 29
  br i1 %92, label %199, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 16777216
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %197

98:                                               ; preds = %83, %93
  %99 = icmp eq i64 %90, 29
  br i1 %99, label %199, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 16777216
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %199, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds i8, ptr %86, i64 1
  %107 = tail call i32 @decode_reg_name(ptr noundef nonnull %106) #29
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %197, label %109

109:                                              ; preds = %105
  %110 = icmp slt i32 %107, 0
  br i1 %110, label %197, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !9
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = tail call i32 @vector_type_mode(ptr noundef nonnull %113) #27
  br label %124

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %123, %119 ]
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %197, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %112, align 8, !tbaa !9
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 14
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = tail call i32 @vector_type_mode(ptr noundef nonnull %128) #27
  br label %139

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.tree_type, ptr %128, i64 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  br label %139

139:                                              ; preds = %134, %132
  %140 = phi i32 [ %133, %132 ], [ %138, %134 ]
  %141 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %107, i32 noundef %140) #27
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %197, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !9
  %146 = icmp eq ptr %145, null
  %147 = load i64, ptr %0, align 8
  %148 = and i64 %147, 67108864
  %149 = icmp eq i64 %148, 0
  %150 = select i1 %146, i1 true, i1 %149
  br i1 %150, label %153, label %151

151:                                              ; preds = %143
  store ptr null, ptr %144, align 8, !tbaa !9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43) #27
  %152 = load i64, ptr %0, align 8
  br label %153

153:                                              ; preds = %151, %143
  %154 = phi i64 [ %152, %151 ], [ %147, %143 ]
  %155 = and i64 %154, 524288
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 235, ptr noundef nonnull @.str.44) #27
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i64, ptr %101, align 8
  %161 = trunc i64 %160 to i32
  %162 = and i32 %161, 255
  %163 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %162, i32 noundef %107) #27
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %163) #27
  %164 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %168 = load ptr, ptr %164, align 8, !tbaa !9
  br label %169

169:                                              ; preds = %159, %167
  %170 = phi ptr [ %168, %167 ], [ %165, %159 ]
  %171 = getelementptr inbounds %struct.rtx_def, ptr %170, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %107, ptr %171, align 8, !tbaa !9
  %172 = load ptr, ptr %164, align 8, !tbaa !9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %175 = load ptr, ptr %164, align 8, !tbaa !9
  br label %176

176:                                              ; preds = %169, %174
  %177 = phi ptr [ %175, %174 ], [ %172, %169 ]
  %178 = load i32, ptr %177, align 8
  %179 = or i32 %178, 134217728
  store i32 %179, ptr %177, align 8
  %180 = load i64, ptr %0, align 8
  %181 = and i64 %180, 67108864
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %287, label %183

183:                                              ; preds = %176
  %184 = zext nneg i32 %107 to i64
  %185 = load i64, ptr %101, align 8
  %186 = and i64 %185, 255
  %187 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %184, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %287, label %190

190:                                              ; preds = %183
  %191 = zext i8 %188 to i32
  br label %192

192:                                              ; preds = %190, %192
  %193 = phi i32 [ %194, %192 ], [ %191, %190 ]
  %194 = add nsw i32 %193, -1
  %195 = add nuw nsw i32 %194, %107
  tail call void @globalize_reg(i32 noundef %195) #27
  %196 = icmp ugt i32 %193, 1
  br i1 %196, label %192, label %287, !llvm.loop !65

197:                                              ; preds = %139, %124, %109, %105, %93
  %198 = phi ptr [ @.str.39, %93 ], [ @.str.39, %105 ], [ @.str.40, %109 ], [ @.str.41, %124 ], [ @.str.42, %139 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %198, ptr noundef nonnull %0) #27
  br label %199

199:                                              ; preds = %197, %91, %98, %100
  %200 = load i64, ptr %0, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 32
  br i1 %202, label %203, label %225

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %218, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !9
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = and i32 %213, -9
  store i32 %217, ptr %212, align 8
  br label %218

218:                                              ; preds = %216, %211, %207, %203
  %219 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 128
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %218
  %224 = and i32 %220, -9
  store i32 %224, ptr %219, align 8
  br label %225

225:                                              ; preds = %199, %223, %218
  %226 = tail call fastcc zeroext i8 @use_object_blocks_p() #29
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = tail call fastcc zeroext i8 @use_blocks_for_decl_p(ptr noundef nonnull %0) #29, !range !66
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = tail call fastcc ptr @get_block_for_decl(ptr noundef nonnull %0) #29
  %233 = tail call fastcc ptr @create_block_symbol(ptr noundef nonnull %86, ptr noundef %232, i64 noundef -1) #29
  br label %248

234:                                              ; preds = %228, %225
  %235 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !9
  %237 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %234
  %240 = load i64, ptr %236, align 8
  %241 = lshr i64 %240, 56
  %242 = trunc i64 %241 to i8
  %243 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !67
  %244 = tail call i32 %243(i8 noundef zeroext %242) #27
  br label %245

245:                                              ; preds = %239, %234
  %246 = phi i32 [ %244, %239 ], [ 16, %234 ]
  %247 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %246, ptr noundef nonnull %86) #27
  br label %248

248:                                              ; preds = %245, %231
  %249 = phi ptr [ %233, %231 ], [ %247, %245 ]
  %250 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %251 = load i32, ptr %250, align 8
  %252 = load i32, ptr %249, align 8
  %253 = shl i32 %251, 24
  %254 = and i32 %253, -2147483648
  %255 = and i32 %252, 2147483647
  %256 = or disjoint i32 %255, %254
  store i32 %256, ptr %249, align 8
  %257 = and i32 %252, 67108864
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1465, ptr noundef nonnull @.str.5) #27
  br label %260

260:                                              ; preds = %248, %259
  %261 = getelementptr inbounds %struct.rtx_def, ptr %249, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %261, align 8, !tbaa !9
  %262 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %263 = load i64, ptr %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = and i32 %264, 255
  %266 = tail call ptr @gen_rtx_MEM(i32 noundef %265, ptr noundef nonnull %249) #27
  %267 = load i64, ptr %0, align 8
  %268 = and i64 %267, 65535
  %269 = icmp eq i64 %268, 29
  br i1 %269, label %271, label %270

270:                                              ; preds = %260
  tail call void @set_mem_attributes(ptr noundef %266, ptr noundef nonnull %0, i32 noundef 1) #27
  br label %271

271:                                              ; preds = %270, %260
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %266) #27
  %272 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !64
  %273 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !9
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %277 = load ptr, ptr %273, align 8, !tbaa !9
  br label %278

278:                                              ; preds = %271, %276
  %279 = phi ptr [ %277, %276 ], [ %274, %271 ]
  tail call void %272(ptr noundef nonnull %0, ptr noundef %279, i32 noundef 1) #27
  %280 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %278
  %283 = load i64, ptr %0, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 32
  br i1 %285, label %286, label %287

286:                                              ; preds = %282, %79
  tail call void @mudflap_enqueue_decl(ptr noundef nonnull %0) #27
  br label %287

287:                                              ; preds = %192, %286, %183, %176, %278, %282, %76, %79, %48
  ret void
}

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_symbol_block(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !9
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1264, ptr noundef nonnull @.str.5) #27
  br label %11

11:                                               ; preds = %6, %10
  store ptr %1, ptr %3, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_block_for_decl(ptr noundef %0) unnamed_addr #0 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @host_integerp(ptr noundef nonnull %16, i32 noundef 1) #27
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @align_variable(ptr noundef nonnull %0, i8 noundef zeroext 0) #29
  br label %26

26:                                               ; preds = %25, %21
  %27 = tail call fastcc ptr @get_variable_section(ptr noundef nonnull %0, i8 noundef zeroext 1) #29
  %28 = load i32, ptr %27, align 8, !tbaa !9
  %29 = and i32 %28, 6291456
  %30 = icmp eq i32 %29, 4194304
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @get_block_for_section(ptr noundef nonnull %27) #29
  br label %33

33:                                               ; preds = %26, %18, %14, %10, %5, %31
  %34 = phi ptr [ %32, %31 ], [ null, %5 ], [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %26 ]
  ret ptr %34
}

; Function Attrs: optsize
declare void @mudflap_enqueue_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @globalize_reg(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @use_object_blocks_p() unnamed_addr #7 {
  %1 = load i32, ptr @flag_section_anchors, align 4, !tbaa !19
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @use_blocks_for_decl_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65534
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.167, ptr noundef %11) #27
  %13 = icmp eq ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %1, %9, %5
  %16 = phi i8 [ 0, %1 ], [ 0, %5 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_block_symbol(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 48) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 32, i1 false)
  store i32 1048621, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 128, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  store i64 %2, ptr %8, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_decl_rtl_for_debug(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  br i1 %6, label %14, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %9
  %12 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !19
  store i32 0, ptr @flag_strict_aliasing, align 4, !tbaa !19
  %13 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  store i32 0, ptr @flag_mudflap, align 4, !tbaa !19
  br label %18

14:                                               ; preds = %1
  %15 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !19
  store i32 0, ptr @flag_strict_aliasing, align 4, !tbaa !19
  %16 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  store i32 0, ptr @flag_mudflap, align 4, !tbaa !19
  %17 = icmp eq ptr %8, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %11, %14
  %19 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %20 = phi i32 [ %12, %11 ], [ %15, %14 ]
  %21 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %14, %18
  %24 = phi i32 [ %19, %18 ], [ %16, %14 ]
  %25 = phi i32 [ %20, %18 ], [ %15, %14 ]
  %26 = phi ptr [ %22, %18 ], [ %8, %14 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef null) #27
  store i32 %25, ptr @flag_strict_aliasing, align 4, !tbaa !19
  store i32 %24, ptr @flag_mudflap, align 4, !tbaa !19
  br label %27

27:                                               ; preds = %9, %23
  %28 = phi ptr [ %26, %23 ], [ %8, %9 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_asm(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @app_enable() #27
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.tree_string, ptr %9, i64 0, i32 2
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.45, ptr noundef nonnull %11) #29
  ret void
}

; Function Attrs: optsize
declare void @app_enable() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_stabs_asm_out_destructor(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.46, i32 noundef 22) #27
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @dbxout_stab_value_label(ptr noundef %4) #27
  ret void
}

; Function Attrs: optsize
declare void @dbxout_begin_simple_stabs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dbxout_stab_value_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_addr_to_section(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @switch_to_section(ptr noundef %1) #29
  tail call void @assemble_align(i32 noundef 32) #29
  %3 = tail call zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef 4, i32 noundef 32, i32 noundef 1) #29, !range !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @switch_to_section(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @in_section, align 8, !tbaa !5
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !9
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr %0, ptr null
  store ptr %8, ptr @in_section, align 8, !tbaa !5
  %9 = load i32, ptr %0, align 8, !tbaa !9
  %10 = and i32 %9, 6291456
  switch i32 %10, label %37 [
    i32 2097152, label %11
    i32 0, label %31
    i32 4194304, label %36
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(15) @.str.7) #29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @.str.7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  %23 = load i32, ptr %0, align 8, !tbaa !9
  br label %24

24:                                               ; preds = %22, %17, %11
  %25 = phi i32 [ %23, %22 ], [ %9, %17 ], [ %9, %11 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 19), align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  tail call void %26(ptr noundef %28, i32 noundef %25, ptr noundef %30) #27
  br label %37

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.unnamed_section, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.unnamed_section, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  tail call void %33(ptr noundef %35) #27
  br label %37

36:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6837, ptr noundef nonnull @.str.5) #27
  br label %37

37:                                               ; preds = %4, %36, %31, %24
  %38 = load i32, ptr %0, align 8, !tbaa !9
  %39 = or i32 %38, 1048576
  store i32 %39, ptr %0, align 8, !tbaa !9
  br label %40

40:                                               ; preds = %1, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_align(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 8
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = lshr i32 %0, 3
  %5 = zext nneg i32 %4 to i64
  %6 = tail call i32 @floor_log2(i64 noundef %5) #27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %10 = tail call i32 @floor_log2(i64 noundef %5) #27
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.57, i32 noundef %11) #29
  br label %13

13:                                               ; preds = %3, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @assemble_integer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !19
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 128, i32 256
  %10 = tail call i32 @llvm.umin.i32(i32 %5, i32 %9)
  %11 = icmp ule i32 %10, %2
  %12 = zext i1 %11 to i32
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 5), align 8, !tbaa !69
  %14 = tail call zeroext i8 %13(ptr noundef %0, i32 noundef %1, i32 noundef %12) #27
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %4
  %17 = icmp ugt i32 %1, 1
  br i1 %17, label %18, label %53

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
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %18, %26
  %34 = phi i32 [ %32, %26 ], [ 2, %18 ]
  %35 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef %34, i32 noundef 0) #27
  %36 = tail call i32 @mode_for_size(i32 noundef %5, i32 noundef %34, i32 noundef 0) #27
  br label %37

37:                                               ; preds = %33, %44
  %38 = phi i32 [ 0, %33 ], [ %45, %44 ]
  %39 = tail call ptr @simplify_subreg(i32 noundef %35, ptr noundef nonnull %0, i32 noundef %36, i32 noundef %38) #27
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @assemble_integer(ptr noundef nonnull %39, i32 noundef %20, i32 noundef %22, i32 noundef 0) #29, !range !66
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = add i32 %38, %20
  %46 = icmp ult i32 %45, %1
  br i1 %46, label %37, label %47, !llvm.loop !70

47:                                               ; preds = %41, %37, %44
  %48 = phi i32 [ %38, %41 ], [ %38, %37 ], [ %45, %44 ]
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2726, ptr noundef nonnull @.str.5) #27
  br label %53

53:                                               ; preds = %50, %52, %16
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2729, ptr noundef nonnull @.str.5) #27
  br label %56

56:                                               ; preds = %47, %55, %53, %4
  %57 = phi i8 [ 1, %4 ], [ 0, %53 ], [ 0, %55 ], [ 1, %47 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_cdtor_priority_section(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, ptr @.str.49, ptr @.str.48
  %6 = sub nsw i32 65535, %0
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %5, i32 noundef %6) #29
  %8 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef 512, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_named_section_asm_out_destructor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 65535
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @get_cdtor_priority_section(i32 noundef %1, i8 noundef zeroext 0) #29
  br label %8

6:                                                ; preds = %2
  %7 = tail call ptr @get_section(ptr noundef nonnull @.str.49, i32 noundef 512, ptr noundef null) #29
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  tail call void @assemble_addr_to_section(ptr noundef %0, ptr noundef %9) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_stabs_asm_out_constructor(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.50, i32 noundef 22) #27
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @dbxout_stab_value_label(ptr noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_named_section_asm_out_constructor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 65535
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @get_cdtor_priority_section(i32 noundef %1, i8 noundef zeroext 1) #29
  br label %8

6:                                                ; preds = %2
  %7 = tail call ptr @get_section(ptr noundef nonnull @.str.48, i32 noundef 512, ptr noundef null) #29
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  tail call void @assemble_addr_to_section(ptr noundef %0, ptr noundef %9) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @notice_global_symbol(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @first_global_object_name, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %67

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 134217728
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = trunc i64 %5 to i16
  switch i16 %18, label %67 [
    i16 29, label %31
    i16 32, label %19
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  %28 = load ptr, ptr @global_trees, align 16
  %29 = icmp eq ptr %26, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %67, label %31

31:                                               ; preds = %24, %17, %19
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %36 = load ptr, ptr %32, align 8, !tbaa !9
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = icmp ne ptr %49, null
  %51 = load i32, ptr @flag_shlib, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %47, %54
  %56 = phi ptr [ @weak_global_object_name, %54 ], [ @first_global_object_name, %47 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !51
  %65 = tail call ptr %64(ptr noundef %63) #27
  %66 = tail call ptr @ggc_alloc_string(ptr noundef %65, i32 noundef -1) #27
  store ptr %66, ptr %56, align 8, !tbaa !5
  br label %67

67:                                               ; preds = %55, %59, %1, %4, %8, %13, %24, %37, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_start_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #28
  store ptr null, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  store i8 0, ptr @first_function_block_is_cold, align 1, !tbaa !9
  %4 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.52, i32 noundef %7) #29
  %9 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #27
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !71
  %10 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.53, i32 noundef %10) #29
  %12 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #27
  store ptr %12, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !72
  %13 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.54, i32 noundef %13) #29
  %15 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #27
  store ptr %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !73
  %16 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.55, i32 noundef %16) #29
  %18 = call ptr @ggc_alloc_string(ptr noundef nonnull %3, i32 noundef -1) #27
  %19 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @const_labelno, align 4, !tbaa !19
  br label %22

21:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), i8 0, i64 24, i1 false)
  br label %22

22:                                               ; preds = %21, %6
  %23 = phi ptr [ null, %21 ], [ %18, %6 ]
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8
  call void @app_disable() #27
  call fastcc void @output_constant_pool() #29
  %24 = load i32, ptr @flag_function_sections, align 4, !tbaa !19
  call void @resolve_unique_section(ptr noundef %0, i32 noundef 0, i32 noundef %24) #29
  %25 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !19
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = call ptr @unlikely_text_section() #29
  call void @switch_to_section(ptr noundef %28) #29
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !9
  call void @assemble_align(i32 noundef %30) #29
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %32 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !72
  call void @assemble_name(ptr noundef %31, ptr noundef %32) #29
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %34 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %33) #29
  %35 = load ptr, ptr @cfun, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 20
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1073741824
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !74
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !80
  %48 = and i32 %47, 96
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %50, label %70

50:                                               ; preds = %40
  %51 = load ptr, ptr @text_section, align 8, !tbaa !5
  call void @switch_to_section(ptr noundef %51) #29
  %52 = load i32, ptr %29, align 8, !tbaa !9
  call void @assemble_align(i32 noundef %52) #29
  %53 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !71
  call void @assemble_name(ptr noundef %53, ptr noundef %54) #29
  %55 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %56 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %55) #29
  br label %69

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  call fastcc void @initialize_cold_section_name() #29
  %62 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8, !tbaa !42
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %58, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.tree_string, ptr %65, i64 0, i32 2
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) %62) #29
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %50
  store i8 1, ptr @first_function_block_is_cold, align 1, !tbaa !9
  br label %70

70:                                               ; preds = %69, %57, %64, %61, %27, %40
  %71 = phi i1 [ false, %27 ], [ false, %40 ], [ false, %64 ], [ false, %61 ], [ false, %57 ], [ %26, %69 ]
  %72 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !9
  store i8 %72, ptr @in_cold_section_p, align 1, !tbaa !9
  %73 = call ptr @function_section(ptr noundef nonnull %0) #29
  call void @switch_to_section(ptr noundef %73) #29
  %74 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !19
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %71, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %79 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !71
  call void @assemble_name(ptr noundef %78, ptr noundef %79) #29
  %80 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %81 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %80) #29
  br label %82

82:                                               ; preds = %77, %70
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !9
  %85 = lshr i32 %84, 3
  %86 = zext nneg i32 %85 to i64
  %87 = call i32 @floor_log2(i64 noundef %86) #27
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %91 = shl nuw i32 1, %87
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.57, i32 noundef %91) #29
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i64, ptr %0, align 8
  %95 = and i64 %94, 4398046511104
  %96 = icmp eq i64 %95, 0
  %97 = load i32, ptr @align_functions_log, align 4
  %98 = icmp sgt i32 %97, %87
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %127

100:                                              ; preds = %93
  %101 = load ptr, ptr @cfun, align 8, !tbaa !5
  %102 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %101) #27
  %103 = icmp ne i8 %102, 0
  %104 = load i32, ptr @align_functions_log, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %127

107:                                              ; preds = %100
  %108 = load i32, ptr @align_functions, align 4, !tbaa !19
  %109 = add nsw i32 %108, -1
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  br i1 %110, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.58, i32 noundef %104) #29
  br label %127

114:                                              ; preds = %107
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.59, i32 noundef %104, i32 noundef %109) #29
  %116 = load i32, ptr @align_functions_log, align 4, !tbaa !19
  %117 = icmp sgt i32 %116, 3
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = shl nuw i32 1, %116
  %120 = load i32, ptr @align_functions, align 4, !tbaa !19
  %121 = icmp sgt i32 %119, %120
  %122 = icmp sgt i32 %120, 7
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %126 = call i32 @fputs(ptr noundef nonnull @.str.60, ptr noundef %125) #29
  br label %127

127:                                              ; preds = %114, %118, %124, %112, %100, %93
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 1024
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load ptr, ptr @debug_hooks, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %133, i64 0, i32 14
  %135 = load ptr, ptr %134, align 8, !tbaa !81
  call void %135(ptr noundef nonnull %0) #27
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i64, ptr %0, align 8
  %138 = and i64 %137, 134217728
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  call void @notice_global_symbol(ptr noundef nonnull %0) #29
  call fastcc void @globalize_decl(ptr noundef nonnull %0) #29
  %141 = call i32 @maybe_assemble_visibility(ptr noundef nonnull %0) #29, !range !83
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i64, ptr %128, align 8
  %144 = and i64 %143, 8192
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 33), align 8, !tbaa !84
  call void %147(ptr noundef %1) #27
  br label %148

148:                                              ; preds = %146, %142
  %149 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %150 = call i32 @fputs(ptr noundef nonnull @.str.61, ptr noundef %149) #29
  %151 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  call void @assemble_name(ptr noundef %151, ptr noundef %1) #29
  %152 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %153 = call i32 @fputs(ptr noundef nonnull @.str.62, ptr noundef %152) #29
  %154 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #29
  %156 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %157 = call i32 @putc(i32 noundef 10, ptr noundef %156) #29
  %158 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  call void @assemble_name(ptr noundef %158, ptr noundef %1) #29
  %159 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %160 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %159) #29
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #28
  ret void
}

; Function Attrs: optsize
declare void @app_disable() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constant_pool() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !85
  tail call fastcc void @mark_constant_pool() #29
  tail call fastcc void @output_constant_pool_contents(ptr noundef %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !51
  %5 = tail call ptr %4(ptr noundef %1) #27
  %6 = tail call ptr @maybe_get_identifier(ptr noundef %5) #27
  store ptr %6, ptr %3, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  tail call void @mark_referenced(ptr noundef nonnull %6) #29
  %9 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3) #29
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %1, %8 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2517, ptr noundef nonnull @.str.5) #27
  br label %21

21:                                               ; preds = %20, %15, %2
  %22 = phi ptr [ %1, %2 ], [ %16, %15 ], [ %16, %20 ]
  tail call void @assemble_name_raw(ptr noundef %0, ptr noundef %22) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @globalize_decl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %11 = load ptr, ptr %7, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %19 = tail call i32 @fputs(ptr noundef nonnull @.str.176, ptr noundef %18) #29
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %20, ptr noundef %17) #29
  %21 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %22 = tail call i32 @fputc(i32 noundef 10, ptr noundef %21) #29
  %23 = load ptr, ptr @weak_decls, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %39, %12
  %26 = load ptr, ptr @weakref_targets, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %42

28:                                               ; preds = %12, %39
  %29 = phi ptr [ %37, %39 ], [ %23, %12 ]
  %30 = phi ptr [ %40, %39 ], [ @weak_decls, %12 ]
  %31 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %32 = getelementptr inbounds %struct.tree_list, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = tail call ptr @decl_assembler_name(ptr noundef %33) #27
  %35 = icmp eq ptr %31, %34
  %36 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  br i1 %35, label %38, label %39

38:                                               ; preds = %28
  store ptr %37, ptr %30, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %28, %38
  %40 = phi ptr [ %30, %38 ], [ %36, %28 ]
  %41 = icmp eq ptr %37, null
  br i1 %41, label %25, label %28, !llvm.loop !86

42:                                               ; preds = %25, %52
  %43 = phi ptr [ %50, %52 ], [ %26, %25 ]
  %44 = phi ptr [ %53, %52 ], [ @weakref_targets, %25 ]
  %45 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %46 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %47 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %46) #29
  %48 = icmp eq ptr %45, %47
  %49 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  br i1 %48, label %51, label %52

51:                                               ; preds = %42
  store ptr %50, ptr %44, align 8, !tbaa !5
  br label %52

52:                                               ; preds = %42, %51
  %53 = phi ptr [ %44, %51 ], [ %49, %42 ]
  %54 = icmp eq ptr %50, null
  br i1 %54, label %58, label %42, !llvm.loop !87

55:                                               ; preds = %1
  %56 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 7), align 8, !tbaa !88
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void %56(ptr noundef %57, ptr noundef nonnull %0) #27
  br label %58

58:                                               ; preds = %52, %25, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @maybe_assemble_visibility(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 10
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 13), align 8, !tbaa !89
  tail call void %8(ptr noundef nonnull %0, i32 noundef %5) #27
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_end_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @function_section(ptr noundef %0) #29
  tail call void @switch_to_section(ptr noundef %6) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.65, ptr noundef %11) #29
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %13, ptr noundef %1) #29
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %15 = tail call i32 @fputs(ptr noundef nonnull @.str.66, ptr noundef %14) #29
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %16, ptr noundef %1) #29
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %18 = tail call i32 @putc(i32 noundef 10, ptr noundef %17) #29
  br label %19

19:                                               ; preds = %7, %10
  %20 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @in_section, align 8, !tbaa !5
  %24 = tail call ptr @unlikely_text_section() #29
  tail call void @switch_to_section(ptr noundef %24) #29
  %25 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %26 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8, !tbaa !90
  tail call void @assemble_name(ptr noundef %25, ptr noundef %26) #29
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %28 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %27) #29
  %29 = load i8, ptr @first_function_block_is_cold, align 1, !tbaa !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr @text_section, align 8, !tbaa !5
  br label %35

33:                                               ; preds = %22
  %34 = tail call ptr @function_section(ptr noundef %0) #29
  br label %35

35:                                               ; preds = %31, %33
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  tail call void @switch_to_section(ptr noundef %36) #29
  %37 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !73
  tail call void @assemble_name(ptr noundef %37, ptr noundef %38) #29
  %39 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %40 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %39) #29
  tail call void @switch_to_section(ptr noundef %23) #29
  br label %41

41:                                               ; preds = %35, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_zeros(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @flag_syntax_only, align 4, !tbaa !19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = load ptr, ptr @in_section, align 8, !tbaa !5
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i64 %0, 0
  br i1 %8, label %17, label %10

10:                                               ; preds = %4
  br i1 %9, label %21, label %11

11:                                               ; preds = %10, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %10 ]
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %14 = tail call zeroext i8 @assemble_integer(ptr noundef %13, i32 noundef 1, i32 noundef 8, i32 noundef 1) #29, !range !66
  %15 = add nuw i64 %12, 1
  %16 = icmp eq i64 %15, %0
  br i1 %16, label %21, label %11, !llvm.loop !91

17:                                               ; preds = %4
  br i1 %9, label %21, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %0) #29
  br label %21

21:                                               ; preds = %11, %10, %17, %18, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @assemble_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %114

4:                                                ; preds = %2, %111
  %5 = phi ptr [ %10, %111 ], [ %0, %2 ]
  %6 = phi i32 [ %112, %111 ], [ 0, %2 ]
  %7 = sub nsw i32 %1, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 2000)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = icmp sgt i32 %7, 0
  br i1 %11, label %12, label %111

12:                                               ; preds = %4, %101
  %13 = phi ptr [ %104, %101 ], [ %5, %4 ]
  %14 = phi i32 [ %102, %101 ], [ 0, %4 ]
  %15 = phi ptr [ %33, %101 ], [ null, %4 ]
  %16 = icmp ugt i32 %14, 59
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ 0, %17 ], [ %14, %12 ]
  %22 = icmp ugt ptr %13, %15
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = icmp ult ptr %13, %10
  br i1 %24, label %25, label %32

25:                                               ; preds = %23, %29
  %26 = phi ptr [ %30, %29 ], [ %13, %23 ]
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = icmp ult ptr %30, %10
  br i1 %31, label %25, label %32, !llvm.loop !92

32:                                               ; preds = %29, %25, %23, %20
  %33 = phi ptr [ %15, %20 ], [ %13, %23 ], [ %30, %29 ], [ %26, %25 ]
  %34 = icmp ult ptr %33, %10
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %13 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 257
  %39 = and i1 %34, %38
  %40 = icmp eq i32 %21, 0
  br i1 %39, label %41, label %76

41:                                               ; preds = %32
  br i1 %40, label %45, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %44 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %41, %42
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #29
  %48 = load i8, ptr %13, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45, %69
  %51 = phi i8 [ %71, %69 ], [ %48, %45 ]
  %52 = phi ptr [ %70, %69 ], [ %13, %45 ]
  %53 = zext i8 %51 to i32
  %54 = zext i8 %51 to i64
  %55 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  switch i8 %56, label %63 [
    i8 0, label %57
    i8 1, label %60
  ]

57:                                               ; preds = %50
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %59 = tail call i32 @putc(i32 noundef %53, ptr noundef %58) #29
  br label %69

60:                                               ; preds = %50
  %61 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.73, i32 noundef %53) #29
  br label %69

63:                                               ; preds = %50
  %64 = sext i8 %56 to i32
  %65 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %66 = tail call i32 @putc(i32 noundef 92, ptr noundef %65) #29
  %67 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %68 = tail call i32 @putc(i32 noundef %64, ptr noundef %67) #29
  br label %69

69:                                               ; preds = %63, %60, %57
  %70 = getelementptr inbounds i8, ptr %52, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %50, !llvm.loop !93

73:                                               ; preds = %69, %45
  %74 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %74)
  br label %101

76:                                               ; preds = %32
  br i1 %40, label %77, label %80

77:                                               ; preds = %76
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74) #29
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i8, ptr %13, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = zext i8 %81 to i64
  %84 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !9
  switch i8 %85, label %94 [
    i8 0, label %86
    i8 1, label %90
  ]

86:                                               ; preds = %80
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %88 = tail call i32 @putc(i32 noundef %82, ptr noundef %87) #29
  %89 = add nuw nsw i32 %21, 1
  br label %101

90:                                               ; preds = %80
  %91 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.73, i32 noundef %82) #29
  %93 = add nuw nsw i32 %21, 4
  br label %101

94:                                               ; preds = %80
  %95 = sext i8 %85 to i32
  %96 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %97 = tail call i32 @putc(i32 noundef 92, ptr noundef %96) #29
  %98 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %99 = tail call i32 @putc(i32 noundef %95, ptr noundef %98) #29
  %100 = add nuw nsw i32 %21, 2
  br label %101

101:                                              ; preds = %86, %90, %94, %73
  %102 = phi i32 [ 0, %73 ], [ %100, %94 ], [ %93, %90 ], [ %89, %86 ]
  %103 = phi ptr [ %33, %73 ], [ %13, %94 ], [ %13, %90 ], [ %13, %86 ]
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = icmp ult ptr %104, %10
  br i1 %105, label %12, label %106, !llvm.loop !94

106:                                              ; preds = %101
  %107 = icmp eq i32 %102, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %110 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %109)
  br label %111

111:                                              ; preds = %4, %108, %106
  %112 = add nsw i32 %8, %6
  %113 = icmp slt i32 %112, %1
  br i1 %113, label %4, label %114, !llvm.loop !95

114:                                              ; preds = %111, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_emutls_var_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef 4) #29
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %4) #29
  store ptr %8, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %13) #27
  %15 = getelementptr inbounds %struct.constructor_elt_d, ptr %9, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !98
  %16 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %4) #29
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  store ptr %18, ptr %16, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !9
  %23 = lshr i32 %22, 3
  %24 = zext nneg i32 %23 to i64
  %25 = tail call ptr @build_int_cst(ptr noundef %20, i64 noundef %24) #27
  %26 = getelementptr inbounds %struct.constructor_elt_d, ptr %16, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !98
  %27 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %4) #29
  %28 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  store ptr %29, ptr %27, align 8, !tbaa !96
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %31 = getelementptr inbounds %struct.constructor_elt_d, ptr %27, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !98
  %32 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %4) #29
  %33 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  store ptr %34, ptr %32, align 8, !tbaa !96
  %35 = getelementptr inbounds %struct.constructor_elt_d, ptr %32, i64 0, i32 1
  store ptr %2, ptr %35, align 8, !tbaa !98
  %36 = tail call ptr @build_constructor(ptr noundef %6, ptr noundef %4) #27
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #27
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8, !tbaa !99
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !99
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_variable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 32
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 49152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @emutls_decl(ptr noundef nonnull %0) #29
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr @global_trees, align 16
  %32 = icmp eq ptr %29, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %27, %22
  %35 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 7), align 8, !tbaa !101
  %36 = tail call fastcc ptr @get_emutls_init_templ_addr(ptr noundef nonnull %0) #29
  %37 = tail call ptr %35(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef %36) #27
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 5
  store ptr %37, ptr %38, align 8, !tbaa !9
  tail call void @record_references_in_initializer(ptr noundef nonnull %17, i8 noundef zeroext 0) #27
  br label %39

39:                                               ; preds = %16, %27, %34, %11, %7, %4
  %40 = phi ptr [ %0, %4 ], [ %0, %11 ], [ %0, %7 ], [ %17, %34 ], [ %17, %27 ], [ %17, %16 ]
  store ptr null, ptr @last_assemble_variable_decl, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %202

45:                                               ; preds = %39
  %46 = load i64, ptr %40, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 29
  br i1 %48, label %202, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %47, i64 11
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %40, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = or i64 %46, 4194304
  store i64 %62, ptr %40, align 8
  br label %202

63:                                               ; preds = %57, %53, %49
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @layout_decl(ptr noundef nonnull %40, i32 noundef 0) #27
  br label %68

68:                                               ; preds = %67, %63
  %69 = icmp eq i32 %3, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load ptr, ptr %64, align 8, !tbaa !9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.75, ptr noundef nonnull %40) #27
  %74 = load i64, ptr %40, align 8
  %75 = or i64 %74, 4194304
  store i64 %75, ptr %40, align 8
  br label %202

76:                                               ; preds = %70, %68
  %77 = load i64, ptr %40, align 8
  %78 = and i64 %77, 4194304
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %202

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %40, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  tail call void @make_decl_rtl(ptr noundef nonnull %40) #29
  %85 = load ptr, ptr %81, align 8, !tbaa !9
  %86 = load i64, ptr %40, align 8
  br label %87

87:                                               ; preds = %80, %84
  %88 = phi i64 [ %86, %84 ], [ %77, %80 ]
  %89 = phi ptr [ %85, %84 ], [ %82, %80 ]
  %90 = or i64 %88, 4194304
  store i64 %90, ptr %40, align 8
  %91 = load i32, ptr @flag_syntax_only, align 4, !tbaa !19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %202

93:                                               ; preds = %87
  tail call void @app_disable() #27
  br i1 %69, label %94, label %100

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = tail call i32 @host_integerp(ptr noundef %96, i32 noundef 1) #27
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.76, ptr noundef nonnull %40) #27
  br label %202

100:                                              ; preds = %94, %93
  %101 = load i32, ptr %89, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 43
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2212, ptr noundef nonnull @.str.5) #27
  br label %105

105:                                              ; preds = %100, %104
  %106 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !9
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 45
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2213, ptr noundef nonnull @.str.5) #27
  %112 = load ptr, ptr %106, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %105, %111
  %114 = phi ptr [ %107, %105 ], [ %112, %111 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !9
  %117 = load i64, ptr %40, align 8
  %118 = and i64 %117, 134217728
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.tree_decl_minimal, ptr %40, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @notice_global_symbol(ptr noundef nonnull %40) #29
  br label %125

125:                                              ; preds = %124, %120, %113
  %126 = trunc i32 %3 to i8
  tail call void @align_variable(ptr noundef nonnull %40, i8 noundef zeroext %126) #29
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !9
  tail call void @set_mem_align(ptr noundef nonnull %89, i32 noundef %128) #27
  %129 = load i64, ptr %40, align 8
  %130 = and i64 %129, 134217728
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = tail call i32 @maybe_assemble_visibility(ptr noundef nonnull %40) #29, !range !83
  br label %134

134:                                              ; preds = %132, %125
  %135 = load i64, ptr %41, align 8
  %136 = and i64 %135, 8192
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 33), align 8, !tbaa !84
  tail call void %139(ptr noundef %116) #27
  br label %140

140:                                              ; preds = %138, %134
  %141 = tail call fastcc ptr @get_variable_section(ptr noundef nonnull %40, i8 noundef zeroext 0) #29
  %142 = load i64, ptr %40, align 8
  %143 = and i64 %142, 134217728
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i32, ptr %141, align 8, !tbaa !9
  %147 = and i32 %146, 8388608
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  tail call fastcc void @globalize_decl(ptr noundef nonnull %40) #29
  br label %150

150:                                              ; preds = %149, %145, %140
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !9
  %153 = icmp eq ptr %152, null
  %154 = load ptr, ptr @global_trees, align 16
  %155 = icmp eq ptr %152, %154
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %150
  tail call fastcc void @output_addressed_constants(ptr noundef nonnull %152) #29
  br label %158

158:                                              ; preds = %157, %150
  %159 = icmp eq ptr %141, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %158
  %161 = load i32, ptr %141, align 8, !tbaa !9
  %162 = and i32 %161, 256
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %40, i64 0, i32 4
  %166 = load i32, ptr %165, align 8
  %167 = or i32 %166, 16
  store i32 %167, ptr %165, align 8
  br label %168

168:                                              ; preds = %164, %160, %158
  %169 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %170 = load i32, ptr %169, align 8, !tbaa !9
  %171 = and i32 %170, 128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !9
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  br i1 %69, label %179, label %178

178:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2249, ptr noundef nonnull @.str.5) #27
  br label %179

179:                                              ; preds = %177, %178
  tail call void @place_block_symbol(ptr noundef nonnull %114) #29
  br label %202

180:                                              ; preds = %173, %168
  %181 = load i32, ptr %141, align 8, !tbaa !9
  %182 = and i32 %181, 6291456
  %183 = icmp eq i32 %182, 4194304
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  tail call fastcc void @assemble_noswitch_variable(ptr noundef nonnull %40, ptr noundef %116, ptr noundef nonnull %141) #29
  br label %202

185:                                              ; preds = %180
  tail call void @switch_to_section(ptr noundef nonnull %141) #29
  %186 = load i32, ptr %127, align 8, !tbaa !9
  %187 = icmp ugt i32 %186, 8
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = lshr i32 %186, 3
  %190 = zext nneg i32 %189 to i64
  %191 = tail call i32 @floor_log2(i64 noundef %190) #27
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %195 = load i32, ptr %127, align 8, !tbaa !9
  %196 = lshr i32 %195, 3
  %197 = zext nneg i32 %196 to i64
  %198 = tail call i32 @floor_log2(i64 noundef %197) #27
  %199 = shl nuw i32 1, %198
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.57, i32 noundef %199) #29
  br label %201

201:                                              ; preds = %188, %193, %185
  tail call fastcc void @assemble_variable_contents(ptr noundef nonnull %40, ptr noundef %116, i8 noundef zeroext %126) #29
  br label %202

202:                                              ; preds = %179, %201, %184, %87, %76, %45, %39, %99, %73, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_emutls_init_templ_addr(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %85

14:                                               ; preds = %8, %4, %1
  %15 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 5), align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %16, %18 ], [ @.str.168, %14 ]
  %23 = tail call fastcc ptr @prefix_name(ptr noundef nonnull %22, ptr noundef %15) #29
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ %23, %21 ], [ %15, %18 ]
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = tail call ptr @build_decl_stat(i32 noundef %27, i32 noundef 32, ptr noundef %25, ptr noundef %29) #27
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %30, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %30, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -57345
  %37 = or disjoint i32 %36, 8192
  store i32 %37, ptr %34, align 8
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = or i64 %39, 4096
  store i64 %40, ptr %38, align 8
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 16777216
  %43 = load i64, ptr %30, align 8
  %44 = and i64 %43, -17825793
  %45 = or disjoint i64 %44, %42
  %46 = or disjoint i64 %45, 1048576
  store i64 %46, ptr %30, align 8
  %47 = or i64 %39, 5120
  store i64 %47, ptr %38, align 8
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.tree_decl_minimal, ptr %30, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %30, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 128
  %57 = and i32 %37, -49281
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %34, align 8
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %24
  %63 = tail call ptr @decl_assembler_name(ptr noundef nonnull %30) #27
  tail call void @make_decl_one_only(ptr noundef nonnull %30, ptr noundef %63) #29
  %64 = load i64, ptr %0, align 8
  %65 = and i64 %64, 67108864
  %66 = load i64, ptr %30, align 8
  %67 = and i64 %66, -67108865
  %68 = or disjoint i64 %67, %65
  store i64 %68, ptr %30, align 8
  %69 = load i64, ptr %0, align 8
  %70 = and i64 %69, 134217728
  %71 = and i64 %68, -134217729
  %72 = or disjoint i64 %71, %70
  store i64 %72, ptr %30, align 8
  %73 = load i32, ptr %54, align 8
  %74 = and i32 %73, 3072
  %75 = load i32, ptr %34, align 8
  %76 = and i32 %75, -3073
  %77 = or disjoint i32 %76, %74
  store i32 %77, ptr %34, align 8
  br label %80

78:                                               ; preds = %24
  %79 = or i64 %45, 68157440
  store i64 %79, ptr %30, align 8
  br label %80

80:                                               ; preds = %78, %62
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 5
  store ptr %82, ptr %83, align 8, !tbaa !9
  store ptr null, ptr %81, align 8, !tbaa !9
  tail call void @varpool_finalize_decl(ptr noundef nonnull %30) #27
  %84 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %30) #27
  br label %85

85:                                               ; preds = %80, %12
  %86 = phi ptr [ %84, %80 ], [ %13, %12 ]
  ret ptr %86
}

; Function Attrs: optsize
declare void @record_references_in_initializer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_variable_section(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %10, label %7

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
  br i1 %15, label %44, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i1 %11, i1 false
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1183, ptr noundef nonnull @.str.5) #27
  %22 = load i32, ptr %12, align 8
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi i32 [ %13, %16 ], [ %22, %21 ]
  %25 = lshr i32 %24, 13
  %26 = and i32 %25, 7
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr @tls_comm_section, align 8, !tbaa !5
  br label %97

30:                                               ; preds = %23
  %31 = icmp ne i32 %26, 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 1), align 8
  %33 = icmp ne ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i64, ptr %0, align 8
  %37 = and i64 %36, 134217728
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc zeroext i8 @bss_initializer_p(ptr noundef nonnull %0) #29, !range !66
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @comm_section, align 8, !tbaa !5
  br label %97

44:                                               ; preds = %35, %39, %30, %10
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load ptr, ptr %3, align 8, !tbaa !9
  %51 = tail call fastcc i32 @contains_pointers_p(ptr noundef %50) #29, !range !83
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 3
  br label %58

54:                                               ; preds = %44
  %55 = icmp eq ptr %46, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %46) #29, !range !102
  br label %58

58:                                               ; preds = %54, %56, %49
  %59 = phi i32 [ %53, %49 ], [ %57, %56 ], [ 0, %54 ]
  %60 = load i32, ptr @flag_data_sections, align 4, !tbaa !19
  tail call void @resolve_unique_section(ptr noundef nonnull %0, i32 noundef %59, i32 noundef %60) #29
  %61 = load i64, ptr %0, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %69 [
    i16 29, label %63
    i16 32, label %63
  ]

63:                                               ; preds = %58, %58
  %64 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef %59) #29
  br label %97

69:                                               ; preds = %58, %63
  br i1 %11, label %70, label %91

70:                                               ; preds = %69
  %71 = load i32, ptr %12, align 8
  %72 = and i32 %71, 49152
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = icmp ne i8 %1, 0
  %76 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 111), align 2
  %77 = icmp ne i8 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = tail call fastcc zeroext i8 @bss_initializer_p(ptr noundef nonnull %0) #29, !range !66
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i64, ptr %0, align 8
  %84 = and i64 %83, 134217728
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load ptr, ptr @lcomm_section, align 8, !tbaa !5
  br label %97

88:                                               ; preds = %82
  %89 = load ptr, ptr @bss_noswitch_section, align 8, !tbaa !5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88, %74, %79, %70, %69
  %92 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 21), align 8, !tbaa !103
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !9
  %95 = zext i32 %94 to i64
  %96 = tail call ptr %92(ptr noundef nonnull %0, i32 noundef %59, i64 noundef %95) #27
  br label %97

97:                                               ; preds = %88, %91, %86, %67, %42, %28
  %98 = phi ptr [ %29, %28 ], [ %43, %42 ], [ %68, %67 ], [ %96, %91 ], [ %87, %86 ], [ %89, %88 ]
  ret ptr %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_addressed_constants(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %42, %1
  %3 = phi ptr [ %0, %1 ], [ %44, %42 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %61 [
    i16 121, label %6
    i16 122, label %6
    i16 63, label %39
    i16 66, label %39
    i16 64, label %39
    i16 116, label %42
    i16 113, label %42
    i16 118, label %42
    i16 51, label %7
  ]

6:                                                ; preds = %2, %2
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %9) #29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %61, label %45

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %3, %6 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %15) #29, !range !66
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %12, !llvm.loop !104

18:                                               ; preds = %12
  %19 = load i64, ptr %15, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 33
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %15, ptr %24
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i64 [ %28, %22 ], [ %20, %18 ]
  %31 = phi ptr [ %26, %22 ], [ %15, %18 ]
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = icmp eq i32 %33, 1
  %35 = icmp eq i64 %30, 51
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = tail call ptr @output_constant_def(ptr noundef nonnull %31, i32 noundef 0) #29
  br label %61

39:                                               ; preds = %2, %2, %2
  %40 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  tail call fastcc void @output_addressed_constants(ptr noundef %41) #29
  br label %42

42:                                               ; preds = %2, %2, %2, %39
  %43 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  br label %2

45:                                               ; preds = %7, %55
  %46 = phi ptr [ %56, %55 ], [ %9, %7 ]
  %47 = phi i64 [ %57, %55 ], [ 0, %7 ]
  %48 = trunc i64 %47 to i32
  %49 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %46, i32 noundef %48) #29
  %50 = getelementptr inbounds %struct.constructor_elt_d, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !98
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  tail call fastcc void @output_addressed_constants(ptr noundef nonnull %51) #29
  %54 = load ptr, ptr %8, align 8, !tbaa !9
  br label %55

55:                                               ; preds = %45, %53
  %56 = phi ptr [ %46, %45 ], [ %54, %53 ]
  %57 = add nuw nsw i64 %47, 1
  %58 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %56) #29
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %45, label %61, !llvm.loop !105

61:                                               ; preds = %2, %55, %7, %29, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @place_block_symbol(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6856, ptr noundef nonnull @.str.5) #27
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !9
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %56, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %16, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !108
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  br label %39

25:                                               ; preds = %10
  %26 = and i32 %11, 1073741824
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  br i1 %27, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @get_constant_alignment(ptr noundef %29) #29
  %32 = tail call fastcc i64 @get_constant_size(ptr noundef %29) #29
  br label %39

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = tail call i64 @tree_low_cst(ptr noundef %37, i32 noundef 1) #27
  br label %39

39:                                               ; preds = %30, %33, %14
  %40 = phi i32 [ %18, %14 ], [ %31, %30 ], [ %35, %33 ]
  %41 = phi i64 [ %24, %14 ], [ %32, %30 ], [ %38, %33 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !9
  %43 = lshr i32 %40, 3
  %44 = add nsw i32 %43, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !109
  %48 = add i64 %47, %45
  %49 = xor i64 %45, -1
  %50 = and i64 %48, %49
  store i64 %50, ptr %7, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !111
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %40)
  store i32 %53, ptr %51, align 8, !tbaa !111
  %54 = add i64 %50, %41
  store i64 %54, ptr %46, align 8, !tbaa !109
  %55 = getelementptr inbounds %struct.object_block, ptr %42, i64 0, i32 3
  tail call fastcc void @VEC_rtx_gc_safe_push(ptr noundef nonnull %55, ptr noundef nonnull %0) #29
  br label %56

56:                                               ; preds = %6, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assemble_noswitch_variable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call i64 @tree_low_cst(ptr noundef %5, i32 noundef 1) #27
  %7 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !19
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i64 15, i64 31
  %12 = add i64 %11, %7
  %13 = select i1 %10, i64 -16, i64 -32
  %14 = and i64 %12, %13
  %15 = getelementptr inbounds %struct.noswitch_section, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call zeroext i8 %16(ptr noundef %0, ptr noundef %1, i64 noundef %6, i64 noundef %14) #27
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !9
  %22 = lshr i32 %21, 3
  %23 = zext nneg i32 %22 to i64
  %24 = icmp ult i64 %14, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.169, ptr noundef nonnull %0, i64 noundef %14) #27
  br label %27

27:                                               ; preds = %25, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assemble_variable_contents(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  store ptr %0, ptr @last_assemble_variable_decl, align 8, !tbaa !5
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.61, ptr noundef %4) #29
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %6, ptr noundef %1) #29
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %8 = tail call i32 @fputs(ptr noundef nonnull @.str.62, ptr noundef %7) #29
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.170) #29
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %12 = tail call i32 @putc(i32 noundef 10, ptr noundef %11) #29
  store i32 0, ptr @size_directive_output, align 4, !tbaa !19
  %13 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !19
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne ptr %0, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  store i32 1, ptr @size_directive_output, align 4, !tbaa !19
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = tail call i64 @int_size_in_bytes(ptr noundef %23) #27
  %25 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %26 = tail call i32 @fputs(ptr noundef nonnull @.str.65, ptr noundef %25) #29
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %27, ptr noundef %1) #29
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.171, i64 noundef %24) #29
  br label %30

30:                                               ; preds = %3, %17, %21
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %31, ptr noundef %1) #29
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %33 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %32) #29
  %34 = icmp eq i8 %2, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  %39 = load ptr, ptr @global_trees, align 16
  %40 = icmp eq ptr %37, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %37) #27
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr %36, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = tail call i64 @tree_low_cst(ptr noundef %48, i32 noundef 1) #27
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !9
  tail call void @output_constant(ptr noundef %46, i64 noundef %49, i32 noundef %51) #29
  br label %56

52:                                               ; preds = %42, %35
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = tail call i64 @tree_low_cst(ptr noundef %54, i32 noundef 1) #27
  tail call void @assemble_zeros(i64 noundef %55) #29
  br label %56

56:                                               ; preds = %45, %52, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @process_pending_assemble_externals() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %8, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  tail call fastcc void @assemble_external_real(ptr noundef %6) #29
  %7 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3, !llvm.loop !112

10:                                               ; preds = %3, %0
  store ptr null, ptr @pending_assemble_externals, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assemble_external_real(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %6 = load ptr, ptr %2, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 536936447
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = tail call fastcc zeroext i8 @incorporeal_function_p(ptr noundef nonnull %0) #29, !range !66
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8, !tbaa !9
  %23 = load i32, ptr %22, align 8
  %24 = or i32 %23, 536870912
  store i32 %24, ptr %22, align 8
  tail call void @default_elf_asm_output_external(ptr poison, ptr noundef nonnull %0, ptr poison) #29
  br label %25

25:                                               ; preds = %21, %18, %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_external(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2373, ptr noundef nonnull @.str.5) #27
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  %16 = and i64 %6, 134217728
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %46, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  %24 = and i64 %6, 67108864
  %25 = icmp eq i64 %24, 0
  %26 = and i1 %25, %23
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.77, ptr noundef %29) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @weak_decls, align 8, !tbaa !5
  %34 = tail call ptr @value_member(ptr noundef nonnull %0, ptr noundef %33) #27
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @weak_decls, align 8, !tbaa !5
  %38 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %0, ptr noundef %37) #27
  store ptr %38, ptr @weak_decls, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %36, %32, %27, %19
  %40 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !5
  %41 = tail call ptr @value_member(ptr noundef nonnull %0, ptr noundef %40) #27
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr @pending_assemble_externals, align 8, !tbaa !5
  %45 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %0, ptr noundef %44) #27
  store ptr %45, ptr @pending_assemble_externals, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %5, %11, %43, %39
  ret void
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @value_member(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_external_libcall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 536870912
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = or disjoint i32 %2, 536870912
  store i32 %6, ptr %0, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 32), align 8, !tbaa !113
  tail call void %7(ptr noundef nonnull %0) #27
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_label(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %2, ptr noundef %0) #29
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mark_referenced(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = load i64, ptr %0, align 8
  %3 = or i64 %2, 67108864
  store i64 %3, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_decl_referenced(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %24 [
    i16 29, label %4
    i16 32, label %19
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #27
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = load i8, ptr @cgraph_global_info_ready, align 1
  %14 = icmp eq i8 %13, 0
  %15 = and i8 %12, -124
  %16 = icmp ne i8 %15, -124
  %17 = select i1 %16, i1 true, i1 %14
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %5) #27
  br label %24

19:                                               ; preds = %1
  %20 = tail call ptr @varpool_node(ptr noundef nonnull %0) #27
  tail call void @varpool_mark_needed_node(ptr noundef %20) #27
  %21 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 2
  store i8 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %1, %4, %18, %10, %19
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_name_raw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 42
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = tail call i32 @fputs(ptr noundef nonnull %6, ptr noundef %0) #29
  br label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %1) #27
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @asm_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ultimate_transparent_alias_target(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 1073741824
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2471, ptr noundef nonnull @.str.5) #27
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %7) #29
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 1073741824
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2474, ptr noundef nonnull @.str.5) #27
  br label %21

21:                                               ; preds = %16, %20
  store ptr %12, ptr %0, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %21, %1
  %23 = phi ptr [ %12, %21 ], [ %2, %1 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @assemble_static_space(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #28
  %3 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.79, i32 noundef %3) #29
  %5 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @const_labelno, align 4, !tbaa !19
  %7 = call ptr @ggc_alloc_string(ptr noundef nonnull %2, i32 noundef -1) #27
  %8 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %7) #27
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %9, align 8, !tbaa !9
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %11 = call i32 @fputs(ptr nonnull @.str.81, ptr %10)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  call void @assemble_name(ptr noundef %12, ptr noundef nonnull %2) #29
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %14 = call i32 @fputc(i32 10, ptr %13)
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %16 = call i32 @fputs(ptr nonnull @.str.83, ptr %15)
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  call void @assemble_name(ptr noundef %17, ptr noundef nonnull %2) #29
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %19 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !19
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 16, i32 32
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.84, i64 noundef %0, i32 noundef %22) #29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #28
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @assemble_trampoline_template() local_unnamed_addr #0 {
  %1 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #28
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 39), align 8, !tbaa !114
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2576, ptr noundef nonnull @.str.5) #27
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @initial_trampoline, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  tail call void @switch_to_section(ptr noundef %9) #29
  %10 = tail call i32 @floor_log2(i64 noundef 1) #27
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %14 = shl nuw i32 1, %10
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.57, i32 noundef %14) #29
  br label %16

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !115
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void %17(ptr noundef %18, ptr noundef nonnull @.str.85, i64 noundef 0) #27
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 39), align 8, !tbaa !114
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void %19(ptr noundef %20) #27
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.85, i32 noundef 0) #29
  %22 = call ptr @ggc_alloc_string(ptr noundef nonnull %1, i32 noundef -1) #27
  %23 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %22) #27
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 2, ptr %24, align 8, !tbaa !9
  %25 = call ptr @gen_const_mem(i32 noundef 1, ptr noundef %23) #27
  store ptr %25, ptr @initial_trampoline, align 8, !tbaa !5
  call void @set_mem_align(ptr noundef %25, i32 noundef 8) #27
  %26 = load ptr, ptr @initial_trampoline, align 8, !tbaa !5
  %27 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 10) #27
  call void @set_mem_size(ptr noundef %26, ptr noundef %27) #27
  %28 = load ptr, ptr @initial_trampoline, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %5, %16
  %30 = phi ptr [ %28, %16 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #28
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @gen_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @integer_asm_op(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, 0
  switch i32 %0, label %22 [
    i32 1, label %4
    i32 2, label %6
    i32 4, label %10
    i32 8, label %14
    i32 16, label %18
  ]

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 2), align 8, !tbaa !116
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_integer_with_op(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %4 = tail call i32 @fputs(ptr noundef %0, ptr noundef %3) #29
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @output_addr_const(ptr noundef %5, ptr noundef %1) #27
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %7 = tail call i32 @fputc(i32 noundef 10, ptr noundef %6) #29
  ret void
}

; Function Attrs: optsize
declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_assemble_integer(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @integer_asm_op(i32 noundef %1, i32 noundef %2) #29
  %5 = icmp ugt i32 %1, 4
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %4, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @assemble_integer_with_op(ptr noundef nonnull %4, ptr noundef %0) #29
  br label %9

9:                                                ; preds = %8, %6
  %10 = zext i1 %7 to i8
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i8 [ %10, %9 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_real(ptr noundef byval(%struct.real_value) align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  %9 = call i64 @real_to_target(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef %1) #27
  %10 = load i64, ptr %4, align 16, !tbaa !117
  %11 = and i64 %10, 4294967295
  %12 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #27
  %13 = call i32 @llvm.umin.i32(i32 %8, i32 4)
  %14 = call zeroext i8 @assemble_integer(ptr noundef %12, i32 noundef %13, i32 noundef %2, i32 noundef 1) #29, !range !66
  %15 = call fastcc i32 @min_align(i32 noundef %2, i32 noundef 32) #29
  %16 = icmp ugt i8 %7, 4
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = shl nuw nsw i32 %8, 3
  %19 = add nuw nsw i32 %18, 31
  %20 = lshr i32 %19, 5
  %21 = zext nneg i32 %20 to i64
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 1, %17 ], [ %32, %22 ]
  %24 = phi i32 [ %8, %17 ], [ %25, %22 ]
  %25 = add nsw i32 %24, -4
  %26 = getelementptr inbounds [4 x i64], ptr %4, i64 0, i64 %23
  %27 = load i64, ptr %26, align 8, !tbaa !117
  %28 = and i64 %27, 4294967295
  %29 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #27
  %30 = call i32 @llvm.smin.i32(i32 %25, i32 4)
  %31 = call zeroext i8 @assemble_integer(ptr noundef %29, i32 noundef %30, i32 noundef %15, i32 noundef 1) #29, !range !66
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, %21
  br i1 %33, label %34, label %22, !llvm.loop !118

34:                                               ; preds = %22, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: optsize
declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_align(i32 noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = or i32 %1, %0
  %4 = sub i32 0, %3
  %5 = and i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @constant_pool_htab() local_unnamed_addr #7 {
  %1 = load ptr, ptr @const_desc_htab, align 8, !tbaa !5
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @output_constant_def(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.constant_descriptor_tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !119
  %5 = tail call fastcc i32 @const_hash_1(ptr noundef %0) #29
  %6 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %3, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !121
  %7 = load ptr, ptr @const_desc_htab, align 8, !tbaa !5
  %8 = call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 1) #27
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call fastcc ptr @build_constant_desc(ptr noundef %0) #29
  %13 = load i32, ptr %6, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %12, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !121
  store ptr %12, ptr %8, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi ptr [ %12, %11 ], [ %9, %2 ]
  call fastcc void @maybe_output_constant_def_contents(ptr noundef nonnull %16, i32 noundef %1) #29
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @const_hash_1(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.addr_const, align 8
  br label %3

3:                                                ; preds = %98, %1
  %4 = phi i32 [ 0, %1 ], [ %106, %98 ]
  %5 = phi ptr [ %0, %1 ], [ %104, %98 ]
  br label %6

6:                                                ; preds = %21, %3
  %7 = phi i32 [ 0, %3 ], [ %28, %21 ]
  %8 = phi ptr [ %5, %3 ], [ %27, %21 ]
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %115 [
    i16 23, label %11
    i16 24, label %13
    i16 25, label %17
    i16 28, label %118
    i16 26, label %21
    i16 51, label %29
    i16 121, label %60
    i16 122, label %60
    i16 63, label %98
    i16 66, label %98
    i16 64, label %98
    i16 116, label %107
    i16 113, label %107
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  br label %123

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_real_cst, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call i32 @real_hash(ptr noundef %15) #27
  br label %137

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.tree_fixed_cst, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = tail call i32 @fixed_hash(ptr noundef %19) #27
  br label %137

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.tree_complex, ptr %8, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = tail call fastcc i32 @const_hash_1(ptr noundef %23) #29
  %25 = mul i32 %24, 5
  %26 = getelementptr inbounds %struct.tree_complex, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = add i32 %25, %7
  br label %6

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = tail call i64 @int_size_in_bytes(ptr noundef %31) #27
  %33 = trunc i64 %32 to i32
  %34 = add i32 %33, 5
  %35 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %36) #29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %137, label %39

39:                                               ; preds = %29, %53
  %40 = phi ptr [ %54, %53 ], [ %36, %29 ]
  %41 = phi i64 [ %56, %53 ], [ 0, %29 ]
  %42 = phi i32 [ %55, %53 ], [ %34, %29 ]
  %43 = trunc i64 %41 to i32
  %44 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef %43) #29
  %45 = getelementptr inbounds %struct.constructor_elt_d, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = mul i32 %42, 603
  %50 = tail call fastcc i32 @const_hash_1(ptr noundef nonnull %46) #29
  %51 = add i32 %50, %49
  %52 = load ptr, ptr %35, align 8, !tbaa !9
  br label %53

53:                                               ; preds = %39, %48
  %54 = phi ptr [ %52, %48 ], [ %40, %39 ]
  %55 = phi i32 [ %51, %48 ], [ %42, %39 ]
  %56 = add nuw nsw i64 %41, 1
  %57 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %54) #29
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %39, label %137, !llvm.loop !123

60:                                               ; preds = %6, %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #28
  call fastcc void @decode_addr_const(ptr noundef nonnull %8, ptr noundef nonnull %2) #29
  %61 = load ptr, ptr %2, align 8, !tbaa !124
  %62 = load i32, ptr %61, align 8
  %63 = trunc i32 %62 to i16
  switch i16 %63, label %93 [
    i16 45, label %64
    i16 44, label %83
  ]

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.addr_const, ptr %2, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !126
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %64, %72
  %73 = phi i64 [ %79, %72 ], [ 0, %64 ]
  %74 = phi i8 [ %81, %72 ], [ %70, %64 ]
  %75 = phi i32 [ %78, %72 ], [ %67, %64 ]
  %76 = sext i8 %74 to i32
  %77 = mul i32 %75, 613
  %78 = add i32 %77, %76
  %79 = add nuw nsw i64 %73, 1
  %80 = getelementptr inbounds i8, ptr %69, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %94, label %72, !llvm.loop !127

83:                                               ; preds = %60
  %84 = getelementptr inbounds %struct.addr_const, ptr %2, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !126
  %86 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !9
  %90 = mul nsw i32 %89, 13
  %91 = trunc i64 %85 to i32
  %92 = add i32 %90, %91
  br label %94

93:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2947, ptr noundef nonnull @.str.5) #27
  br label %94

94:                                               ; preds = %72, %64, %93, %83
  %95 = phi i32 [ undef, %93 ], [ %92, %83 ], [ %67, %64 ], [ %78, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #28
  br label %137

96:                                               ; preds = %107, %137
  %97 = phi i32 [ %140, %137 ], [ %114, %107 ]
  ret i32 %97

98:                                               ; preds = %6, %6, %6
  %99 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  %101 = tail call fastcc i32 @const_hash_1(ptr noundef %100) #29
  %102 = mul i32 %101, 9
  %103 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !9
  %105 = add i32 %102, %7
  %106 = add i32 %105, %4
  br label %3

107:                                              ; preds = %6, %6
  %108 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !9
  %110 = tail call fastcc i32 @const_hash_1(ptr noundef %109) #29
  %111 = mul i32 %110, 7
  %112 = add i32 %7, 2
  %113 = add i32 %112, %111
  %114 = add i32 %113, %4
  br label %96

115:                                              ; preds = %6
  %116 = trunc i64 %9 to i32
  %117 = and i32 %116, 65535
  br label %137

118:                                              ; preds = %6
  %119 = getelementptr inbounds %struct.tree_string, ptr %8, i64 0, i32 2
  %120 = getelementptr inbounds %struct.tree_string, ptr %8, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !9
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %11, %118
  %124 = phi i32 [ 16, %11 ], [ %121, %118 ]
  %125 = phi ptr [ %12, %11 ], [ %119, %118 ]
  %126 = zext nneg i32 %124 to i64
  br label %127

127:                                              ; preds = %123, %127
  %128 = phi i64 [ 0, %123 ], [ %135, %127 ]
  %129 = phi i32 [ %124, %123 ], [ %134, %127 ]
  %130 = mul i32 %129, 613
  %131 = getelementptr inbounds i8, ptr %125, i64 %128
  %132 = load i8, ptr %131, align 1, !tbaa !9
  %133 = sext i8 %132 to i32
  %134 = add i32 %130, %133
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, %126
  br i1 %136, label %137, label %127, !llvm.loop !128

137:                                              ; preds = %53, %127, %29, %118, %115, %94, %17, %13
  %138 = phi i32 [ %117, %115 ], [ %95, %94 ], [ %20, %17 ], [ %16, %13 ], [ %121, %118 ], [ %34, %29 ], [ %134, %127 ], [ %55, %53 ]
  %139 = add i32 %138, %7
  %140 = add i32 %139, %4
  br label %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_constant_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #28
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #27
  %4 = tail call fastcc ptr @copy_constant(ptr noundef %0) #29
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !119
  %6 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @mf_marked_p(ptr noundef %0) #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !tbaa !119
  %13 = tail call ptr @mf_mark(ptr noundef %12) #27
  br label %14

14:                                               ; preds = %11, %8, %1
  %15 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @const_labelno, align 4, !tbaa !19
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.86, i32 noundef %15) #29
  %18 = tail call fastcc zeroext i8 @use_object_blocks_p() #29
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc ptr @get_constant_section(ptr noundef %0) #29
  %22 = call ptr @ggc_alloc_string(ptr noundef nonnull %2, i32 noundef -1) #27
  %23 = call fastcc ptr @get_block_for_section(ptr noundef %21) #29
  %24 = call fastcc ptr @create_block_symbol(ptr noundef %22, ptr noundef %23, i64 noundef -1) #29
  br label %28

25:                                               ; preds = %14
  %26 = call ptr @ggc_alloc_string(ptr noundef nonnull %2, i32 noundef -1) #27
  %27 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %26) #27
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %24, %20 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load i32, ptr %30, align 8, !tbaa !9
  %32 = or i32 %31, 2
  store i32 %32, ptr %30, align 8, !tbaa !9
  %33 = load i32, ptr %29, align 8
  %34 = and i32 %33, 67108864
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3268, ptr noundef nonnull @.str.5) #27
  %37 = load i32, ptr %29, align 8
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i32 [ %33, %28 ], [ %37, %36 ]
  %40 = load ptr, ptr %5, align 8, !tbaa !119
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %40, ptr %41, align 8, !tbaa !9
  %42 = or i32 %39, 1073741824
  store i32 %42, ptr %29, align 8
  %43 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 @vector_type_mode(ptr noundef nonnull %44) #27
  br label %55

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = call ptr @gen_rtx_MEM(i32 noundef %56, ptr noundef nonnull %29) #27
  call void @set_mem_attributes(ptr noundef %57, ptr noundef nonnull %0, i32 noundef 1) #27
  call void @set_mem_alias_set(ptr noundef %57, i32 noundef 0) #27
  %58 = load i32, ptr @const_alias_set, align 4, !tbaa !19
  call void @set_mem_alias_set(ptr noundef %57, i32 noundef %58) #27
  %59 = load i32, ptr %57, align 8
  %60 = or i32 %59, 536870912
  store i32 %60, ptr %57, align 8
  %61 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 51), align 8, !tbaa !64
  call void %61(ptr noundef nonnull %0, ptr noundef nonnull %57, i32 noundef 1) #27
  store ptr %57, ptr %3, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #28
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_output_constant_def_contents(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load i32, ptr @flag_syntax_only, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4194304
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr @cfun, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !129
  %21 = add i32 %20, 1
  store i32 %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !129
  br label %23

22:                                               ; preds = %14
  tail call fastcc void @output_constant_def_contents(ptr noundef %5) #29
  br label %23

23:                                               ; preds = %16, %19, %8, %2, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lookup_constant_def(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.constant_descriptor_tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !119
  %4 = tail call fastcc i32 @const_hash_1(ptr noundef %0) #29
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %2, i64 0, i32 2
  store i32 %4, ptr %5, align 8, !tbaa !121
  %6 = load ptr, ptr @const_desc_htab, align 8, !tbaa !5
  %7 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %4) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !122
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_varasm_status() local_unnamed_addr #0 {
  %1 = tail call fastcc ptr @create_constant_pool() #29
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !85
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_constant_pool() unnamed_addr #0 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #27
  %2 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @const_desc_rtx_hash, ptr noundef nonnull @const_desc_rtx_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  %3 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 3
  store i64 0, ptr %4, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @simplify_subtraction(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @simplify_rtx(ptr noundef %0) #27
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr %0, ptr %2
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_const_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.constant_descriptor_rtx, align 8
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #28
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !133
  %6 = tail call zeroext i8 %5(ptr noundef %1) #27
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %110

8:                                                ; preds = %2
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 36), align 8, !tbaa !134
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 42), align 8, !tbaa !135
  %10 = tail call zeroext i8 %9(i32 noundef %0, ptr noundef %1) #27
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr @shared_constant_pool, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %3, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !136
  %16 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %3, i64 0, i32 6
  store i32 %0, ptr %16, align 4, !tbaa !108
  %17 = tail call fastcc i32 @const_rtx_hash(ptr noundef %1) #29
  %18 = getelementptr inbounds %struct.rtx_constant_pool, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = call ptr @htab_find_slot_with_hash(ptr noundef %19, ptr noundef nonnull %3, i32 noundef %17, i32 noundef 1) #27
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  br label %107

26:                                               ; preds = %8
  %27 = call ptr @ggc_alloc_stat(i64 noundef 64) #27
  store ptr %27, ptr %20, align 8, !tbaa !5
  %28 = icmp eq i32 %0, 0
  %29 = load i32, ptr @word_mode, align 4
  %30 = select i1 %28, i32 %29, i32 %0
  %31 = call i32 @get_mode_alignment(i32 noundef %30) #27
  %32 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !10
  %33 = call ptr %32(i32 noundef %0, i32 noundef 0) #27
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = call ptr @make_tree(ptr noundef nonnull %33, ptr noundef %1) #27
  %37 = call i32 @ix86_constant_alignment(ptr noundef %36, i32 noundef %31) #27
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi i32 [ %37, %35 ], [ %31, %26 ]
  %40 = lshr i32 %39, 3
  %41 = add nsw i32 %40, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rtx_constant_pool, ptr %14, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !132
  %45 = add nsw i64 %44, %42
  %46 = sub nsw i32 0, %40
  %47 = zext i32 %46 to i64
  %48 = and i64 %45, %47
  store i64 %48, ptr %43, align 8, !tbaa !132
  store ptr null, ptr %27, align 8, !tbaa !138
  %49 = load ptr, ptr %15, align 8, !tbaa !136
  %50 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !136
  %51 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 4
  store i64 %48, ptr %51, align 8, !tbaa !139
  %52 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 5
  store i32 %17, ptr %52, align 8, !tbaa !140
  %53 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 6
  store i32 %0, ptr %53, align 4, !tbaa !108
  %54 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 7
  store i32 %39, ptr %54, align 8, !tbaa !106
  %55 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %56 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 8
  store i32 %55, ptr %56, align 4, !tbaa !141
  %57 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 9
  store i32 0, ptr %57, align 8, !tbaa !142
  %58 = zext i32 %0 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i64
  %62 = add nuw nsw i64 %48, %61
  store i64 %62, ptr %43, align 8, !tbaa !132
  %63 = getelementptr inbounds %struct.rtx_constant_pool, ptr %14, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr %14, ptr %64
  store ptr %27, ptr %66, align 8, !tbaa !5
  store ptr %27, ptr %63, align 8, !tbaa !143
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.86, i32 noundef %55) #29
  %68 = load i32, ptr @const_labelno, align 4, !tbaa !19
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @const_labelno, align 4, !tbaa !19
  %70 = call fastcc zeroext i8 @use_object_blocks_p() #29
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %38
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 42), align 8, !tbaa !135
  %74 = call zeroext i8 %73(i32 noundef %0, ptr noundef %1) #27
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 22), align 8, !tbaa !144
  %78 = zext i32 %39 to i64
  %79 = call ptr %77(i32 noundef %0, ptr noundef %1, i64 noundef %78) #27
  %80 = call ptr @ggc_alloc_string(ptr noundef nonnull %4, i32 noundef -1) #27
  %81 = call fastcc ptr @get_block_for_section(ptr noundef %79) #29
  %82 = call fastcc ptr @create_block_symbol(ptr noundef %80, ptr noundef %81, i64 noundef -1) #29
  br label %86

83:                                               ; preds = %72, %38
  %84 = call ptr @ggc_alloc_string(ptr noundef nonnull %4, i32 noundef -1) #27
  %85 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %84) #27
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi ptr [ %82, %76 ], [ %85, %83 ]
  %88 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !145
  %89 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load i32, ptr %89, align 8, !tbaa !9
  %91 = or i32 %90, 2
  store i32 %91, ptr %89, align 8, !tbaa !9
  %92 = load i32, ptr %87, align 8
  %93 = or i32 %92, 67108864
  store i32 %93, ptr %87, align 8
  %94 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %27, ptr %94, align 8, !tbaa !9
  %95 = call ptr @gen_const_mem(i32 noundef %0, ptr noundef nonnull %87) #27
  %96 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %27, i64 0, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !137
  %97 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !10
  %98 = call ptr %97(i32 noundef %0, i32 noundef 0) #27
  call void @set_mem_attributes(ptr noundef %95, ptr noundef %98, i32 noundef 1) #27
  call void @set_mem_align(ptr noundef %95, i32 noundef %39) #27
  %99 = load i32, ptr %1, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 44
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !9
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 268435456
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %86, %102, %23
  %108 = phi ptr [ %25, %23 ], [ %95, %102 ], [ %95, %86 ]
  %109 = call ptr @copy_rtx(ptr noundef %108) #27
  br label %110

110:                                              ; preds = %107, %2
  %111 = phi ptr [ null, %2 ], [ %109, %107 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #28
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @const_rtx_hash(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store i32 0, ptr %3, align 4, !tbaa !19
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @const_rtx_hash_1, ptr noundef nonnull %3) #27
  %5 = load i32, ptr %3, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_block_for_section(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @object_block_htab, align 8, !tbaa !5
  %5 = tail call fastcc i32 @hash_section(ptr noundef nonnull %0) #29
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef nonnull %0, i32 noundef %5, i32 noundef 1) #27
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #27
  store ptr %0, ptr %10, align 8, !tbaa !146
  store ptr %10, ptr %6, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %3, %9, %1
  %12 = phi ptr [ null, %1 ], [ %10, %9 ], [ %7, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local ptr @get_pool_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @get_pool_constant_mark(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #17 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 67108864
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !142
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %1, align 1, !tbaa !9
  %12 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local i32 @get_pool_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !108
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_pool_size() local_unnamed_addr #18 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2), align 8, !tbaa !85
  %2 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !132
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_shared_constant_pool() local_unnamed_addr #0 {
  %1 = load ptr, ptr @shared_constant_pool, align 8, !tbaa !5
  tail call fastcc void @output_constant_pool_contents(ptr noundef %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constant_pool_contents(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1, %32
  %5 = phi ptr [ %33, %32 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !142
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @place_block_symbol(ptr noundef nonnull %11) #29
  br label %32

21:                                               ; preds = %16, %9
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 22), align 8, !tbaa !144
  %23 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !108
  %25 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %5, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !106
  %29 = zext i32 %28 to i64
  %30 = tail call ptr %22(i32 noundef %24, ptr noundef %26, i64 noundef %29) #27
  tail call void @switch_to_section(ptr noundef %30) #29
  %31 = load i32, ptr %27, align 8, !tbaa !106
  tail call fastcc void @output_constant_pool_1(ptr noundef nonnull %5, i32 noundef %31) #29
  br label %32

32:                                               ; preds = %4, %21, %20
  %33 = load ptr, ptr %5, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %4, !llvm.loop !147

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_reloc_for_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #19 {
  br label %2

2:                                                ; preds = %27, %1
  %3 = phi i32 [ %33, %27 ], [ 0, %1 ]
  %4 = phi ptr [ %32, %27 ], [ %0, %1 ]
  br label %5

5:                                                ; preds = %2, %49
  %6 = phi ptr [ %51, %49 ], [ %4, %2 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %34 [
    i16 121, label %9
    i16 122, label %9
    i16 63, label %27
    i16 66, label %27
    i16 64, label %37
    i16 116, label %49
    i16 113, label %49
    i16 118, label %49
    i16 51, label %10
  ]

9:                                                ; preds = %5, %5
  br label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_constructor, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %12) #29
  %14 = zext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %34, label %52

16:                                               ; preds = %9, %16
  %17 = phi ptr [ %19, %16 ], [ %6, %9 ]
  %18 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %19) #29, !range !66
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %16, !llvm.loop !148

22:                                               ; preds = %16
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 134217728
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i32 1, i32 2
  br label %34

27:                                               ; preds = %5, %5
  %28 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = tail call i32 @compute_reloc_for_constant(ptr noundef %29) #29, !range !102
  %31 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = or i32 %30, %3
  br label %2

34:                                               ; preds = %5, %63, %22, %10, %37
  %35 = phi i32 [ %48, %37 ], [ %26, %22 ], [ 0, %10 ], [ %64, %63 ], [ 0, %5 ]
  %36 = or i32 %35, %3
  ret i32 %36

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = tail call i32 @compute_reloc_for_constant(ptr noundef %39) #29, !range !102
  %41 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = tail call i32 @compute_reloc_for_constant(ptr noundef %42) #29, !range !102
  %44 = icmp eq i32 %40, 1
  %45 = icmp eq i32 %43, 1
  %46 = select i1 %44, i1 %45, i1 false
  %47 = or i32 %43, %40
  %48 = select i1 %46, i32 0, i32 %47
  br label %34

49:                                               ; preds = %5, %5, %5
  %50 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  br label %5

52:                                               ; preds = %10, %63
  %53 = phi i64 [ %65, %63 ], [ 0, %10 ]
  %54 = phi i32 [ %64, %63 ], [ 0, %10 ]
  %55 = trunc i64 %53 to i32
  %56 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %12, i32 noundef %55) #29
  %57 = getelementptr inbounds %struct.constructor_elt_d, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %58) #29, !range !102
  %62 = or i32 %61, %54
  br label %63

63:                                               ; preds = %52, %60
  %64 = phi i32 [ %62, %60 ], [ %54, %52 ]
  %65 = add nuw nsw i64 %53, 1
  %66 = icmp eq i64 %65, %14
  br i1 %66, label %34, label %52, !llvm.loop !149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !99
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #15 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @constructor_static_from_elts_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 131072
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65534
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %13) #29
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %5, %11, %1
  %18 = phi i8 [ 0, %1 ], [ %16, %11 ], [ 0, %5 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @initializer_constant_valid_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %0, ptr noundef %1, ptr noundef null) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @initializer_constant_valid_p_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  br label %7

7:                                                ; preds = %175, %3
  %8 = phi ptr [ %0, %3 ], [ %176, %175 ]
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %201 [
    i16 51, label %11
    i16 23, label %71
    i16 27, label %71
    i16 24, label %71
    i16 25, label %71
    i16 28, label %71
    i16 26, label %71
    i16 121, label %73
    i16 122, label %73
    i16 117, label %99
    i16 118, label %102
    i16 116, label %146
    i16 113, label %146
    i16 66, label %258
    i16 63, label %258
    i16 64, label %306
  ]

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @constructor_static_from_elts_p(ptr noundef nonnull %8) #29, !range !66
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %2, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %2, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds ptr, ptr %2, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  br label %201

22:                                               ; preds = %16, %14
  %23 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %24) #29
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %22, %42
  %28 = phi ptr [ %47, %42 ], [ %24, %22 ]
  %29 = phi i64 [ %46, %42 ], [ 0, %22 ]
  %30 = phi i8 [ %45, %42 ], [ 1, %22 ]
  %31 = trunc i64 %29 to i32
  %32 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %28, i32 noundef %31) #29
  %33 = getelementptr inbounds %struct.constructor_elt_d, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %34, ptr noundef %36, ptr noundef null) #29
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  br i1 %15, label %201, label %40

40:                                               ; preds = %39
  store ptr %8, ptr %2, align 8, !tbaa !5
  %41 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr null, ptr %41, align 8, !tbaa !5
  br label %201

42:                                               ; preds = %27
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %44 = icmp eq ptr %37, %43
  %45 = select i1 %44, i8 %30, i8 0
  %46 = add nuw nsw i64 %29, 1
  %47 = load ptr, ptr %23, align 8, !tbaa !9
  %48 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %47) #29
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %27, label %51, !llvm.loop !150

51:                                               ; preds = %42
  %52 = icmp eq i8 %45, 0
  br label %53

53:                                               ; preds = %51, %22
  %54 = phi i1 [ false, %22 ], [ %52, %51 ]
  br i1 %15, label %55, label %57

55:                                               ; preds = %53
  %56 = load ptr, ptr @global_trees, align 16
  br label %62

57:                                               ; preds = %53
  store ptr %8, ptr %2, align 8, !tbaa !5
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %59 = load ptr, ptr @global_trees, align 16
  %60 = select i1 %54, ptr %59, ptr %58
  %61 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %60, ptr %61, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %55, %57
  %63 = phi ptr [ %56, %55 ], [ %59, %57 ]
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %65 = select i1 %54, ptr %63, ptr %64
  br label %201

66:                                               ; preds = %11
  %67 = and i64 %9, 67108864
  %68 = icmp eq i64 %67, 0
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %70 = select i1 %68, ptr null, ptr %69
  br label %201

71:                                               ; preds = %7, %7, %7, %7, %7, %7
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %201

73:                                               ; preds = %7, %7
  %74 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = tail call ptr @staticp(ptr noundef %75) #27
  %77 = icmp eq ptr %76, null
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load i64, ptr %76, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %98 [
    i16 47, label %81
    i16 29, label %89
    i16 51, label %201
  ]

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 131072
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %201

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.tree_function_decl, ptr %76, i64 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 4194304
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i64, ptr %8, align 8
  %96 = and i64 %95, 67108864
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %201, label %98

98:                                               ; preds = %78, %81, %89, %94, %73
  br label %201

99:                                               ; preds = %7
  %100 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  br label %175

102:                                              ; preds = %7
  %103 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !9
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !9
  %107 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !9
  %109 = load i64, ptr %106, align 8
  %110 = trunc i64 %109 to i32
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, -15
  %113 = icmp ult i32 %112, 4
  br i1 %113, label %114, label %175

114:                                              ; preds = %102
  %115 = load i64, ptr %108, align 8
  %116 = trunc i64 %115 to i32
  %117 = and i32 %116, 65535
  %118 = add nsw i32 %117, -15
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %175, label %120

120:                                              ; preds = %114
  %121 = load i64, ptr %1, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 14
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #27
  %126 = load i64, ptr %108, align 8
  br label %131

127:                                              ; preds = %120
  %128 = load i32, ptr %6, align 4
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i64 [ %126, %124 ], [ %115, %127 ]
  %133 = phi i32 [ %125, %124 ], [ %130, %127 ]
  %134 = and i64 %132, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %108) #27
  br label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.tree_type, ptr %108, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  br label %143

143:                                              ; preds = %138, %136
  %144 = phi i32 [ %137, %136 ], [ %142, %138 ]
  %145 = icmp eq i32 %133, %144
  br i1 %145, label %175, label %201

146:                                              ; preds = %7, %7
  %147 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !9
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !9
  %151 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !9
  %153 = load i64, ptr %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = and i32 %154, 65535
  %156 = trunc i64 %153 to i16
  switch i16 %156, label %177 [
    i16 10, label %157
    i16 12, label %157
    i16 9, label %166
    i16 13, label %160
    i16 14, label %160
  ]

157:                                              ; preds = %146, %146
  %158 = load i64, ptr %150, align 8
  %159 = trunc i64 %158 to i16
  switch i16 %159, label %177 [
    i16 10, label %175
    i16 12, label %175
  ]

160:                                              ; preds = %146, %146
  %161 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !9
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 9
  br i1 %165, label %166, label %177

166:                                              ; preds = %146, %160
  %167 = load i64, ptr %150, align 8
  %168 = trunc i64 %167 to i16
  switch i16 %168, label %177 [
    i16 9, label %175
    i16 13, label %169
    i16 14, label %169
  ]

169:                                              ; preds = %166, %166
  %170 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !9
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 9
  br i1 %174, label %175, label %177

175:                                              ; preds = %169, %180, %157, %157, %166, %102, %114, %99, %143, %193, %210, %244, %254
  %176 = phi ptr [ %101, %99 ], [ %104, %143 ], [ %148, %193 ], [ %148, %210 ], [ %148, %244 ], [ %148, %254 ], [ %104, %114 ], [ %104, %102 ], [ %148, %166 ], [ %148, %157 ], [ %148, %157 ], [ %148, %180 ], [ %148, %169 ]
  br label %7

177:                                              ; preds = %157, %146, %166, %169, %160
  %178 = and i64 %153, 65535
  %179 = icmp eq i64 %178, 5
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i64, ptr %150, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 5
  br i1 %183, label %175, label %184

184:                                              ; preds = %180, %177
  %185 = add nsw i32 %155, -6
  %186 = icmp ult i32 %185, 3
  br i1 %186, label %187, label %218

187:                                              ; preds = %184
  %188 = load i64, ptr %150, align 8
  %189 = trunc i64 %188 to i32
  %190 = and i32 %189, 65535
  %191 = add nsw i32 %190, -6
  %192 = icmp ult i32 %191, 3
  br i1 %192, label %193, label %208

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = xor i32 %197, %195
  %199 = and i32 %198, 1023
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %175, label %203

201:                                              ; preds = %78, %242, %237, %40, %39, %368, %370, %306, %302, %304, %258, %87, %98, %94, %19, %62, %315, %267, %71, %66, %7, %254, %143, %203
  %202 = phi ptr [ %207, %203 ], [ %317, %315 ], [ %269, %267 ], [ %72, %71 ], [ %70, %66 ], [ %21, %19 ], [ %65, %62 ], [ %88, %87 ], [ %76, %98 ], [ null, %94 ], [ null, %258 ], [ %303, %304 ], [ %303, %302 ], [ null, %306 ], [ %369, %370 ], [ %369, %368 ], [ null, %39 ], [ null, %40 ], [ %243, %242 ], [ %238, %237 ], [ null, %78 ], [ null, %7 ], [ null, %254 ], [ null, %143 ]
  ret ptr %202

203:                                              ; preds = %193
  %204 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef nonnull %148, ptr noundef %1, ptr noundef %2) #29
  %205 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %206 = icmp eq ptr %204, %205
  %207 = select i1 %206, ptr %205, ptr null
  br label %201

208:                                              ; preds = %187
  %209 = trunc i64 %188 to i16
  switch i16 %209, label %218 [
    i16 10, label %210
    i16 12, label %210
  ]

210:                                              ; preds = %208, %208
  %211 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 1023
  %214 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 1023
  %217 = icmp ult i32 %213, %216
  br i1 %217, label %218, label %175

218:                                              ; preds = %184, %208, %210
  switch i16 %156, label %254 [
    i16 10, label %219
    i16 12, label %219
    i16 5, label %219
  ]

219:                                              ; preds = %218, %218, %218
  %220 = load i64, ptr %150, align 8
  %221 = trunc i64 %220 to i32
  %222 = and i32 %221, 65535
  %223 = add nsw i32 %222, -6
  %224 = icmp ult i32 %223, 3
  br i1 %224, label %225, label %254

225:                                              ; preds = %219
  %226 = load i64, ptr %148, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 23
  br i1 %228, label %229, label %239

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 1023
  %233 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 1023
  %236 = icmp ult i32 %232, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %229
  %238 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %201

239:                                              ; preds = %229, %225
  %240 = tail call i32 @integer_zerop(ptr noundef nonnull %148) #27
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %201

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, 1023
  %248 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, 1023
  %251 = icmp ugt i32 %247, %250
  br i1 %251, label %252, label %175

252:                                              ; preds = %244
  %253 = load i64, ptr %152, align 8
  br label %254

254:                                              ; preds = %252, %219, %218
  %255 = phi i64 [ %253, %252 ], [ %153, %219 ], [ %153, %218 ]
  %256 = and i64 %255, 65534
  %257 = icmp eq i64 %256, 16
  br i1 %257, label %175, label %201

258:                                              ; preds = %7, %7
  %259 = load i64, ptr %1, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 9
  br i1 %261, label %201, label %262

262:                                              ; preds = %258
  %263 = icmp eq ptr %2, null
  br i1 %263, label %270, label %264

264:                                              ; preds = %262
  %265 = load ptr, ptr %2, align 8, !tbaa !5
  %266 = icmp eq ptr %265, %8
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = getelementptr inbounds ptr, ptr %2, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !5
  br label %201

270:                                              ; preds = %264, %262
  %271 = trunc i64 %259 to i32
  %272 = and i32 %271, 65535
  %273 = add nsw i32 %272, -6
  %274 = icmp ult i32 %273, 3
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load i32, ptr %6, align 4
  %277 = and i32 %276, 1023
  %278 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !9
  %280 = getelementptr inbounds %struct.tree_type, ptr %279, i64 0, i32 6
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, 1023
  %283 = icmp ult i32 %277, %282
  br i1 %283, label %300, label %284

284:                                              ; preds = %270, %275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %285 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !9
  %287 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %286, ptr noundef nonnull %1, ptr noundef nonnull %4) #29
  %288 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !9
  %290 = getelementptr inbounds ptr, ptr %4, i64 2
  %291 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %289, ptr noundef nonnull %1, ptr noundef nonnull %290) #29
  %292 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %293 = icmp eq ptr %287, %292
  br i1 %293, label %298, label %294

294:                                              ; preds = %284
  %295 = icmp eq ptr %291, %292
  br i1 %295, label %298, label %296

296:                                              ; preds = %294
  %297 = call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %4) #29
  br label %298

298:                                              ; preds = %294, %284, %296
  %299 = phi ptr [ %297, %296 ], [ %291, %284 ], [ %287, %294 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  br label %302

300:                                              ; preds = %275
  %301 = tail call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef null) #29
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi ptr [ %299, %298 ], [ %301, %300 ]
  br i1 %263, label %201, label %304

304:                                              ; preds = %302
  store ptr %8, ptr %2, align 8, !tbaa !5
  %305 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %303, ptr %305, align 8, !tbaa !5
  br label %201

306:                                              ; preds = %7
  %307 = load i64, ptr %1, align 8
  %308 = and i64 %307, 65535
  %309 = icmp eq i64 %308, 9
  br i1 %309, label %201, label %310

310:                                              ; preds = %306
  %311 = icmp eq ptr %2, null
  br i1 %311, label %318, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr %2, align 8, !tbaa !5
  %314 = icmp eq ptr %313, %8
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = getelementptr inbounds ptr, ptr %2, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  br label %201

318:                                              ; preds = %312, %310
  %319 = trunc i64 %307 to i32
  %320 = and i32 %319, 65535
  %321 = add nsw i32 %320, -6
  %322 = icmp ult i32 %321, 3
  br i1 %322, label %323, label %332

323:                                              ; preds = %318
  %324 = load i32, ptr %6, align 4
  %325 = and i32 %324, 1023
  %326 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !9
  %328 = getelementptr inbounds %struct.tree_type, ptr %327, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = and i32 %329, 1023
  %331 = icmp ult i32 %325, %330
  br i1 %331, label %366, label %332

332:                                              ; preds = %318, %323
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %333 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !9
  %335 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %334, ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %336 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !9
  %338 = getelementptr inbounds ptr, ptr %5, i64 2
  %339 = call fastcc ptr @initializer_constant_valid_p_1(ptr noundef %337, ptr noundef nonnull %1, ptr noundef nonnull %338) #29
  %340 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %341 = icmp eq ptr %339, %340
  br i1 %341, label %364, label %342

342:                                              ; preds = %332
  %343 = icmp eq ptr %335, %339
  %344 = icmp ne ptr %335, null
  %345 = and i1 %344, %343
  br i1 %345, label %364, label %346

346:                                              ; preds = %342
  br i1 %344, label %347, label %362

347:                                              ; preds = %346
  %348 = load i64, ptr %335, align 8
  %349 = and i64 %348, 65535
  %350 = icmp eq i64 %349, 28
  %351 = icmp ne ptr %339, null
  %352 = and i1 %351, %350
  br i1 %352, label %353, label %362

353:                                              ; preds = %347
  %354 = load i64, ptr %339, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 28
  br i1 %356, label %357, label %362

357:                                              ; preds = %353
  %358 = call i32 @operand_equal_p(ptr noundef nonnull %335, ptr noundef nonnull %339, i32 noundef 1) #27
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  br label %364

362:                                              ; preds = %357, %353, %347, %346
  %363 = call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  br label %364

364:                                              ; preds = %342, %332, %362, %360
  %365 = phi ptr [ %361, %360 ], [ %363, %362 ], [ %335, %332 ], [ %340, %342 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  br label %368

366:                                              ; preds = %323
  %367 = tail call fastcc ptr @narrowing_initializer_constant_valid_p(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef null) #29
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi ptr [ %365, %364 ], [ %367, %366 ]
  br i1 %311, label %201, label %370

370:                                              ; preds = %368
  store ptr %8, ptr %2, align 8, !tbaa !5
  %371 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %369, ptr %371, align 8, !tbaa !5
  br label %201
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @initializer_constant_valid_for_bitfield_p(ptr nocapture noundef readonly %0) local_unnamed_addr #19 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi ptr [ %0, %1 ], [ %25, %23 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %27 [
    i16 51, label %6
    i16 23, label %26
    i16 118, label %23
    i16 117, label %23
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %8) #29
  %10 = zext i32 %9 to i64
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %27, label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %27, label %15, !llvm.loop !151

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %6 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %8, i32 noundef %17) #29
  %19 = getelementptr inbounds %struct.constructor_elt_d, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = tail call zeroext i8 @initializer_constant_valid_for_bitfield_p(ptr noundef %20) #29, !range !66
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %12

23:                                               ; preds = %2, %2
  %24 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  br label %2

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %15, %12, %2, %26, %6
  %28 = phi i8 [ 1, %6 ], [ 1, %26 ], [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_constant(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  %5 = load i32, ptr @flag_syntax_only, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %246, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 116
  br i1 %11, label %12, label %95

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %95 [
    i16 10, label %17
    i16 12, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 2), align 8, !tbaa !152
  %19 = and i64 %15, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call i32 @vector_type_mode(ptr noundef nonnull %14) #27
  %23 = load ptr, ptr %13, align 8, !tbaa !9
  br label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi ptr [ %23, %21 ], [ %14, %24 ]
  %31 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = load i64, ptr %33, align 8
  %35 = lshr i64 %34, 56
  %36 = trunc i64 %35 to i8
  %37 = tail call zeroext i8 %18(i32 noundef %31, i8 noundef zeroext %36) #27
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %29
  %40 = load ptr, ptr %13, align 8, !tbaa !9
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 116
  br i1 %43, label %44, label %81

44:                                               ; preds = %39, %75
  %45 = phi i64 [ %78, %75 ], [ %41, %39 ]
  %46 = phi ptr [ %77, %75 ], [ %0, %39 ]
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %81 [
    i16 10, label %51
    i16 12, label %51
  ]

51:                                               ; preds = %44, %44
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 2), align 8, !tbaa !152
  %53 = and i64 %49, 65535
  %54 = icmp eq i64 %53, 14
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %48) #27
  %57 = load ptr, ptr %47, align 8, !tbaa !9
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi ptr [ %57, %55 ], [ %48, %58 ]
  %65 = phi i32 [ %56, %55 ], [ %62, %58 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = load i64, ptr %67, align 8
  %69 = lshr i64 %68, 56
  %70 = trunc i64 %69 to i8
  %71 = tail call zeroext i8 %52(i32 noundef %65, i8 noundef zeroext %70) #27
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i64, ptr %46, align 8
  br label %81

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 116
  br i1 %80, label %44, label %81, !llvm.loop !153

81:                                               ; preds = %75, %44, %73, %39
  %82 = phi i64 [ %41, %39 ], [ %74, %73 ], [ %78, %75 ], [ %45, %44 ]
  %83 = phi ptr [ %0, %39 ], [ %46, %73 ], [ %77, %75 ], [ %46, %44 ]
  %84 = trunc i64 %82 to i16
  switch i16 %84, label %95 [
    i16 121, label %85
    i16 23, label %89
  ]

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %40, ptr noundef %87) #27
  br label %95

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.tree_int_cst, ptr %83, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !9
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %83, i64 0, i32 1, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !9
  %94 = tail call ptr @build_int_cst_wide(ptr noundef %40, i64 noundef %91, i64 noundef %93) #27
  br label %95

95:                                               ; preds = %85, %89, %81, %12, %29, %8
  %96 = phi ptr [ %83, %81 ], [ %94, %89 ], [ %88, %85 ], [ %0, %12 ], [ %0, %8 ], [ %0, %29 ]
  br label %97

97:                                               ; preds = %95, %124
  %98 = phi ptr [ %125, %124 ], [ %96, %95 ]
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i16
  switch i16 %100, label %101 [
    i16 116, label %105
    i16 113, label %105
    i16 117, label %105
    i16 118, label %105
  ]

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = load i64, ptr %103, align 8
  br label %126

105:                                              ; preds = %97, %97, %97, %97
  %106 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !9
  %108 = tail call i64 @int_size_in_bytes(ptr noundef %107) #27
  %109 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !9
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !9
  %113 = tail call i64 @int_size_in_bytes(ptr noundef %112) #27
  %114 = icmp sgt i64 %108, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load i64, ptr %98, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 118
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %106, align 8, !tbaa !9
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 17
  br i1 %123, label %124, label %126

124:                                              ; preds = %105, %115, %119
  %125 = load ptr, ptr %109, align 8, !tbaa !9
  br label %97

126:                                              ; preds = %119, %101
  %127 = phi i64 [ %104, %101 ], [ %121, %119 ]
  %128 = phi ptr [ %103, %101 ], [ %120, %119 ]
  %129 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %130 = trunc i64 %127 to i16
  %131 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %128) #27
  %132 = load i64, ptr %98, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 51
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.tree_constructor, ptr %98, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !9
  %138 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %137) #29
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  tail call void @assemble_zeros(i64 noundef %1) #29
  br label %246

141:                                              ; preds = %135, %126
  %142 = trunc i64 %132 to i32
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 122
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4661, ptr noundef nonnull @.str.5) #27
  br label %246

146:                                              ; preds = %141
  switch i16 %130, label %240 [
    i16 7, label %147
    i16 8, label %147
    i16 6, label %147
    i16 10, label %147
    i16 12, label %147
    i16 5, label %147
    i16 11, label %147
    i16 9, label %154
    i16 13, label %173
    i16 15, label %182
    i16 14, label %182
    i16 16, label %236
    i16 17, label %236
    i16 0, label %246
  ]

147:                                              ; preds = %146, %146, %146, %146, %146, %146, %146
  %148 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %98) #29
  %149 = tail call i64 @llvm.umin.i64(i64 %131, i64 %1)
  %150 = trunc i64 %149 to i32
  %151 = tail call zeroext i8 @assemble_integer(ptr noundef %148, i32 noundef %150, i32 noundef %2, i32 noundef 0) #29, !range !66
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %241

153:                                              ; preds = %147
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.87) #27
  br label %241

154:                                              ; preds = %146
  %155 = icmp eq i32 %143, 24
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.88) #27
  br label %241

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.tree_real_cst, ptr %98, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !9
  %160 = load ptr, ptr %129, align 8, !tbaa !9
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 14
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = tail call i32 @vector_type_mode(ptr noundef nonnull %160) #27
  br label %171

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.tree_type, ptr %160, i64 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  br label %171

171:                                              ; preds = %166, %164
  %172 = phi i32 [ %165, %164 ], [ %170, %166 ]
  tail call void @assemble_real(ptr noundef byval(%struct.real_value) align 8 %159, i32 noundef %172, i32 noundef %2) #29
  br label %241

173:                                              ; preds = %146
  %174 = getelementptr inbounds %struct.tree_complex, ptr %98, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !9
  %176 = lshr i64 %131, 1
  tail call void @output_constant(ptr noundef %175, i64 noundef %176, i32 noundef %2) #29
  %177 = getelementptr inbounds %struct.tree_complex, ptr %98, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  %179 = shl i64 %176, 3
  %180 = trunc i64 %179 to i32
  %181 = tail call fastcc i32 @min_align(i32 noundef %2, i32 noundef %180) #29
  tail call void @output_constant(ptr noundef %178, i64 noundef %176, i32 noundef %181) #29
  br label %241

182:                                              ; preds = %146, %146
  %183 = trunc i64 %132 to i16
  switch i16 %183, label %235 [
    i16 51, label %184
    i16 28, label %186
    i16 27, label %193
  ]

184:                                              ; preds = %182
  %185 = tail call fastcc i64 @output_constructor(ptr noundef nonnull %98, i64 noundef %1, i32 noundef %2, ptr noundef null) #29
  br label %246

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tree_string, ptr %98, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !9
  %189 = sext i32 %188 to i64
  %190 = tail call i64 @llvm.umin.i64(i64 %189, i64 %1)
  %191 = getelementptr inbounds %struct.tree_string, ptr %98, i64 0, i32 2
  %192 = trunc i64 %190 to i32
  tail call void @assemble_string(ptr noundef nonnull %191, i32 noundef %192) #29
  br label %241

193:                                              ; preds = %182
  %194 = load ptr, ptr %129, align 8, !tbaa !9
  %195 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !9
  %197 = load i64, ptr %196, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 14
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = tail call i32 @vector_type_mode(ptr noundef nonnull %196) #27
  br label %207

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.tree_type, ptr %196, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %200
  %208 = phi i32 [ %201, %200 ], [ %206, %202 ]
  %209 = tail call i32 @get_mode_alignment(i32 noundef %208) #27
  %210 = icmp ugt i32 %209, %2
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = tail call i32 @get_mode_alignment(i32 noundef %208) #27
  br label %213

213:                                              ; preds = %207, %211
  %214 = phi i32 [ %212, %211 ], [ %2, %207 ]
  %215 = zext i32 %208 to i64
  %216 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !9
  %218 = getelementptr inbounds %struct.tree_vector, ptr %98, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !9
  %220 = getelementptr inbounds %struct.tree_list, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !9
  %222 = zext i8 %217 to i64
  tail call void @output_constant(ptr noundef %221, i64 noundef %222, i32 noundef %2) #29
  %223 = getelementptr inbounds %struct.tree_common, ptr %219, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !9
  %225 = icmp eq ptr %224, null
  br i1 %225, label %241, label %226

226:                                              ; preds = %213, %226
  %227 = phi ptr [ %233, %226 ], [ %224, %213 ]
  %228 = phi i64 [ %231, %226 ], [ %222, %213 ]
  %229 = getelementptr inbounds %struct.tree_list, ptr %227, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !9
  tail call void @output_constant(ptr noundef %230, i64 noundef %222, i32 noundef %214) #29
  %231 = add i64 %228, %222
  %232 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !9
  %234 = icmp eq ptr %233, null
  br i1 %234, label %241, label %226, !llvm.loop !154

235:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4732, ptr noundef nonnull @.str.5) #27
  br label %241

236:                                              ; preds = %146, %146
  br i1 %134, label %238, label %237

237:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4738, ptr noundef nonnull @.str.5) #27
  br label %238

238:                                              ; preds = %236, %237
  %239 = tail call fastcc i64 @output_constructor(ptr noundef nonnull %98, i64 noundef %1, i32 noundef %2, ptr noundef null) #29
  br label %246

240:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4746, ptr noundef nonnull @.str.5) #27
  br label %241

241:                                              ; preds = %226, %213, %186, %235, %156, %171, %147, %153, %240, %173
  %242 = phi i64 [ %131, %240 ], [ %131, %235 ], [ %190, %186 ], [ %131, %173 ], [ %131, %156 ], [ %131, %171 ], [ %131, %147 ], [ %131, %153 ], [ %222, %213 ], [ %231, %226 ]
  %243 = icmp ult i64 %242, %1
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = sub i64 %1, %242
  tail call void @assemble_zeros(i64 noundef %245) #29
  br label %246

246:                                              ; preds = %241, %244, %146, %3, %238, %184, %145, %140
  ret void
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 4, ptr noundef null) #27
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @output_constructor(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.oc_local_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #28
  store ptr %0, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 1
  store i64 %1, ptr %7, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 6
  store i64 0, ptr %9, align 8, !tbaa !159
  %10 = icmp ne ptr %3, null
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 7
  store i8 %11, ptr %12, align 8, !tbaa !160
  br i1 %10, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.oc_outer_state, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !161
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 8
  store i32 %17, ptr %18, align 4, !tbaa !163
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !164
  %22 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 9
  store i32 -1, ptr %22, align 8, !tbaa !165
  %23 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 5
  store ptr null, ptr %23, align 8, !tbaa !166
  %24 = load i64, ptr %20, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  store ptr %33, ptr %23, align 8, !tbaa !166
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 4
  store ptr null, ptr %35, align 8, !tbaa !167
  br label %42

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !167
  %38 = icmp eq i64 %25, 16
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  store ptr %41, ptr %37, align 8, !tbaa !167
  br label %42

42:                                               ; preds = %34, %39, %36
  %43 = phi ptr [ null, %34 ], [ %41, %39 ], [ null, %36 ]
  %44 = phi ptr [ %35, %34 ], [ %37, %39 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %5) #29, !range !83
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %129, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 10
  %51 = getelementptr inbounds %struct.oc_local_state, ptr %6, i64 0, i32 11
  %52 = icmp eq ptr %3, null
  br label %53

53:                                               ; preds = %49, %124
  %54 = phi ptr [ %43, %49 ], [ %125, %124 ]
  %55 = phi i32 [ 0, %49 ], [ %118, %124 ]
  %56 = load ptr, ptr %5, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.constructor_elt_d, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  store ptr %58, ptr %50, align 8, !tbaa !168
  store ptr null, ptr %51, align 8, !tbaa !169
  %59 = load ptr, ptr %21, align 8, !tbaa !164
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -16
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load ptr, ptr %56, align 8, !tbaa !96
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store ptr %66, ptr %44, align 8, !tbaa !167
  br label %74

69:                                               ; preds = %53, %65
  %70 = and i64 %60, 65535
  %71 = icmp eq i64 %70, 15
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %56, align 8, !tbaa !96
  store ptr %73, ptr %51, align 8, !tbaa !169
  br label %74

74:                                               ; preds = %69, %72, %68
  %75 = phi ptr [ null, %68 ], [ %73, %72 ], [ null, %69 ]
  %76 = phi ptr [ %66, %68 ], [ %54, %72 ], [ %54, %69 ]
  %77 = icmp ne ptr %76, null
  %78 = load i32, ptr @flag_verbose_asm, align 4
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %76, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_identifier, ptr %84, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !9
  br label %89

89:                                               ; preds = %81, %86
  %90 = phi ptr [ %88, %86 ], [ @.str.174, %81 ]
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173, ptr noundef %90) #29
  br label %92

92:                                               ; preds = %89, %74
  %93 = icmp eq ptr %58, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %58) #27
  store ptr %95, ptr %50, align 8, !tbaa !168
  br label %96

96:                                               ; preds = %94, %92
  %97 = icmp ne ptr %75, null
  %98 = select i1 %52, i1 %97, i1 false
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, ptr %75, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 111
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  call fastcc void @output_constructor_array_range(ptr noundef nonnull %6) #29
  br label %117

104:                                              ; preds = %96
  br i1 %10, label %116, label %105

105:                                              ; preds = %99, %104
  %106 = icmp eq ptr %76, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.tree_decl_common, ptr %76, i64 0, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 33554432
  %111 = icmp eq i64 %110, 0
  %112 = and i64 %109, 255
  %113 = icmp eq i64 %112, 1
  %114 = or i1 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107, %105
  call fastcc void @output_constructor_regular_field(ptr noundef nonnull %6) #29
  br label %117

116:                                              ; preds = %107, %104
  call fastcc void @output_constructor_bitfield(ptr noundef nonnull %6, ptr noundef %3) #29
  br label %117

117:                                              ; preds = %103, %116, %115
  %118 = add i32 %55, 1
  %119 = load ptr, ptr %44, align 8, !tbaa !167
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.tree_common, ptr %119, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !9
  br label %124

124:                                              ; preds = %117, %121
  %125 = phi ptr [ %123, %121 ], [ null, %117 ]
  store ptr %125, ptr %44, align 8, !tbaa !167
  %126 = load ptr, ptr %45, align 8, !tbaa !9
  %127 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %126, i32 noundef %118, ptr noundef nonnull %5) #29, !range !83
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %53, !llvm.loop !170

129:                                              ; preds = %124, %42
  br i1 %10, label %130, label %134

130:                                              ; preds = %129
  %131 = load i32, ptr %18, align 4, !tbaa !163
  %132 = getelementptr inbounds %struct.oc_outer_state, ptr %3, i64 0, i32 1
  store i32 %131, ptr %132, align 4, !tbaa !161
  %133 = load i64, ptr %9, align 8, !tbaa !159
  br label %152

134:                                              ; preds = %129
  %135 = load i8, ptr %12, align 8, !tbaa !160
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i64, ptr %9, align 8, !tbaa !159
  br label %146

139:                                              ; preds = %134
  %140 = load i32, ptr %18, align 4, !tbaa !163
  %141 = sext i32 %140 to i64
  %142 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %141) #27
  %143 = tail call zeroext i8 @assemble_integer(ptr noundef %142, i32 noundef 1, i32 noundef 8, i32 noundef 1) #29, !range !66
  %144 = load i64, ptr %9, align 8, !tbaa !159
  %145 = add nsw i64 %144, 1
  br label %146

146:                                              ; preds = %137, %139
  %147 = phi i64 [ %138, %137 ], [ %145, %139 ]
  %148 = load i64, ptr %7, align 8, !tbaa !157
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = sub i64 %148, %147
  tail call void @assemble_zeros(i64 noundef %151) #29
  br label %152

152:                                              ; preds = %146, %150, %130
  %153 = phi i64 [ %147, %146 ], [ %148, %150 ], [ %133, %130 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  ret i64 %153
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_weak(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  br i1 %11, label %13, label %37

13:                                               ; preds = %2
  %14 = load ptr, ptr @weak_decls, align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_list, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %27, label %32

21:                                               ; preds = %32
  %22 = getelementptr inbounds %struct.tree_list, ptr %35, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %32, !llvm.loop !171

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi ptr [ %14, %17 ], [ %35, %25 ]
  %29 = phi ptr [ @weak_decls, %17 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  store ptr %31, ptr %29, align 8, !tbaa !5
  br label %69

32:                                               ; preds = %17, %21
  %33 = phi ptr [ %35, %21 ], [ %14, %17 ]
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %21, !llvm.loop !171

37:                                               ; preds = %2
  br i1 %12, label %68, label %38

38:                                               ; preds = %37
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.89, ptr noundef nonnull %0) #27
  br label %53

43:                                               ; preds = %38
  %44 = and i64 %39, 16777216
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #27
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 67108864
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %0) #27
  br label %53

53:                                               ; preds = %43, %46, %51, %42
  %54 = load ptr, ptr @weak_decls, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %53, %63
  %57 = phi ptr [ %65, %63 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !9
  br label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %56, !llvm.loop !172

67:                                               ; preds = %63, %53, %61
  tail call fastcc void @mark_weak(ptr noundef nonnull %1) #29
  br label %69

68:                                               ; preds = %37
  tail call fastcc void @mark_weak(ptr noundef nonnull %0) #29
  br label %69

69:                                               ; preds = %32, %27, %13, %68, %67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mark_weak(ptr nocapture noundef %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, 128
  store i32 %4, ptr %2, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %6, i64 11
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = or i32 %23, -2147483648
  store i32 %27, ptr %20, align 8
  br label %28

28:                                               ; preds = %26, %22, %18, %14, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @declare_weak(ptr noundef %0) local_unnamed_addr #0 {
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
  tail call void (ptr, ...) @error(ptr noundef nonnull %9, ptr noundef nonnull %0) #27
  br label %10

10:                                               ; preds = %8, %5
  tail call fastcc void @mark_weak(ptr noundef nonnull %0) #29
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.77, ptr noundef %12) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call ptr @get_identifier(ptr noundef nonnull @.str.77) #27
  %17 = load ptr, ptr %11, align 8, !tbaa !9
  %18 = tail call ptr @tree_cons_stat(ptr noundef %16, ptr noundef null, ptr noundef %17) #27
  store ptr %18, ptr %11, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @weak_finish() local_unnamed_addr #0 {
  %1 = load ptr, ptr @weakref_targets, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %9

3:                                                ; preds = %54
  %4 = load ptr, ptr %42, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !llvm.loop !173

6:                                                ; preds = %41, %3, %0
  %7 = load ptr, ptr @weak_decls, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %57

9:                                                ; preds = %0, %3
  %10 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %14 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %13) #29
  %15 = tail call ptr @decl_assembler_name(ptr noundef %12) #27
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 67108864
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, ptr null, ptr %14
  %20 = load ptr, ptr @weak_decls, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %9, %37
  %23 = phi ptr [ %38, %37 ], [ %20, %9 ]
  %24 = phi ptr [ %39, %37 ], [ @weak_decls, %9 ]
  %25 = getelementptr inbounds %struct.tree_list, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call ptr @decl_assembler_name(ptr noundef %26) #27
  %30 = icmp eq ptr %19, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  store ptr %33, ptr %24, align 8, !tbaa !5
  br label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %33, %31 ], [ %36, %34 ]
  %39 = phi ptr [ %24, %31 ], [ %35, %34 ]
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %22, !llvm.loop !174

41:                                               ; preds = %37, %9
  %42 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %6, label %45

45:                                               ; preds = %41, %54
  %46 = phi ptr [ %52, %54 ], [ %43, %41 ]
  %47 = phi ptr [ %55, %54 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %49 = tail call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %48) #29
  %50 = icmp eq ptr %19, %49
  %51 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  br i1 %50, label %53, label %54

53:                                               ; preds = %45
  store ptr %52, ptr %47, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %45, %53
  %55 = phi ptr [ %47, %53 ], [ %51, %45 ]
  %56 = icmp eq ptr %52, null
  br i1 %56, label %3, label %45, !llvm.loop !175

57:                                               ; preds = %6, %57
  %58 = phi ptr [ %62, %57 ], [ %7, %6 ]
  %59 = getelementptr inbounds %struct.tree_list, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  tail call fastcc void @weak_finish_1(ptr noundef %60) #29
  %61 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !llvm.loop !176

64:                                               ; preds = %57, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @weak_finish_1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 16777216
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %10 = tail call i32 @fputs(ptr noundef nonnull @.str.176, ptr noundef %9) #29
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %11, ptr noundef %8) #29
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %13 = tail call i32 @fputc(i32 noundef 10, ptr noundef %12) #29
  br label %14

14:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_unreachable_alias_pairs() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  %2 = load ptr, ptr @alias_pairs, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %0
  %5 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1) #29, !range !83
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %4, %30
  %8 = phi i32 [ %31, %30 ], [ 0, %4 ]
  br label %9

9:                                                ; preds = %7, %25
  %10 = load ptr, ptr %1, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !177
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.alias_pair, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = tail call ptr @cgraph_node_for_asm(ptr noundef %18) #27
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !179
  %23 = tail call ptr @varpool_node_for_asm(ptr noundef %22) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr @alias_pairs, align 8
  tail call fastcc void @VEC_alias_pair_base_unordered_remove(ptr noundef %26, i32 noundef %8) #29
  %27 = load ptr, ptr @alias_pairs, align 8
  %28 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %27, i32 noundef %8, ptr noundef nonnull %1) #29, !range !83
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %9

30:                                               ; preds = %16, %21, %9
  %31 = add i32 %8, 1
  %32 = load ptr, ptr @alias_pairs, align 8
  %33 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %32, i32 noundef %31, ptr noundef nonnull %1) #29, !range !83
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %7, !llvm.loop !180

35:                                               ; preds = %30, %25, %4, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_alias_pair_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !181
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !5
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @cgraph_node_for_asm(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @varpool_node_for_asm(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alias_pair_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 8, !tbaa !181
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !181
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !183
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_aliases_1() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  %2 = load ptr, ptr @alias_pairs, align 8
  %3 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #29, !range !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %0, %41
  %6 = phi i32 [ %42, %41 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.alias_pair, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !179
  %11 = tail call fastcc ptr @find_decl_and_mark_needed(ptr noundef %8, ptr noundef %10) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load ptr, ptr %7, align 8, !tbaa !177
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %16) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %41

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 33554432
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %11, align 8
  %26 = and i64 %25, 65535
  %27 = icmp ne i64 %26, 29
  %28 = and i64 %21, 512
  %29 = icmp eq i64 %28, 0
  %30 = or i1 %29, %27
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load ptr, ptr %7, align 8, !tbaa !177
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %34) #27
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %13
  %38 = phi ptr [ @.str.93, %13 ], [ @.str.94, %31 ]
  %39 = load ptr, ptr %7, align 8, !tbaa !177
  %40 = load ptr, ptr %9, align 8, !tbaa !179
  tail call void (ptr, ...) @error(ptr noundef nonnull %38, ptr noundef %39, ptr noundef %40) #27
  br label %41

41:                                               ; preds = %37, %24, %19, %31, %13
  %42 = add i32 %6, 1
  %43 = load ptr, ptr @alias_pairs, align 8
  %44 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %1) #29, !range !83
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %5, !llvm.loop !184

46:                                               ; preds = %41, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_decl_and_mark_needed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @cgraph_node_for_asm(ptr noundef %1) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %15

9:                                                ; preds = %2
  %10 = tail call ptr @varpool_node_for_asm(ptr noundef %1) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call ptr @cgraph_node_for_asm(ptr noundef %1) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %13, %12 ], [ %7, %6 ]
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %16) #27
  br label %22

17:                                               ; preds = %6
  %18 = tail call ptr @varpool_node_for_asm(ptr noundef %1) #27
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %9, %17
  %21 = phi ptr [ %18, %17 ], [ %10, %9 ]
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %21) #27
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %22, %12, %17
  %26 = phi ptr [ null, %17 ], [ null, %12 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_aliases_2() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  %2 = load ptr, ptr @alias_pairs, align 8
  %3 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #29, !range !83
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %11, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.alias_pair, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !179
  tail call fastcc void @do_assemble_alias(ptr noundef %8, ptr noundef %10) #29
  %11 = add i32 %6, 1
  %12 = load ptr, ptr @alias_pairs, align 8
  %13 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %12, i32 noundef %11, ptr noundef nonnull %1) #29, !range !83
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !185

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @alias_pairs, align 8
  tail call fastcc void @VEC_alias_pair_base_truncate(ptr noundef %16) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_assemble_alias(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 4194304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %89

7:                                                ; preds = %2
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #29
  %8 = load i64, ptr %0, align 8
  %9 = or i64 %8, 4194304
  store i64 %9, ptr %0, align 8
  %10 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #27
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 4194304
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %14) #27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %7
  %18 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3) #29
  %19 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 49152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @emutls_decl(ptr noundef nonnull %0) #29
  %32 = load ptr, ptr %3, align 8, !tbaa !5
  %33 = tail call fastcc ptr @get_emutls_object_name(ptr noundef %32) #29
  store ptr %33, ptr %3, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %30, %25, %21, %17
  %35 = phi ptr [ %0, %17 ], [ %31, %30 ], [ %0, %25 ], [ %0, %21 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !5
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load ptr, ptr @weakref_targets, align 8, !tbaa !5
  %42 = tail call ptr @tree_cons_stat(ptr noundef %35, ptr noundef nonnull %36, ptr noundef %41) #27
  store ptr %42, ptr @weakref_targets, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %34, %40
  %44 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.177, i64 10, i64 1, ptr %44)
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %47 = tail call ptr @decl_assembler_name(ptr noundef %35) #27
  br label %76

48:                                               ; preds = %7
  %49 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !21
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i64, ptr %0, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 32
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 49152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @emutls_decl(ptr noundef nonnull %0) #29
  %62 = tail call fastcc ptr @get_emutls_object_name(ptr noundef %1) #29
  br label %63

63:                                               ; preds = %60, %55, %51, %48
  %64 = phi ptr [ %1, %48 ], [ %62, %60 ], [ %1, %55 ], [ %1, %51 ]
  %65 = phi ptr [ %0, %48 ], [ %61, %60 ], [ %0, %55 ], [ %0, %51 ]
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 134217728
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  tail call fastcc void @globalize_decl(ptr noundef nonnull %65) #29
  %70 = tail call i32 @maybe_assemble_visibility(ptr noundef nonnull %65) #29, !range !83
  br label %71

71:                                               ; preds = %63, %69
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %73 = tail call i32 @fputs(ptr nonnull @.str.156, ptr %72)
  %74 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %75 = tail call ptr @decl_assembler_name(ptr noundef nonnull %65) #27
  br label %76

76:                                               ; preds = %71, %43
  %77 = phi ptr [ %47, %43 ], [ %75, %71 ]
  %78 = phi ptr [ %46, %43 ], [ %74, %71 ]
  %79 = phi ptr [ %36, %43 ], [ %64, %71 ]
  %80 = getelementptr inbounds %struct.tree_identifier, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  tail call void @assemble_name(ptr noundef %78, ptr noundef %81) #29
  %82 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %83 = tail call i32 @fputc(i32 44, ptr %82)
  %84 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.tree_identifier, ptr %79, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  tail call void @assemble_name(ptr noundef %84, ptr noundef %86) #29
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %88 = tail call i32 @fputc(i32 10, ptr %87)
  br label %89

89:                                               ; preds = %76, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_alias_pair_base_truncate(ptr noundef writeonly %0) unnamed_addr #21 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !181
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assemble_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %5) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #27
  %10 = call fastcc ptr @ultimate_transparent_alias_target(ptr noundef nonnull %3) #29
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.95, ptr noundef nonnull %0) #27
  br label %14

14:                                               ; preds = %8, %13
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 134217728
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.96, ptr noundef nonnull %0) #27
  %19 = load i64, ptr %0, align 8
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i64 [ %15, %14 ], [ %19, %18 ]
  %22 = or i64 %21, 16777216
  store i64 %22, ptr %0, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load i64, ptr %0, align 8
  %25 = or i64 %24, 16777216
  store i64 %25, ptr %0, align 8
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, -33554433
  store i64 %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %20, %23
  %30 = phi ptr [ %11, %20 ], [ %1, %23 ]
  %31 = phi i64 [ %22, %20 ], [ %25, %23 ]
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 29
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #27
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = or i16 %37, 128
  store i16 %38, ptr %36, align 4
  br label %44

39:                                               ; preds = %29
  %40 = tail call ptr @varpool_node(ptr noundef nonnull %0) #27
  %41 = getelementptr inbounds %struct.varpool_node, ptr %40, i64 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = or i8 %42, 64
  store i8 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @find_decl_and_mark_needed(ptr noundef nonnull %0, ptr noundef %30) #29
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 4194304
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @do_assemble_alias(ptr noundef nonnull %0, ptr noundef %30) #29
  br label %58

55:                                               ; preds = %44, %50, %47
  %56 = tail call fastcc ptr @VEC_alias_pair_gc_safe_push() #29
  store ptr %0, ptr %56, align 8, !tbaa !177
  %57 = getelementptr inbounds %struct.alias_pair, ptr %56, i64 0, i32 1
  store ptr %30, ptr %57, align 8, !tbaa !179
  br label %58

58:                                               ; preds = %55, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_alias_pair_gc_safe_push() unnamed_addr #0 {
  tail call fastcc void @VEC_alias_pair_gc_reserve() #29
  %1 = load ptr, ptr @alias_pairs, align 8, !tbaa !5
  %2 = tail call fastcc ptr @VEC_alias_pair_base_quick_push(ptr noundef %1) #29
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_assemble_visibility(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @default_assemble_visibility.visibility_types, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.100, ptr noundef %8) #29
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %11, ptr noundef %5) #29
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @supports_one_only() local_unnamed_addr #15 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_varasm_once() local_unnamed_addr #0 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @section_entry_hash, ptr noundef nonnull @section_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  store ptr %1, ptr @section_htab, align 8, !tbaa !5
  %2 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @object_block_entry_hash, ptr noundef nonnull @object_block_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  store ptr %2, ptr @object_block_htab, align 8, !tbaa !5
  %3 = tail call ptr @htab_create_alloc(i64 noundef 1009, ptr noundef nonnull @const_desc_hash, ptr noundef nonnull @const_desc_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  store ptr %3, ptr @const_desc_htab, align 8, !tbaa !5
  %4 = tail call i32 @new_alias_set() #27
  store i32 %4, ptr @const_alias_set, align 4, !tbaa !19
  %5 = tail call fastcc ptr @create_constant_pool() #29
  store ptr %5, ptr @shared_constant_pool, align 8, !tbaa !5
  %6 = tail call ptr @get_unnamed_section(i32 noundef 256, ptr noundef nonnull @output_section_asm_op, ptr noundef nonnull @.str.101) #29
  store ptr %6, ptr @text_section, align 8, !tbaa !5
  %7 = tail call ptr @get_unnamed_section(i32 noundef 512, ptr noundef nonnull @output_section_asm_op, ptr noundef nonnull @.str.102) #29
  store ptr %7, ptr @data_section, align 8, !tbaa !5
  %8 = tail call ptr @get_unnamed_section(i32 noundef 0, ptr noundef nonnull @output_section_asm_op, ptr noundef nonnull @.str.103) #29
  store ptr %8, ptr @readonly_data_section, align 8, !tbaa !5
  %9 = tail call ptr @get_unnamed_section(i32 noundef 8704, ptr noundef nonnull @output_section_asm_op, ptr noundef nonnull @.str.104) #29
  store ptr %9, ptr @bss_section, align 8, !tbaa !5
  %10 = tail call fastcc ptr @get_noswitch_section(i32 noundef 8397312, ptr noundef nonnull @emit_tls_common) #29
  store ptr %10, ptr @tls_comm_section, align 8, !tbaa !5
  %11 = tail call fastcc ptr @get_noswitch_section(i32 noundef 8397312, ptr noundef nonnull @emit_local) #29
  store ptr %11, ptr @lcomm_section, align 8, !tbaa !5
  %12 = tail call fastcc ptr @get_noswitch_section(i32 noundef 8397312, ptr noundef nonnull @emit_common) #29
  store ptr %12, ptr @comm_section, align 8, !tbaa !5
  %13 = tail call fastcc ptr @get_noswitch_section(i32 noundef 8704, ptr noundef nonnull @emit_bss) #29
  store ptr %13, ptr @bss_noswitch_section, align 8, !tbaa !5
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 18), align 8, !tbaa !186
  tail call void %14() #27
  %15 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load ptr, ptr @text_section, align 8, !tbaa !5
  store ptr %18, ptr @readonly_data_section, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %17, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @section_entry_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call i32 @htab_hash_string(ptr noundef %3) #27
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @section_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #29
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @object_block_entry_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !146
  %3 = tail call fastcc i32 @hash_section(ptr noundef %2) #29
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @object_block_entry_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_desc_hash(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !121
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_desc_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = tail call fastcc i32 @compare_constant(ptr noundef %10, ptr noundef %12) #29
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @new_alias_set() local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @output_section_asm_op(ptr noundef %0) #12 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.161, ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_noswitch_section(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #27
  %4 = or i32 %0, 4194304
  store i32 %4, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.noswitch_section, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @emit_tls_common(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179) #29
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1) #29
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !9
  %11 = lshr i32 %10, 3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %11) #29
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @emit_local(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %6 = tail call i32 @fputs(ptr nonnull @.str.81, ptr %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1) #29
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %9 = tail call i32 @fputc(i32 10, ptr %8)
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %11 = tail call i32 @fputs(ptr nonnull @.str.83, ptr %10)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %12, ptr noundef %1) #29
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = lshr i32 %15, 3
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %16) #29
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @emit_common(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %6 = tail call i32 @fputs(ptr nonnull @.str.83, ptr %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %7, ptr noundef %1) #29
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !9
  %11 = lshr i32 %10, 3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.84, i64 noundef %2, i32 noundef %11) #29
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @emit_bss(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 {
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  tail call fastcc void @asm_output_aligned_bss(ptr noundef %5, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %7) #29
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @decl_default_tls_model(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !187
  %3 = tail call zeroext i8 %2(ptr noundef %0) #27
  %4 = load i32, ptr @flag_shlib, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = icmp eq i8 %3, 0
  %8 = select i1 %7, i32 4, i32 5
  br label %15

9:                                                ; preds = %1
  %10 = load i32, ptr @optimize, align 4, !tbaa !19
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i8 %3, 0
  %13 = select i1 %11, i1 %12, i1 false
  %14 = select i1 %13, i32 3, i32 2
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = load i32, ptr @flag_tls_default, align 4, !tbaa !19
  %18 = tail call i32 @llvm.umax.i32(i32 %16, i32 %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_section_type_flags(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %0, i32 noundef %2) #29, !range !66
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3, %9
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %14 = icmp ne ptr %13, null
  %15 = load ptr, ptr @cfun, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %14, i1 %16, i1 false
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 4), align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %18) #29
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %12
  br i1 %4, label %25, label %31

25:                                               ; preds = %24
  br i1 %17, label %29, label %26

26:                                               ; preds = %25
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.7) #29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %26, %25
  br label %48

30:                                               ; preds = %21
  br i1 %4, label %48, label %31

31:                                               ; preds = %24, %5, %9, %30
  %32 = phi i32 [ 256, %30 ], [ 0, %9 ], [ 256, %5 ], [ 512, %24 ]
  %33 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  %36 = or disjoint i32 %32, 2048
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 32
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 49152
  %45 = icmp eq i32 %44, 0
  %46 = or i32 %37, 262656
  %47 = select i1 %45, i32 %37, i32 %46
  br label %48

48:                                               ; preds = %29, %26, %30, %41, %31
  %49 = phi i32 [ %37, %31 ], [ %47, %41 ], [ 256, %30 ], [ 256, %26 ], [ 512, %29 ]
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.105) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.106, i64 noundef 5) #29
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.107, i64 noundef 16) #29
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.108) #29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.109, i64 noundef 6) #29
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.110, i64 noundef 17) #29
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61, %58, %55, %52, %48
  %68 = or i32 %49, 8192
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %68, %67 ], [ %49, %64 ]
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.111) #29
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.112, i64 noundef 7) #29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.113, i64 noundef 17) #29
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %73, %69
  %80 = or i32 %70, 262144
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %80, %79 ], [ %70, %76 ]
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.114) #29
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.115, i64 noundef 6) #29
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.116, i64 noundef 17) #29
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %85, %81
  %92 = or i32 %82, 270336
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %92, %91 ], [ %82, %88 ]
  %95 = and i32 %94, 270592
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.117) #29
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.118) #29
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.119) #29
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103, %100, %97
  %107 = or i32 %94, 524288
  br label %108

108:                                              ; preds = %106, %103, %93
  %109 = phi i32 [ %94, %93 ], [ %107, %106 ], [ %94, %103 ]
  ret i32 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @decl_readonly_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1) #29, !range !188
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 5
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @have_global_bss_p() local_unnamed_addr #7 {
  %1 = load ptr, ptr @bss_noswitch_section, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 111), align 2
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_no_named_section(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6089, ptr noundef nonnull @.str.5) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @default_elf_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #28
  %5 = and i32 %1, 2048
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 1050624
  %8 = icmp eq i32 %7, 1048576
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.120, ptr noundef %0) #29
  br label %91

12:                                               ; preds = %3
  %13 = and i32 %1, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 97, ptr %4, align 1, !tbaa !9
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %4, %12 ], [ %16, %15 ]
  %19 = and i32 %1, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 119, ptr %18, align 1, !tbaa !9
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %18, %17 ]
  %25 = and i32 %1, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 120, ptr %24, align 1, !tbaa !9
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %24, %23 ]
  %31 = and i32 %1, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 115, ptr %30, align 1, !tbaa !9
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %30, %29 ]
  %37 = and i32 %1, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 77, ptr %36, align 1, !tbaa !9
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %36, %35 ]
  %43 = and i32 %1, 65536
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 83, ptr %42, align 1, !tbaa !9
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %42, %41 ]
  %49 = and i32 %1, 262144
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 84, ptr %48, align 1, !tbaa !9
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %52, %51 ], [ %48, %47 ]
  br i1 %6, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 71, ptr %54, align 1, !tbaa !9
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %56, %55 ], [ %54, %53 ]
  store i8 0, ptr %58, align 1, !tbaa !9
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.121, ptr noundef %0, ptr noundef nonnull %4) #29
  %61 = and i32 %1, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = and i32 %1, 8192
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr @.str.123, ptr @.str.122
  %67 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.124, ptr noundef nonnull %66) #29
  %69 = and i32 %1, 255
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.125, i32 noundef %69) #29
  br label %74

74:                                               ; preds = %71, %63
  br i1 %6, label %88, label %75

75:                                               ; preds = %74
  %76 = load i64, ptr %2, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 1
  %79 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  br i1 %78, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %82, %80 ], [ %2, %75 ]
  %85 = getelementptr inbounds %struct.tree_identifier, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.126, ptr noundef %86) #29
  br label %88

88:                                               ; preds = %83, %74, %57
  %89 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %90 = call i32 @putc(i32 noundef 10, ptr noundef %89) #29
  br label %91

91:                                               ; preds = %88, %9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @default_coff_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #12 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = and i32 %1, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 119, ptr %4, align 1, !tbaa !9
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %4, %3 ]
  %11 = and i32 %1, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 120, ptr %10, align 1, !tbaa !9
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %10, %9 ]
  store i8 0, ptr %16, align 1, !tbaa !9
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.127, ptr noundef %0, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @default_pe_asm_named_section(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #12 {
  tail call void @default_coff_asm_named_section(ptr noundef %0, i32 noundef %1, ptr poison) #29
  %4 = and i32 %1, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %8 = and i32 %1, 256
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.130, ptr @.str.129
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.128, ptr noundef nonnull %10) #29
  br label %12

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_select_section(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %0, i32 noundef %1) #29, !range !66
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %28

12:                                               ; preds = %3
  %13 = trunc i64 %4 to i16
  switch i16 %13, label %22 [
    i16 51, label %14
    i16 28, label %28
  ]

14:                                               ; preds = %12
  %15 = load i32, ptr @flag_pic, align 4, !tbaa !19
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %1, 0
  %18 = and i1 %17, %16
  %19 = and i64 %4, 1245184
  %20 = icmp ne i64 %19, 1179648
  %21 = or i1 %20, %18
  br i1 %21, label %27, label %28

22:                                               ; preds = %12
  %23 = load i32, ptr @flag_pic, align 4, !tbaa !19
  %24 = icmp ne i32 %23, 0
  %25 = icmp ne i32 %1, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %14, %22, %9
  br label %28

28:                                               ; preds = %22, %12, %14, %9, %27
  %29 = phi ptr [ @data_section, %27 ], [ @readonly_data_section, %9 ], [ @readonly_data_section, %14 ], [ @readonly_data_section, %12 ], [ @readonly_data_section, %22 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %59 [
    i16 29, label %105
    i16 28, label %5
    i16 32, label %9
    i16 51, label %49
  ]

5:                                                ; preds = %2
  %6 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  br label %105

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @bss_initializer_p(ptr noundef nonnull %0) #29, !range !66
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 1114112
  %15 = icmp eq i64 %14, 1048576
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 131072
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16, %12
  %23 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !189
  %24 = tail call i32 %23() #27
  %25 = and i32 %24, %1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %1, 1
  %29 = select i1 %28, i32 8, i32 7
  br label %59

30:                                               ; preds = %16
  %31 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !189
  %32 = tail call i32 %31() #27
  %33 = and i32 %32, %1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %1, 1
  %37 = select i1 %36, i32 10, i32 9
  br label %59

38:                                               ; preds = %30
  %39 = icmp ne i32 %1, 0
  %40 = load i32, ptr @flag_merge_constants, align 4
  %41 = icmp slt i32 %40, 2
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %17, align 8, !tbaa !9
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 28
  %48 = select i1 %47, i32 3, i32 4
  br label %59

49:                                               ; preds = %2
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !189
  %51 = tail call i32 %50() #27
  %52 = and i32 %51, %1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, ptr %0, align 8
  %56 = and i64 %55, 196608
  %57 = icmp eq i64 %56, 131072
  %58 = select i1 %57, i32 1, i32 6
  br label %59

59:                                               ; preds = %54, %2, %49, %43, %38, %22, %9, %35, %27
  %60 = phi i32 [ %29, %27 ], [ %37, %35 ], [ 13, %9 ], [ 6, %22 ], [ 1, %38 ], [ %48, %43 ], [ 6, %49 ], [ 1, %2 ], [ %58, %54 ]
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 32
  br i1 %63, label %64, label %93

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 13
  %68 = and i32 %67, 7
  switch i32 %68, label %82 [
    i32 0, label %93
    i32 1, label %69
  ]

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = load ptr, ptr @emutls_object_type, align 8, !tbaa !5
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !190
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, i32 %60, i32 16
  br label %105

78:                                               ; preds = %69
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 5), align 8, !tbaa !191
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i32 %60, i32 17
  br label %105

82:                                               ; preds = %64
  %83 = icmp eq i32 %60, 13
  br i1 %83, label %105, label %84

84:                                               ; preds = %82
  %85 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !9
  %90 = tail call zeroext i8 @initializer_zerop(ptr noundef %89) #27
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87, %84
  br label %105

93:                                               ; preds = %64, %59
  %94 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !192
  %95 = tail call zeroext i8 %94(ptr noundef nonnull %0) #27
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = icmp eq i32 %60, 13
  br i1 %98, label %105, label %99

99:                                               ; preds = %97
  %100 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 114), align 1, !tbaa !193
  %101 = icmp ne i8 %100, 0
  %102 = icmp eq i32 %60, 1
  %103 = and i1 %102, %101
  %104 = select i1 %103, i32 5, i32 11
  br label %105

105:                                              ; preds = %78, %74, %92, %93, %87, %82, %97, %99, %2, %5
  %106 = phi i32 [ 0, %2 ], [ %8, %5 ], [ 12, %92 ], [ %60, %93 ], [ %77, %74 ], [ %81, %78 ], [ 15, %87 ], [ 15, %82 ], [ 14, %97 ], [ %104, %99 ]
  ret i32 %106
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bss_initializer_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @global_trees, align 16
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @flag_zero_initialized_in_bss, align 4, !tbaa !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 1048576
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %3) #27
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %8, %11, %15, %1
  %20 = phi i8 [ 1, %1 ], [ 0, %11 ], [ 0, %8 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_elf_select_section(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1) #29, !range !188
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
  ]

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 6349, ptr noundef nonnull @.str.5) #27
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  br label %47

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @mergeable_string_section(ptr noundef %0, i64 noundef %2) #29
  br label %47

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call fastcc ptr @mergeable_string_section(ptr noundef %12, i64 noundef %2) #29
  br label %47

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = tail call ptr @mergeable_constant_section(i32 noundef %18, i64 noundef %2, i32 noundef 0) #29
  br label %47

20:                                               ; preds = %3
  %21 = load ptr, ptr @data_section, align 8, !tbaa !5
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
  %29 = load ptr, ptr @bss_section, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %47

31:                                               ; preds = %3
  br label %38

32:                                               ; preds = %3
  br label %38

33:                                               ; preds = %3
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !190
  br label %38

35:                                               ; preds = %3
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 3), align 8, !tbaa !194
  br label %38

37:                                               ; preds = %3
  unreachable

38:                                               ; preds = %28, %3, %35, %33, %32, %31, %27, %26, %25, %24, %23, %22
  %39 = phi ptr [ %36, %35 ], [ %34, %33 ], [ @.str.114, %32 ], [ @.str.108, %31 ], [ @.str.111, %27 ], [ @.str.136, %26 ], [ @.str.135, %25 ], [ @.str.134, %24 ], [ @.str.133, %23 ], [ @.str.132, %22 ], [ @.str.131, %3 ], [ @.str.105, %28 ]
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !19
  %44 = icmp eq i32 %43, 3
  %45 = select i1 %44, ptr %0, ptr null
  %46 = tail call ptr @get_named_section(ptr noundef %45, ptr noundef %39, i32 noundef %1) #29
  br label %47

47:                                               ; preds = %28, %38, %20, %14, %10, %8, %6
  %48 = phi ptr [ %46, %38 ], [ %21, %20 ], [ %19, %14 ], [ %13, %10 ], [ %9, %8 ], [ %7, %6 ], [ %29, %28 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mergeable_string_section(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca [30 x i8], align 16
  %4 = load i32, ptr @flag_merge_constants, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %86, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 28
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 15
  %16 = icmp ult i64 %1, 257
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %86

18:                                               ; preds = %10
  %19 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %12) #27
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !9
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %86, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #28
  %27 = load ptr, ptr %11, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #27
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
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = add i8 %44, -1
  %48 = icmp ult i8 %47, 32
  %49 = tail call i32 @llvm.ctpop.i32(i32 %46), !range !195
  %50 = icmp ult i32 %49, 2
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %79

52:                                               ; preds = %40
  %53 = zext nneg i32 %46 to i64
  %54 = tail call i64 @llvm.umax.i64(i64 %53, i64 %1)
  %55 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %56 = zext nneg i8 %44 to i64
  %57 = zext i8 %44 to i64
  br label %58

58:                                               ; preds = %52, %72
  %59 = phi i64 [ 0, %52 ], [ %73, %72 ]
  %60 = getelementptr i8, ptr %55, i64 %59
  br label %61

61:                                               ; preds = %58, %66
  %62 = phi i64 [ 0, %58 ], [ %67, %66 ]
  %63 = getelementptr i8, ptr %60, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !9
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, %57
  br i1 %68, label %75, label %61, !llvm.loop !196

69:                                               ; preds = %61
  %70 = trunc i64 %62 to i32
  %71 = icmp eq i32 %70, %45
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = add nuw nsw i64 %59, %56
  %74 = icmp slt i64 %73, %19
  br i1 %74, label %58, label %75, !llvm.loop !197

75:                                               ; preds = %72, %69, %66
  %76 = phi i64 [ %59, %66 ], [ %59, %69 ], [ %73, %72 ]
  %77 = sub nsw i64 %19, %56
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %75, %40
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #28
  br label %86

80:                                               ; preds = %75
  %81 = lshr i64 %54, 3
  %82 = trunc i64 %81 to i32
  %83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %45, i32 noundef %82) #29
  %84 = or disjoint i32 %45, 98304
  %85 = call ptr @get_section(ptr noundef nonnull %3, i32 noundef %84, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #28
  br label %88

86:                                               ; preds = %79, %21, %18, %10, %6, %2
  %87 = load ptr, ptr @readonly_data_section, align 8, !tbaa !5
  br label %88

88:                                               ; preds = %80, %86
  %89 = phi ptr [ %87, %86 ], [ %85, %80 ]
  ret ptr %89
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_unique_section(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @categorize_decl_for_section(ptr noundef %0, i32 noundef %1) #29, !range !188
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
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 2), align 8, !tbaa !190
  br label %21

18:                                               ; preds = %2
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 106, i32 3), align 8, !tbaa !194
  br label %21

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %2, %18, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %22 = phi ptr [ %19, %18 ], [ %17, %16 ], [ @.str.114, %15 ], [ @.str.111, %14 ], [ @.str.108, %13 ], [ @.str.105, %12 ], [ @.str.136, %11 ], [ @.str.135, %10 ], [ @.str.134, %9 ], [ @.str.133, %8 ], [ @.str.132, %7 ], [ @.str.142, %6 ], [ @.str.131, %5 ], [ @.str.8, %4 ], [ @.str.138, %2 ]
  %23 = tail call ptr @decl_assembler_name(ptr noundef %0) #27
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !51
  %27 = tail call ptr %26(ptr noundef %25) #27
  %28 = tail call i64 (ptr, ...) @concat_length(ptr noundef nonnull @.str.153, ptr noundef %22, ptr noundef nonnull @.str.154, ptr noundef %27, ptr noundef null) #27
  %29 = add i64 %28, 1
  %30 = alloca i8, i64 %29, align 16
  store ptr %30, ptr @libiberty_concat_ptr, align 8, !tbaa !5
  %31 = call ptr (ptr, ...) @concat_copy2(ptr noundef nonnull @.str.153, ptr noundef %22, ptr noundef nonnull @.str.154, ptr noundef %27, ptr noundef null) #27
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #29
  %33 = trunc i64 %32 to i32
  %34 = call ptr @build_string(i32 noundef %33, ptr noundef %31) #27
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_select_rtx_section(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @compute_reloc_for_rtx(ptr noundef %1) #29
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !189
  %6 = tail call i32 %5() #27
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @readonly_data_section, align 8
  %10 = load ptr, ptr @data_section, align 8
  %11 = select i1 %8, ptr %9, ptr %10
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_reloc_for_rtx(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %9 [
    i16 35, label %6
    i16 45, label %6
    i16 44, label %6
  ]

6:                                                ; preds = %1, %1, %1
  store i32 0, ptr %3, align 4, !tbaa !19
  %7 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @compute_reloc_for_rtx_1, ptr noundef nonnull %3) #27
  %8 = load i32, ptr %3, align 4, !tbaa !19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_elf_select_rtx_section(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @compute_reloc_for_rtx(ptr noundef %1) #29
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 20), align 8, !tbaa !189
  %6 = tail call i32 %5() #27
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call ptr @get_named_section(ptr noundef null, ptr noundef nonnull @.str.135, i32 noundef 1) #29
  br label %17

13:                                               ; preds = %9
  %14 = tail call ptr @get_named_section(ptr noundef null, ptr noundef nonnull @.str.134, i32 noundef 3) #29
  br label %17

15:                                               ; preds = %3
  %16 = tail call ptr @mergeable_constant_section(i32 noundef %0, i64 noundef %2, i32 noundef 0) #29
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = phi ptr [ %12, %11 ], [ %14, %13 ], [ %16, %15 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_encode_section_info(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %66

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %13, label %66

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = and i32 %15, 128
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 29
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !187
  %23 = tail call zeroext i8 %22(ptr noundef nonnull %0) #27
  %24 = icmp eq i8 %23, 0
  %25 = or disjoint i32 %21, 2
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 32
  br i1 %29, label %30, label %39

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 13
  %34 = and i32 %33, 7
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = shl nuw nsw i32 %34, 3
  %38 = or disjoint i32 %37, %26
  br label %47

39:                                               ; preds = %30, %13
  %40 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !192
  %41 = tail call zeroext i8 %40(ptr noundef nonnull %0) #27
  %42 = icmp eq i8 %41, 0
  %43 = or disjoint i32 %26, 4
  %44 = select i1 %42, i32 %26, i32 %43
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i64 [ %46, %39 ], [ 32, %36 ]
  %49 = phi i64 [ %45, %39 ], [ %27, %36 ]
  %50 = phi i32 [ %44, %39 ], [ %38, %36 ]
  %51 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 33554432
  %58 = icmp eq i64 %57, 0
  %59 = and i64 %49, 134217728
  %60 = icmp eq i64 %59, 0
  %61 = or i1 %60, %58
  %62 = or i32 %50, 64
  %63 = select i1 %61, i32 %50, i32 %62
  br label %64

64:                                               ; preds = %54, %47
  %65 = phi i32 [ %50, %47 ], [ %63, %54 ]
  store i32 %65, ptr %14, align 8, !tbaa !9
  br label %66

66:                                               ; preds = %7, %3, %64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @default_strip_name_encoding(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i8, ptr %0, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 42
  %4 = zext i1 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_asm_output_anchor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !9
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.155, i64 noundef %5) #29
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %8 = tail call i32 @fputs(ptr nonnull @.str.156, ptr %7)
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %10 = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @assemble_name(ptr noundef %9, ptr noundef %10) #29
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %12 = tail call i32 @fputc(i32 44, ptr %11)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  call void @assemble_name(ptr noundef %13, ptr noundef nonnull %2) #29
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %15 = call i32 @fputc(i32 10, ptr %14)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_use_anchors_for_symbol_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = and i32 %5, 36864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 67108864
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !187
  %24 = tail call zeroext i8 %23(ptr noundef nonnull %14) #27
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 48), align 8, !tbaa !192
  %28 = tail call zeroext i8 %27(ptr noundef nonnull %14) #27
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %8, %26, %16, %12
  br label %31

31:                                               ; preds = %26, %22, %1, %30
  %32 = phi i8 [ 1, %30 ], [ 0, %1 ], [ 0, %22 ], [ 0, %26 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_binds_local_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @flag_shlib, align 4, !tbaa !19
  %3 = tail call zeroext i8 @default_binds_local_p_1(ptr noundef %0, i32 noundef %2) #29
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_binds_local_p_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.92, ptr noundef %10) #27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %8
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 3072
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 33554432
  %29 = icmp eq i64 %28, 0
  %30 = and i1 %23, %29
  %31 = zext i1 %29 to i8
  br i1 %30, label %32, label %51

32:                                               ; preds = %25
  %33 = and i32 %19, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = load i32, ptr @flag_whole_program, align 4, !tbaa !19
  %39 = trunc i32 %38 to i8
  br label %51

40:                                               ; preds = %35
  %41 = and i32 %19, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !9
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_globalize_label(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fputs(ptr noundef nonnull @.str.158, ptr noundef %0) #29
  tail call void @assemble_name(ptr noundef %0, ptr noundef %1) #29
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_globalize_decl_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @make_decl_rtl(ptr noundef nonnull %1) #29
  %7 = load ptr, ptr %3, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !198
  tail call void %14(ptr noundef %0, ptr noundef %13) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @default_emit_unwind_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @default_emit_except_table_label(ptr nocapture noundef readnone %0) local_unnamed_addr #15 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_internal_label(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %5 = add i64 %4, 40
  %6 = alloca i8, i64 %5, align 16
  %7 = trunc i64 %2 to i32
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %1, i32 noundef %7) #29
  call void @assemble_name_raw(ptr noundef %0, ptr noundef nonnull %6) #29
  %9 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %0) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_file_start() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 116), align 1, !tbaa !199
  %2 = icmp eq i8 %1, 0
  %3 = load i32, ptr @flag_verbose_asm, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_debug_asm, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @flag_dump_rtl_in_asm, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %14 = tail call i32 @fputs(ptr noundef nonnull @.str.159, ptr noundef %13) #29
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 117), align 8, !tbaa !200
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %20 = load ptr, ptr @main_input_filename, align 8, !tbaa !5
  tail call void @output_file_directive(ptr noundef %19, ptr noundef %20) #27
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: optsize
declare void @output_file_directive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_end_indicate_exec_stack() local_unnamed_addr #0 {
  %1 = load i32, ptr @trampolines_created, align 4, !tbaa !19
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 1024, i32 1280
  %4 = tail call ptr @get_section(ptr noundef nonnull @.str.160, i32 noundef %3, ptr noundef null) #29
  tail call void @switch_to_section(ptr noundef %4) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_constant_alignment(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = tail call i32 @ix86_constant_alignment(ptr noundef %0, i32 noundef %5) #27
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_constant_size(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call i64 @int_size_in_bytes(ptr noundef %3) #27
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 28
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !9
  %11 = sext i32 %10 to i64
  %12 = tail call i64 @llvm.smax.i64(i64 %4, i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i64 [ %12, %8 ], [ %4, %1 ]
  ret i64 %14
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_gc_reserve(ptr noundef %0) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_section_anchor(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #28
  %5 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 44), align 8, !tbaa !201
  %6 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 43), align 8, !tbaa !202
  %7 = sub i64 %5, %6
  %8 = add i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr @ptr_mode, align 4, !tbaa !19
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
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
  %36 = load ptr, ptr %35, align 8, !tbaa !203
  %37 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %36) #29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %33, %62
  %40 = phi i32 [ %64, %62 ], [ 0, %33 ]
  %41 = phi i32 [ %63, %62 ], [ %37, %33 ]
  %42 = add i32 %40, %41
  %43 = lshr i32 %42, 1
  %44 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %36, i32 noundef %43) #29
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !9
  %47 = icmp sgt i64 %46, %34
  br i1 %47, label %62, label %48

48:                                               ; preds = %39
  %49 = icmp slt i64 %46, %34
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = add nuw i32 %43, 1
  br label %62

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load i32, ptr %53, align 8, !tbaa !9
  %55 = lshr i32 %54, 3
  %56 = and i32 %55, 7
  %57 = icmp ugt i32 %56, %2
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = icmp ult i32 %56, %2
  br i1 %59, label %60, label %78

60:                                               ; preds = %58
  %61 = add nuw i32 %43, 1
  br label %62

62:                                               ; preds = %52, %39, %50, %60
  %63 = phi i32 [ %41, %50 ], [ %41, %60 ], [ %43, %39 ], [ %43, %52 ]
  %64 = phi i32 [ %51, %50 ], [ %61, %60 ], [ %40, %39 ], [ %40, %52 ]
  %65 = icmp eq i32 %64, %63
  br i1 %65, label %66, label %39, !llvm.loop !204

66:                                               ; preds = %62, %33
  %67 = phi i32 [ 0, %33 ], [ %63, %62 ]
  %68 = load i32, ptr @anchor_labelno, align 4, !tbaa !19
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @anchor_labelno, align 4, !tbaa !19
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull @.str.162, i32 noundef %68) #29
  %71 = call ptr @ggc_alloc_string(ptr noundef nonnull %4, i32 noundef -1) #27
  %72 = call fastcc ptr @create_block_symbol(ptr noundef %71, ptr noundef %0, i64 noundef %34) #29
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load i32, ptr %73, align 8, !tbaa !9
  %75 = shl i32 %2, 3
  %76 = or i32 %75, %74
  %77 = or i32 %76, 258
  store i32 %77, ptr %73, align 8, !tbaa !9
  call fastcc void @VEC_rtx_gc_safe_insert(ptr noundef nonnull %35, i32 noundef %67, ptr noundef %72) #29
  br label %78

78:                                               ; preds = %58, %66
  %79 = phi ptr [ %72, %66 ], [ %44, %58 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #28
  ret ptr %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !205
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_rtx_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_gc_reserve(ptr noundef %0) #29
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_rtx_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_object_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @object_block_htab, align 8, !tbaa !5
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @output_object_block_htab, ptr noundef null) #27
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @output_object_block_htab(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @output_object_block(ptr noundef %3) #29
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @elf_record_gcc_switches(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %450 [
    i32 0, label %3
    i32 2, label %335
  ]

3:                                                ; preds = %2
  %4 = load i8, ptr %1, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 45
  %6 = load i1, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br i1 %5, label %226, label %7

7:                                                ; preds = %3
  br i1 %6, label %8, label %119

8:                                                ; preds = %7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer) #29
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %10
  %12 = sub nsw i64 1024, %10
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %11, i64 noundef %12, ptr noundef nonnull @.str.163, ptr noundef nonnull %1) #29
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer) #29
  %15 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %14
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %116

17:                                               ; preds = %8, %105
  %18 = phi ptr [ %106, %105 ], [ @elf_record_gcc_switches.buffer, %8 ]
  %19 = phi ptr [ %38, %105 ], [ null, %8 ]
  %20 = phi i32 [ %107, %105 ], [ 0, %8 ]
  %21 = icmp ugt i32 %20, 59
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
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
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp ult ptr %35, %15
  br i1 %36, label %30, label %37, !llvm.loop !207

37:                                               ; preds = %34, %30, %28, %25
  %38 = phi ptr [ %19, %25 ], [ %18, %28 ], [ %35, %34 ], [ %31, %30 ]
  %39 = icmp ult ptr %38, %15
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %18 to i64
  %42 = sub i64 %40, %41
  %43 = icmp slt i64 %42, 257
  %44 = and i1 %39, %43
  %45 = icmp eq i32 %26, 0
  br i1 %44, label %46, label %78

46:                                               ; preds = %37
  br i1 %45, label %50, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %46, %47
  %51 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #29
  %53 = load i8, ptr %18, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %108, label %55

55:                                               ; preds = %50, %74
  %56 = phi i8 [ %76, %74 ], [ %53, %50 ]
  %57 = phi ptr [ %75, %74 ], [ %18, %50 ]
  %58 = zext i8 %56 to i32
  %59 = zext i8 %56 to i64
  %60 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  switch i8 %61, label %68 [
    i8 0, label %62
    i8 1, label %65
  ]

62:                                               ; preds = %55
  %63 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %64 = tail call i32 @putc(i32 noundef %58, ptr noundef %63) #29
  br label %74

65:                                               ; preds = %55
  %66 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.73, i32 noundef %58) #29
  br label %74

68:                                               ; preds = %55
  %69 = sext i8 %61 to i32
  %70 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %71 = tail call i32 @putc(i32 noundef 92, ptr noundef %70) #29
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %73 = tail call i32 @putc(i32 noundef %69, ptr noundef %72) #29
  br label %74

74:                                               ; preds = %68, %65, %62
  %75 = getelementptr inbounds i8, ptr %57, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %108, label %55, !llvm.loop !208

78:                                               ; preds = %37
  br i1 %45, label %79, label %82

79:                                               ; preds = %78
  %80 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74) #29
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i8, ptr %18, align 1, !tbaa !9
  %84 = zext i8 %83 to i32
  %85 = zext i8 %83 to i64
  %86 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !9
  switch i8 %87, label %94 [
    i8 0, label %88
    i8 1, label %91
  ]

88:                                               ; preds = %82
  %89 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %90 = tail call i32 @putc(i32 noundef %84, ptr noundef %89) #29
  br label %100

91:                                               ; preds = %82
  %92 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.73, i32 noundef %84) #29
  br label %100

94:                                               ; preds = %82
  %95 = sext i8 %87 to i32
  %96 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %97 = tail call i32 @putc(i32 noundef 92, ptr noundef %96) #29
  %98 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %99 = tail call i32 @putc(i32 noundef %95, ptr noundef %98) #29
  br label %100

100:                                              ; preds = %88, %91, %94
  %101 = phi i32 [ 1, %88 ], [ 4, %91 ], [ 2, %94 ]
  %102 = add nuw nsw i32 %26, %101
  %103 = getelementptr inbounds i8, ptr %18, i64 1
  %104 = icmp ult ptr %103, %15
  br i1 %104, label %105, label %113

105:                                              ; preds = %100, %108
  %106 = phi ptr [ %103, %100 ], [ %111, %108 ]
  %107 = phi i32 [ %102, %100 ], [ 0, %108 ]
  br label %17, !llvm.loop !209

108:                                              ; preds = %74, %50
  %109 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %110 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %109)
  %111 = getelementptr inbounds i8, ptr %38, i64 1
  %112 = icmp ult ptr %111, %15
  br i1 %112, label %105, label %116

113:                                              ; preds = %100
  %114 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %115 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %114)
  br label %116

116:                                              ; preds = %108, %8, %113
  %117 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1) #29
  store i1 false, ptr @elf_record_gcc_switches.previous_name_held_back, align 1
  br label %450

119:                                              ; preds = %7
  %120 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024) #29
  %121 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer) #29
  %122 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %121
  %123 = icmp sgt i64 %121, 0
  br i1 %123, label %124, label %223

124:                                              ; preds = %119, %212
  %125 = phi ptr [ %213, %212 ], [ @elf_record_gcc_switches.buffer, %119 ]
  %126 = phi ptr [ %145, %212 ], [ null, %119 ]
  %127 = phi i32 [ %214, %212 ], [ 0, %119 ]
  %128 = icmp ugt i32 %127, 59
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
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
  %139 = load i8, ptr %138, align 1, !tbaa !9
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  %143 = icmp ult ptr %142, %122
  br i1 %143, label %137, label %144, !llvm.loop !210

144:                                              ; preds = %141, %137, %135, %132
  %145 = phi ptr [ %126, %132 ], [ %125, %135 ], [ %142, %141 ], [ %138, %137 ]
  %146 = icmp ult ptr %145, %122
  %147 = ptrtoint ptr %145 to i64
  %148 = ptrtoint ptr %125 to i64
  %149 = sub i64 %147, %148
  %150 = icmp slt i64 %149, 257
  %151 = and i1 %146, %150
  %152 = icmp eq i32 %133, 0
  br i1 %151, label %153, label %185

153:                                              ; preds = %144
  br i1 %152, label %157, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %156 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %153, %154
  %158 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #29
  %160 = load i8, ptr %125, align 1, !tbaa !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %215, label %162

162:                                              ; preds = %157, %181
  %163 = phi i8 [ %183, %181 ], [ %160, %157 ]
  %164 = phi ptr [ %182, %181 ], [ %125, %157 ]
  %165 = zext i8 %163 to i32
  %166 = zext i8 %163 to i64
  %167 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !9
  switch i8 %168, label %175 [
    i8 0, label %169
    i8 1, label %172
  ]

169:                                              ; preds = %162
  %170 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %171 = tail call i32 @putc(i32 noundef %165, ptr noundef %170) #29
  br label %181

172:                                              ; preds = %162
  %173 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.73, i32 noundef %165) #29
  br label %181

175:                                              ; preds = %162
  %176 = sext i8 %168 to i32
  %177 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %178 = tail call i32 @putc(i32 noundef 92, ptr noundef %177) #29
  %179 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %180 = tail call i32 @putc(i32 noundef %176, ptr noundef %179) #29
  br label %181

181:                                              ; preds = %175, %172, %169
  %182 = getelementptr inbounds i8, ptr %164, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !9
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %215, label %162, !llvm.loop !211

185:                                              ; preds = %144
  br i1 %152, label %186, label %189

186:                                              ; preds = %185
  %187 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74) #29
  br label %189

189:                                              ; preds = %186, %185
  %190 = load i8, ptr %125, align 1, !tbaa !9
  %191 = zext i8 %190 to i32
  %192 = zext i8 %190 to i64
  %193 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !9
  switch i8 %194, label %201 [
    i8 0, label %195
    i8 1, label %198
  ]

195:                                              ; preds = %189
  %196 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %197 = tail call i32 @putc(i32 noundef %191, ptr noundef %196) #29
  br label %207

198:                                              ; preds = %189
  %199 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.73, i32 noundef %191) #29
  br label %207

201:                                              ; preds = %189
  %202 = sext i8 %194 to i32
  %203 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %204 = tail call i32 @putc(i32 noundef 92, ptr noundef %203) #29
  %205 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %206 = tail call i32 @putc(i32 noundef %202, ptr noundef %205) #29
  br label %207

207:                                              ; preds = %195, %198, %201
  %208 = phi i32 [ 1, %195 ], [ 4, %198 ], [ 2, %201 ]
  %209 = add nuw nsw i32 %133, %208
  %210 = getelementptr inbounds i8, ptr %125, i64 1
  %211 = icmp ult ptr %210, %122
  br i1 %211, label %212, label %220

212:                                              ; preds = %207, %215
  %213 = phi ptr [ %210, %207 ], [ %218, %215 ]
  %214 = phi i32 [ %209, %207 ], [ 0, %215 ]
  br label %124, !llvm.loop !212

215:                                              ; preds = %181, %157
  %216 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %217 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %216)
  %218 = getelementptr inbounds i8, ptr %145, i64 1
  %219 = icmp ult ptr %218, %122
  br i1 %219, label %212, label %223

220:                                              ; preds = %207
  %221 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %222 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %221)
  br label %223

223:                                              ; preds = %215, %119, %220
  %224 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1) #29
  br label %450

226:                                              ; preds = %3
  br i1 %6, label %227, label %333

227:                                              ; preds = %226
  %228 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer) #29
  %229 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %228
  %230 = icmp sgt i64 %228, 0
  br i1 %230, label %231, label %330

231:                                              ; preds = %227, %319
  %232 = phi i32 [ %320, %319 ], [ 0, %227 ]
  %233 = phi ptr [ %252, %319 ], [ null, %227 ]
  %234 = phi ptr [ %321, %319 ], [ @elf_record_gcc_switches.buffer, %227 ]
  %235 = icmp ugt i32 %232, 59
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
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
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds i8, ptr %245, i64 1
  %250 = icmp ult ptr %249, %229
  br i1 %250, label %244, label %251, !llvm.loop !213

251:                                              ; preds = %248, %244, %242, %239
  %252 = phi ptr [ %233, %239 ], [ %234, %242 ], [ %249, %248 ], [ %245, %244 ]
  %253 = icmp ult ptr %252, %229
  %254 = ptrtoint ptr %252 to i64
  %255 = ptrtoint ptr %234 to i64
  %256 = sub i64 %254, %255
  %257 = icmp slt i64 %256, 257
  %258 = and i1 %253, %257
  %259 = icmp eq i32 %240, 0
  br i1 %258, label %260, label %292

260:                                              ; preds = %251
  br i1 %259, label %264, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %263 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %262)
  br label %264

264:                                              ; preds = %260, %261
  %265 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #29
  %267 = load i8, ptr %234, align 1, !tbaa !9
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %322, label %269

269:                                              ; preds = %264, %288
  %270 = phi i8 [ %290, %288 ], [ %267, %264 ]
  %271 = phi ptr [ %289, %288 ], [ %234, %264 ]
  %272 = zext i8 %270 to i32
  %273 = zext i8 %270 to i64
  %274 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !9
  switch i8 %275, label %282 [
    i8 0, label %276
    i8 1, label %279
  ]

276:                                              ; preds = %269
  %277 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %278 = tail call i32 @putc(i32 noundef %272, ptr noundef %277) #29
  br label %288

279:                                              ; preds = %269
  %280 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.73, i32 noundef %272) #29
  br label %288

282:                                              ; preds = %269
  %283 = sext i8 %275 to i32
  %284 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %285 = tail call i32 @putc(i32 noundef 92, ptr noundef %284) #29
  %286 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %287 = tail call i32 @putc(i32 noundef %283, ptr noundef %286) #29
  br label %288

288:                                              ; preds = %282, %279, %276
  %289 = getelementptr inbounds i8, ptr %271, i64 1
  %290 = load i8, ptr %289, align 1, !tbaa !9
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %322, label %269, !llvm.loop !214

292:                                              ; preds = %251
  br i1 %259, label %293, label %296

293:                                              ; preds = %292
  %294 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %295 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74) #29
  br label %296

296:                                              ; preds = %293, %292
  %297 = load i8, ptr %234, align 1, !tbaa !9
  %298 = zext i8 %297 to i32
  %299 = zext i8 %297 to i64
  %300 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !9
  switch i8 %301, label %308 [
    i8 0, label %302
    i8 1, label %305
  ]

302:                                              ; preds = %296
  %303 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %304 = tail call i32 @putc(i32 noundef %298, ptr noundef %303) #29
  br label %314

305:                                              ; preds = %296
  %306 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef nonnull @.str.73, i32 noundef %298) #29
  br label %314

308:                                              ; preds = %296
  %309 = sext i8 %301 to i32
  %310 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %311 = tail call i32 @putc(i32 noundef 92, ptr noundef %310) #29
  %312 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %313 = tail call i32 @putc(i32 noundef %309, ptr noundef %312) #29
  br label %314

314:                                              ; preds = %302, %305, %308
  %315 = phi i32 [ 1, %302 ], [ 4, %305 ], [ 2, %308 ]
  %316 = add nuw nsw i32 %240, %315
  %317 = getelementptr inbounds i8, ptr %234, i64 1
  %318 = icmp ult ptr %317, %229
  br i1 %318, label %319, label %327

319:                                              ; preds = %314, %322
  %320 = phi i32 [ %316, %314 ], [ 0, %322 ]
  %321 = phi ptr [ %317, %314 ], [ %325, %322 ]
  br label %231, !llvm.loop !215

322:                                              ; preds = %288, %264
  %323 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %324 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %323)
  %325 = getelementptr inbounds i8, ptr %252, i64 1
  %326 = icmp ult ptr %325, %229
  br i1 %326, label %319, label %330

327:                                              ; preds = %314
  %328 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %329 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %328)
  br label %330

330:                                              ; preds = %322, %227, %327
  %331 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1) #29
  br label %333

333:                                              ; preds = %330, %226
  %334 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024) #29
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
  %342 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @elf_record_gcc_switches.buffer) #29
  %343 = getelementptr inbounds i8, ptr @elf_record_gcc_switches.buffer, i64 %342
  %344 = icmp sgt i64 %342, 0
  br i1 %344, label %345, label %444

345:                                              ; preds = %341, %433
  %346 = phi i32 [ %434, %433 ], [ 0, %341 ]
  %347 = phi ptr [ %366, %433 ], [ null, %341 ]
  %348 = phi ptr [ %435, %433 ], [ @elf_record_gcc_switches.buffer, %341 ]
  %349 = icmp ugt i32 %346, 59
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
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
  %360 = load i8, ptr %359, align 1, !tbaa !9
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds i8, ptr %359, i64 1
  %364 = icmp ult ptr %363, %343
  br i1 %364, label %358, label %365, !llvm.loop !216

365:                                              ; preds = %362, %358, %356, %353
  %366 = phi ptr [ %347, %353 ], [ %348, %356 ], [ %363, %362 ], [ %359, %358 ]
  %367 = icmp ult ptr %366, %343
  %368 = ptrtoint ptr %366 to i64
  %369 = ptrtoint ptr %348 to i64
  %370 = sub i64 %368, %369
  %371 = icmp slt i64 %370, 257
  %372 = and i1 %367, %371
  %373 = icmp eq i32 %354, 0
  br i1 %372, label %374, label %406

374:                                              ; preds = %365
  br i1 %373, label %378, label %375

375:                                              ; preds = %374
  %376 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %377 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %376)
  br label %378

378:                                              ; preds = %374, %375
  %379 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %380 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %379, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #29
  %381 = load i8, ptr %348, align 1, !tbaa !9
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %436, label %383

383:                                              ; preds = %378, %402
  %384 = phi i8 [ %404, %402 ], [ %381, %378 ]
  %385 = phi ptr [ %403, %402 ], [ %348, %378 ]
  %386 = zext i8 %384 to i32
  %387 = zext i8 %384 to i64
  %388 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !9
  switch i8 %389, label %396 [
    i8 0, label %390
    i8 1, label %393
  ]

390:                                              ; preds = %383
  %391 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %392 = tail call i32 @putc(i32 noundef %386, ptr noundef %391) #29
  br label %402

393:                                              ; preds = %383
  %394 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %394, ptr noundef nonnull @.str.73, i32 noundef %386) #29
  br label %402

396:                                              ; preds = %383
  %397 = sext i8 %389 to i32
  %398 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %399 = tail call i32 @putc(i32 noundef 92, ptr noundef %398) #29
  %400 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %401 = tail call i32 @putc(i32 noundef %397, ptr noundef %400) #29
  br label %402

402:                                              ; preds = %396, %393, %390
  %403 = getelementptr inbounds i8, ptr %385, i64 1
  %404 = load i8, ptr %403, align 1, !tbaa !9
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %436, label %383, !llvm.loop !217

406:                                              ; preds = %365
  br i1 %373, label %407, label %410

407:                                              ; preds = %406
  %408 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %409 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %408, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74) #29
  br label %410

410:                                              ; preds = %407, %406
  %411 = load i8, ptr %348, align 1, !tbaa !9
  %412 = zext i8 %411 to i32
  %413 = zext i8 %411 to i64
  %414 = getelementptr inbounds [257 x i8], ptr @.str.72, i64 0, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !9
  switch i8 %415, label %422 [
    i8 0, label %416
    i8 1, label %419
  ]

416:                                              ; preds = %410
  %417 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %418 = tail call i32 @putc(i32 noundef %412, ptr noundef %417) #29
  br label %428

419:                                              ; preds = %410
  %420 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %421 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.73, i32 noundef %412) #29
  br label %428

422:                                              ; preds = %410
  %423 = sext i8 %415 to i32
  %424 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %425 = tail call i32 @putc(i32 noundef 92, ptr noundef %424) #29
  %426 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %427 = tail call i32 @putc(i32 noundef %423, ptr noundef %426) #29
  br label %428

428:                                              ; preds = %416, %419, %422
  %429 = phi i32 [ 1, %416 ], [ 4, %419 ], [ 2, %422 ]
  %430 = add nuw nsw i32 %354, %429
  %431 = getelementptr inbounds i8, ptr %348, i64 1
  %432 = icmp ult ptr %431, %343
  br i1 %432, label %433, label %441

433:                                              ; preds = %428, %436
  %434 = phi i32 [ %430, %428 ], [ 0, %436 ]
  %435 = phi ptr [ %431, %428 ], [ %439, %436 ]
  br label %345, !llvm.loop !218

436:                                              ; preds = %402, %378
  %437 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %438 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %437)
  %439 = getelementptr inbounds i8, ptr %366, i64 1
  %440 = icmp ult ptr %439, %343
  br i1 %440, label %433, label %444

441:                                              ; preds = %428
  %442 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %443 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %442)
  br label %444

444:                                              ; preds = %436, %341, %441
  %445 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %446 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %445, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef 1) #29
  br label %450

447:                                              ; preds = %337
  %448 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 35), align 8, !tbaa !219
  %449 = tail call ptr @get_section(ptr noundef %448, i32 noundef 99329, ptr noundef null) #29
  tail call void @switch_to_section(ptr noundef %449) #29
  store i1 true, ptr @elf_record_gcc_switches.started, align 1
  br label %450

450:                                              ; preds = %2, %447, %444, %339, %335, %333, %223, %116
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_elf_asm_output_external(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @decl_assembler_name(ptr noundef %1) #27
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 67108864
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !187
  %10 = tail call zeroext i8 %9(ptr noundef %1) #27
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @maybe_assemble_visibility(ptr noundef %1) #29, !range !83
  br label %14

14:                                               ; preds = %12, %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_rtx_constant_pool(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !220
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %7) #29
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %12) #29
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  tail call void @gt_ggc_m_P23constant_descriptor_rtx4htab(ptr noundef %17) #29
  br label %18

18:                                               ; preds = %1, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %8, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #27
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !138
  %9 = icmp ult ptr %8, inttoptr (i64 2 to ptr)
  br i1 %9, label %10, label %3, !llvm.loop !221

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %4, %3 ], [ %8, %7 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %36, label %13

13:                                               ; preds = %10, %33
  %14 = phi ptr [ %34, %33 ], [ %0, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %15) #29
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %20) #27
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !145
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %25) #27
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %30) #27
  br label %33

33:                                               ; preds = %32, %28
  %34 = load ptr, ptr %14, align 8, !tbaa !138
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %13, !llvm.loop !222

36:                                               ; preds = %33, %1, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P23constant_descriptor_rtx4htab(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !223
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !225
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !223
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %19) #29
  %22 = load i64, ptr %11, align 8, !tbaa !225
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !226

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !223
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #27
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_rtx_constant_pool(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17rtx_constant_pool, i32 noundef 122) #27
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !220
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %5) #29
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %10) #29
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.rtx_constant_pool, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  tail call void @gt_pch_n_P23constant_descriptor_rtx4htab(ptr noundef %15) #29
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17rtx_constant_pool(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #27
  %7 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #27
  %8 = getelementptr inbounds %struct.rtx_constant_pool, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #27
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_constant_descriptor_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23constant_descriptor_rtx, i32 noundef 146) #27
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %34, label %6

4:                                                ; preds = %6
  %5 = icmp eq ptr %8, %0
  br i1 %5, label %34, label %11

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = tail call i32 @gt_pch_note_object(ptr noundef %8, ptr noundef %8, ptr noundef nonnull @gt_pch_p_23constant_descriptor_rtx, i32 noundef 146) #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %6, !llvm.loop !227

11:                                               ; preds = %4, %31
  %12 = phi ptr [ %32, %31 ], [ %0, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %13) #29
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %18) #27
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %23) #27
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %28) #27
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr %12, align 8, !tbaa !138
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %34, label %11, !llvm.loop !228

34:                                               ; preds = %31, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P23constant_descriptor_rtx4htab(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23constant_descriptor_rtx4htab, i32 noundef 191) #27
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !225
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !223
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %17) #29
  %20 = load i64, ptr %9, align 8, !tbaa !225
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !229

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !223
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P23constant_descriptor_rtx4htab, i32 noundef 217) #27
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_23constant_descriptor_rtx(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #27
  %7 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #27
  %8 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #27
  %9 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #27
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P23constant_descriptor_rtx4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !225
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !223
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #27
  %19 = load i64, ptr %9, align 8, !tbaa !225
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !230

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #27
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P24constant_descriptor_tree4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P24constant_descriptor_tree4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P12object_block4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P12object_block4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P7section4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P7section4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_section(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_section(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_S(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_S(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_tree_map(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_tree_map(ptr noundef) #2

; Function Attrs: optsize
declare i32 @tree_map_base_marked_p(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @prefix_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %7 = add i64 %6, 1
  %8 = add i64 %7, %3
  %9 = and i64 %8, 4294967295
  %10 = alloca i8, i64 %9, align 16
  %11 = and i64 %3, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %0, i64 %11, i1 false)
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = and i64 %7, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %5, i64 %13, i1 false)
  %14 = call ptr @get_identifier(ptr noundef nonnull %10) #27
  ret ptr %14
}

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @contains_pointers_p(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi ptr [ %0, %1 ], [ %26, %24 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %28 [
    i16 10, label %27
    i16 12, label %27
    i16 5, label %27
    i16 16, label %6
    i16 17, label %6
    i16 18, label %6
    i16 15, label %24
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
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
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = tail call fastcc i32 @contains_pointers_p(ptr noundef %17) #29, !range !83
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %10, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %10, !llvm.loop !231

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  br label %2

27:                                               ; preds = %2, %2, %2
  br label %28

28:                                               ; preds = %20, %15, %2, %27, %6
  %29 = phi i32 [ 0, %6 ], [ 1, %27 ], [ 0, %2 ], [ 0, %20 ], [ 1, %15 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @incorporeal_function_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 11
  %9 = and i32 %8, 3
  switch i32 %9, label %13 [
    i32 0, label %20
    i32 3, label %10
  ]

10:                                               ; preds = %5
  %11 = and i32 %7, 2047
  %12 = icmp eq i32 %11, 415
  br i1 %12, label %19, label %13

13:                                               ; preds = %5, %10
  %14 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #27
  %15 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call zeroext i8 @is_builtin_name(ptr noundef %16) #27
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10, %13
  br label %20

20:                                               ; preds = %1, %5, %13, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %13 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %21
}

; Function Attrs: optsize
declare zeroext i8 @is_builtin_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decode_addr_const(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %38, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %38 ]
  %5 = phi i32 [ 0, %2 ], [ %41, %38 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 41
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = tail call ptr @byte_position(ptr noundef %13) #27
  %15 = tail call i32 @host_integerp(ptr noundef %14, i32 noundef 0) #27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, ptr %7, align 8
  br label %22

19:                                               ; preds = %11
  %20 = load ptr, ptr %12, align 8, !tbaa !9
  %21 = tail call i64 @int_byte_position(ptr noundef %20) #27
  br label %38

22:                                               ; preds = %17, %3
  %23 = phi i64 [ %18, %17 ], [ %8, %3 ]
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -45
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = tail call i64 @tree_low_cst(ptr noundef %32, i32 noundef 1) #27
  %34 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = tail call i64 @tree_low_cst(ptr noundef %35, i32 noundef 0) #27
  %37 = mul nsw i64 %36, %33
  br label %38

38:                                               ; preds = %28, %19
  %39 = phi i64 [ %21, %19 ], [ %37, %28 ]
  %40 = trunc i64 %39 to i32
  %41 = add i32 %5, %40
  br label %3

42:                                               ; preds = %22
  %43 = trunc i64 %23 to i16
  switch i16 %43, label %56 [
    i16 32, label %44
    i16 29, label %44
    i16 30, label %50
    i16 24, label %54
    i16 25, label %54
    i16 28, label %54
    i16 26, label %54
    i16 51, label %54
    i16 23, label %54
  ]

44:                                               ; preds = %42, %42
  %45 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #29
  %49 = load ptr, ptr %45, align 8, !tbaa !9
  br label %57

50:                                               ; preds = %42
  %51 = tail call ptr @force_label_rtx(ptr noundef nonnull %7) #27
  %52 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %51) #27
  %53 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %52) #27
  br label %57

54:                                               ; preds = %42, %42, %42, %42, %42, %42
  %55 = tail call ptr @output_constant_def(ptr noundef nonnull %7, i32 noundef 1) #29
  br label %57

56:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2845, ptr noundef nonnull @.str.5) #27
  br label %57

57:                                               ; preds = %48, %44, %56, %54, %50
  %58 = phi ptr [ undef, %56 ], [ %55, %54 ], [ %53, %50 ], [ %49, %48 ], [ %46, %44 ]
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2848, ptr noundef nonnull @.str.5) #27
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  store ptr %65, ptr %1, align 8, !tbaa !124
  %66 = sext i32 %5 to i64
  %67 = getelementptr inbounds %struct.addr_const, ptr %1, i64 0, i32 1
  store i64 %66, ptr %67, align 8, !tbaa !126
  ret void
}

; Function Attrs: optsize
declare ptr @byte_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_byte_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_label_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_constant(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %81 [
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
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %19

12:                                               ; preds = %81, %79, %21, %19, %45, %33, %23, %14
  %13 = phi ptr [ %18, %14 ], [ %32, %23 ], [ %44, %33 ], [ %53, %45 ], [ null, %81 ], [ %55, %79 ], [ %22, %21 ], [ %20, %19 ]
  ret ptr %13

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call fastcc ptr @copy_constant(ptr noundef nonnull %6) #29
  %18 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %16, ptr noundef %17) #27
  br label %12

19:                                               ; preds = %4
  %20 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #27
  br label %12

21:                                               ; preds = %1, %1, %1, %1
  %22 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #27
  br label %12

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = tail call fastcc ptr @copy_constant(ptr noundef %27) #29
  %29 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = tail call fastcc ptr @copy_constant(ptr noundef %30) #29
  %32 = tail call ptr @build_complex(ptr noundef %25, ptr noundef %28, ptr noundef %31) #27
  br label %12

33:                                               ; preds = %1, %1, %1
  %34 = trunc i64 %2 to i32
  %35 = and i32 %34, 65535
  %36 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = tail call fastcc ptr @copy_constant(ptr noundef %39) #29
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = tail call fastcc ptr @copy_constant(ptr noundef %42) #29
  %44 = tail call ptr @build2_stat(i32 noundef %35, ptr noundef %37, ptr noundef %40, ptr noundef %43) #27
  br label %12

45:                                               ; preds = %1, %1, %1
  %46 = trunc i64 %2 to i32
  %47 = and i32 %46, 65535
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = tail call fastcc ptr @copy_constant(ptr noundef %51) #29
  %53 = tail call ptr @build1_stat(i32 noundef %47, ptr noundef %49, ptr noundef %52) #27
  br label %12

54:                                               ; preds = %1
  %55 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #27
  %56 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %57) #29
  %59 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %58) #29
  %60 = load ptr, ptr %56, align 8, !tbaa !9
  %61 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %60) #29
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %54, %63
  %64 = phi ptr [ %75, %63 ], [ %60, %54 ]
  %65 = phi i64 [ %74, %63 ], [ 0, %54 ]
  %66 = trunc i64 %65 to i32
  %67 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %64, i32 noundef %66) #29
  %68 = getelementptr inbounds %struct.constructor_elt_d, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = load ptr, ptr %67, align 8, !tbaa !96
  %71 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %59) #29
  store ptr %70, ptr %71, align 8, !tbaa !96
  %72 = tail call fastcc ptr @copy_constant(ptr noundef %69) #29
  %73 = getelementptr inbounds %struct.constructor_elt_d, ptr %71, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !98
  %74 = add nuw nsw i64 %65, 1
  %75 = load ptr, ptr %56, align 8, !tbaa !9
  %76 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %75) #29
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %63, label %79, !llvm.loop !232

79:                                               ; preds = %63, %54
  %80 = getelementptr inbounds %struct.tree_constructor, ptr %55, i64 0, i32 1
  store ptr %59, ptr %80, align 8, !tbaa !9
  br label %12

81:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3184, ptr noundef nonnull @.str.5) #27
  br label %12
}

; Function Attrs: optsize
declare i32 @mf_marked_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mf_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_constant_section(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %11 [
    i16 29, label %4
    i16 32, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %0) #29, !range !102
  %10 = tail call ptr @get_named_section(ptr noundef nonnull %0, ptr noundef null, i32 noundef %9) #29
  br label %17

11:                                               ; preds = %1, %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 21), align 8, !tbaa !103
  %13 = tail call i32 @compute_reloc_for_constant(ptr noundef nonnull %0) #29, !range !102
  %14 = tail call fastcc i32 @get_constant_alignment(ptr noundef nonnull %0) #29
  %15 = zext i32 %14 to i64
  %16 = tail call ptr %12(ptr noundef nonnull %0, i32 noundef %13, i64 noundef %15) #27
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ %10, %8 ], [ %16, %11 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constant_def_contents(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  tail call fastcc void @output_addressed_constants(ptr noundef %9) #29
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %10, 4194304
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !9
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @place_block_symbol(ptr noundef nonnull %0) #29
  br label %38

22:                                               ; preds = %17, %8
  %23 = tail call fastcc ptr @get_constant_section(ptr noundef nonnull %9) #29
  tail call void @switch_to_section(ptr noundef %23) #29
  %24 = tail call fastcc i32 @get_constant_alignment(ptr noundef nonnull %9) #29
  %25 = icmp ugt i32 %24, 8
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = lshr i32 %24, 3
  %28 = zext nneg i32 %27 to i64
  %29 = tail call i32 @floor_log2(i64 noundef %28) #27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %33 = tail call i32 @floor_log2(i64 noundef %28) #27
  %34 = shl nuw i32 1, %33
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.57, i32 noundef %34) #29
  br label %36

36:                                               ; preds = %26, %31, %22
  %37 = load ptr, ptr %12, align 8, !tbaa !9
  tail call fastcc void @assemble_constant_contents(ptr noundef nonnull %9, ptr noundef %37, i32 noundef %24) #29
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, ptr @flag_mudflap, align 4, !tbaa !19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @mudflap_enqueue_constant(ptr noundef nonnull %9) #27
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assemble_constant_contents(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @get_constant_size(ptr noundef %0) #29
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %5, ptr noundef %1) #29
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %6) #29
  tail call void @output_constant(ptr noundef %0, i64 noundef %4, i32 noundef %2) #29
  ret void
}

; Function Attrs: optsize
declare void @mudflap_enqueue_constant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_desc_rtx_hash(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !140
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_desc_rtx_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !108
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = tail call i32 @rtx_equal_p(ptr noundef %10, ptr noundef %12) #27
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @const_rtx_hash_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
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
  %13 = load i64, ptr %12, align 8, !tbaa !9
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
  %24 = load i64, ptr %22, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !9
  %27 = xor i64 %26, %24
  br label %14

28:                                               ; preds = %20
  %29 = tail call i32 @real_hash(ptr noundef nonnull %22) #27
  %30 = xor i32 %29, %9
  br label %68

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %33 = tail call i32 @fixed_hash(ptr noundef nonnull %32) #27
  %34 = xor i32 %33, %9
  br label %68

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = load i32, ptr %37, align 8, !tbaa !233
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
  %47 = load ptr, ptr %36, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %47, i64 0, i32 1, i64 %45
  %49 = tail call i32 @const_rtx_hash_1(ptr noundef nonnull %48, ptr noundef %1) #29
  %50 = icmp ugt i64 %43, 1
  br i1 %50, label %42, label %68, !llvm.loop !235

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = tail call i32 @htab_hash_string(ptr noundef %53) #27
  %55 = xor i32 %54, %9
  br label %68

56:                                               ; preds = %2
  %57 = mul i32 %9, 251
  %58 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !9
  %62 = add i32 %61, %57
  br label %68

63:                                               ; preds = %2, %2
  %64 = mul i32 %9, 251
  %65 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load i32, ptr %65, align 8, !tbaa !9
  %67 = add i32 %66, %64
  br label %68

68:                                               ; preds = %42, %35, %14, %2, %63, %56, %51, %31, %28
  %69 = phi i32 [ %9, %2 ], [ %67, %63 ], [ %62, %56 ], [ %55, %51 ], [ %34, %31 ], [ %30, %28 ], [ %19, %14 ], [ %9, %35 ], [ %46, %42 ]
  %70 = load i32, ptr %1, align 4, !tbaa !19
  %71 = mul i32 %70, 509
  %72 = add i32 %71, %69
  store i32 %72, ptr %1, align 4, !tbaa !19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_section(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !9
  %3 = and i32 %2, 2097152
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.named_section, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @htab_hash_string(ptr noundef %7) #27
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_constant_pool() unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 36), align 8, !tbaa !134
  %2 = icmp eq i8 %1, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  %7 = tail call ptr @get_insns() #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %17

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %7, %6 ]
  tail call fastcc void @mark_constants(ptr noundef nonnull %13) #29
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %12, !llvm.loop !236

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %22, %17 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  tail call fastcc void @mark_constants(ptr noundef %20) #29
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !237

24:                                               ; preds = %17, %9, %0
  ret void
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_constants(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = load i32, ptr %14, align 8, !tbaa !233
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %31
  %20 = phi i64 [ 0, %17 ], [ %32, %31 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %30 = tail call i32 @for_each_rtx(ptr noundef nonnull %29, ptr noundef nonnull @mark_constant, ptr noundef null) #27
  br label %31

31:                                               ; preds = %19, %28
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %36, label %19, !llvm.loop !238

34:                                               ; preds = %6
  %35 = tail call i32 @for_each_rtx(ptr noundef nonnull %7, ptr noundef nonnull @mark_constant, ptr noundef null) #27
  br label %36

36:                                               ; preds = %31, %12, %1, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mark_constant(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
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
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !142
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  store i32 1, ptr %15, align 8, !tbaa !142
  %19 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %14, i64 0, i32 3
  %20 = tail call i32 @for_each_rtx(ptr noundef nonnull %19, ptr noundef nonnull @mark_constant, ptr noundef null) #27
  br label %33

21:                                               ; preds = %9
  %22 = and i32 %6, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 4194304
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !129
  %32 = add i32 %31, -1
  store i32 %32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 2, i32 1), align 8, !tbaa !129
  tail call fastcc void @output_constant_def_contents(ptr noundef nonnull %3) #29
  br label %33

33:                                               ; preds = %21, %18, %12, %30, %24, %2, %5
  %34 = phi i32 [ 0, %5 ], [ 0, %2 ], [ -1, %24 ], [ -1, %30 ], [ -1, %12 ], [ -1, %18 ], [ -1, %21 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constant_pool_1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %37 [
    i16 35, label %7
    i16 44, label %19
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 49
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %37

19:                                               ; preds = %13, %2
  %20 = phi ptr [ %4, %2 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3846, ptr noundef nonnull @.str.5) #27
  %27 = load i32, ptr %22, align 8
  br label %28

28:                                               ; preds = %19, %26
  %29 = phi i32 [ %23, %19 ], [ %27, %26 ]
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %34 = load i32, ptr %33, align 8, !tbaa !9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3848, ptr noundef nonnull @.str.5) #27
  br label %37

37:                                               ; preds = %2, %36, %32, %28, %7, %13
  tail call void @assemble_align(i32 noundef %1) #29
  %38 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !115
  %39 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !141
  %42 = sext i32 %41 to i64
  tail call void %38(ptr noundef %39, ptr noundef nonnull @.str.86, i64 noundef %42) #27
  %43 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !108
  tail call fastcc void @output_constant_pool_2(i32 noundef %44, ptr noundef nonnull %4, i32 noundef %1) #29
  %45 = load i32, ptr %43, align 4, !tbaa !108
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = icmp ult i32 %50, %1
  %52 = load ptr, ptr @in_section, align 8
  %53 = icmp ne ptr %52, null
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  %56 = load i32, ptr %52, align 8, !tbaa !9
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @assemble_align(i32 noundef %1) #29
  br label %60

60:                                               ; preds = %59, %55, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constant_pool_2(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3772, ptr noundef nonnull @.str.5) #27
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  tail call void @assemble_real(ptr noundef nonnull byval(%struct.real_value) align 8 %13, i32 noundef %0, i32 noundef %2) #29
  br label %50

14:                                               ; preds = %3, %3, %3, %3, %3, %3
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = tail call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef 1) #29, !range !66
  br label %50

19:                                               ; preds = %3, %3, %3, %3, %3, %3
  %20 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %4
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = zext i8 %21 to i32
  %23 = zext i8 %21 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %2)
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 33
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3798, ptr noundef nonnull @.str.5) #27
  br label %33

33:                                               ; preds = %19, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = load i32, ptr %35, align 8, !tbaa !233
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %47, %40 ]
  %42 = load ptr, ptr %34, align 8, !tbaa !9
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq i64 %41, 0
  %46 = select i1 %45, i32 %2, i32 %28
  tail call fastcc void @output_constant_pool_2(i32 noundef %22, ptr noundef %44, i32 noundef %46) #29
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %39
  br i1 %48, label %50, label %40, !llvm.loop !239

49:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3810, ptr noundef nonnull @.str.5) #27
  br label %50

50:                                               ; preds = %40, %33, %49, %14, %12
  ret void
}

; Function Attrs: optsize
declare ptr @staticp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @narrowing_initializer_constant_valid_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -6
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %285

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %125, %9
  %15 = phi ptr [ %11, %9 ], [ %20, %125 ]
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %131 [
    i16 116, label %18
    i16 113, label %18
    i16 117, label %18
  ]

18:                                               ; preds = %14, %14, %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %131, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @vector_type_mode(ptr noundef nonnull %25) #27
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
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 2
  br i1 %41, label %96, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %24, align 8, !tbaa !9
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call i32 @vector_type_mode(ptr noundef nonnull %43) #27
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
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 3
  br i1 %59, label %96, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %24, align 8, !tbaa !9
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 14
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call i32 @vector_type_mode(ptr noundef nonnull %61) #27
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
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %24, align 8, !tbaa !9
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 14
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #27
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
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = icmp eq i8 %94, 12
  br i1 %95, label %96, label %131

96:                                               ; preds = %90, %72, %54, %36
  %97 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !9
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 14
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = tail call i32 @vector_type_mode(ptr noundef nonnull %98) #27
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
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = load ptr, ptr %24, align 8, !tbaa !9
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %114) #27
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
  %129 = load i8, ptr %128, align 1, !tbaa !9
  %130 = icmp ugt i8 %113, %129
  br i1 %130, label %131, label %14

131:                                              ; preds = %125, %18, %90, %14
  br label %132

132:                                              ; preds = %131, %243
  %133 = phi ptr [ %138, %243 ], [ %13, %131 ]
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i16
  switch i16 %135, label %249 [
    i16 116, label %136
    i16 113, label %136
    i16 117, label %136
  ]

136:                                              ; preds = %132, %132, %132
  %137 = getelementptr inbounds %struct.tree_exp, ptr %133, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !9
  %139 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %249, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !9
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = tail call i32 @vector_type_mode(ptr noundef nonnull %143) #27
  br label %154

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %153, %149 ]
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = icmp eq i8 %158, 2
  br i1 %159, label %214, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %142, align 8, !tbaa !9
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 14
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = tail call i32 @vector_type_mode(ptr noundef nonnull %161) #27
  br label %172

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %169 = load i32, ptr %168, align 4
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  br label %172

172:                                              ; preds = %167, %165
  %173 = phi i32 [ %166, %165 ], [ %171, %167 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !9
  %177 = icmp eq i8 %176, 3
  br i1 %177, label %214, label %178

178:                                              ; preds = %172
  %179 = load ptr, ptr %142, align 8, !tbaa !9
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 14
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #27
  br label %190

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  br label %190

190:                                              ; preds = %185, %183
  %191 = phi i32 [ %184, %183 ], [ %189, %185 ]
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !9
  %195 = icmp eq i8 %194, 10
  br i1 %195, label %214, label %196

196:                                              ; preds = %190
  %197 = load ptr, ptr %142, align 8, !tbaa !9
  %198 = load i64, ptr %197, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 14
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = tail call i32 @vector_type_mode(ptr noundef nonnull %197) #27
  br label %208

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %205 = load i32, ptr %204, align 4
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  br label %208

208:                                              ; preds = %203, %201
  %209 = phi i32 [ %202, %201 ], [ %207, %203 ]
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !9
  %213 = icmp eq i8 %212, 12
  br i1 %213, label %214, label %249

214:                                              ; preds = %208, %190, %172, %154
  %215 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !9
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 14
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = tail call i32 @vector_type_mode(ptr noundef nonnull %216) #27
  br label %227

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.tree_type, ptr %216, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !9
  %232 = load ptr, ptr %142, align 8, !tbaa !9
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 14
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = tail call i32 @vector_type_mode(ptr noundef nonnull %232) #27
  br label %243

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = lshr i32 %240, 16
  %242 = and i32 %241, 255
  br label %243

243:                                              ; preds = %238, %236
  %244 = phi i32 [ %237, %236 ], [ %242, %238 ]
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = icmp ugt i8 %231, %247
  br i1 %248, label %249, label %132

249:                                              ; preds = %243, %136, %208, %132
  %250 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef nonnull %15, ptr noundef nonnull %1, ptr noundef %2) #29
  %251 = icmp eq ptr %250, null
  br i1 %251, label %285, label %252

252:                                              ; preds = %249
  %253 = icmp eq ptr %2, null
  %254 = getelementptr inbounds ptr, ptr %2, i64 2
  %255 = select i1 %253, ptr null, ptr %254
  %256 = tail call fastcc ptr @initializer_constant_valid_p_1(ptr noundef nonnull %133, ptr noundef nonnull %1, ptr noundef %255) #29
  %257 = icmp eq ptr %256, null
  br i1 %257, label %285, label %258

258:                                              ; preds = %252
  %259 = icmp eq ptr %250, %256
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !5
  %262 = icmp eq ptr %250, %261
  br i1 %262, label %285, label %263

263:                                              ; preds = %260
  %264 = load i64, ptr %0, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 64
  br i1 %266, label %285, label %267

267:                                              ; preds = %263, %258
  %268 = load i64, ptr %250, align 8
  %269 = trunc i64 %268 to i16
  switch i16 %269, label %285 [
    i16 30, label %270
    i16 28, label %276
  ]

270:                                              ; preds = %267
  %271 = load i64, ptr %256, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 30
  %274 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %275 = select i1 %273, ptr %274, ptr null
  br label %285

276:                                              ; preds = %267
  %277 = load i64, ptr %256, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 28
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = tail call i32 @operand_equal_p(ptr noundef nonnull %250, ptr noundef nonnull %256, i32 noundef 1) #27
  %282 = icmp eq i32 %281, 0
  %283 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %284 = select i1 %282, ptr null, ptr %283
  br label %285

285:                                              ; preds = %270, %267, %260, %263, %280, %3, %252, %276, %249
  %286 = phi ptr [ null, %3 ], [ null, %249 ], [ null, %276 ], [ null, %252 ], [ %284, %280 ], [ %261, %263 ], [ %250, %260 ], [ %275, %270 ], [ null, %267 ]
  ret ptr %286
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !99
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !5
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constructor_array_range(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call i64 @int_size_in_bytes(ptr noundef %5) #27
  %7 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 0) #27
  %12 = load ptr, ptr %7, align 8, !tbaa !169
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = tail call i64 @tree_low_cst(ptr noundef %14, i32 noundef 0) #27
  %16 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !158
  %18 = trunc i64 %6 to i32
  %19 = shl i32 %18, 3
  %20 = tail call fastcc i32 @min_align(i32 noundef %17, i32 noundef %19) #29
  %21 = icmp sgt i64 %11, %15
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 10
  %24 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 6
  br label %25

25:                                               ; preds = %22, %31
  %26 = phi i64 [ %11, %22 ], [ %34, %31 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !168
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @assemble_zeros(i64 noundef %6) #29
  br label %31

30:                                               ; preds = %25
  tail call void @output_constant(ptr noundef nonnull %27, i64 noundef %6, i32 noundef %20) #29
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i64, ptr %24, align 8, !tbaa !159
  %33 = add i64 %32, %6
  store i64 %33, ptr %24, align 8, !tbaa !159
  %34 = add i64 %26, 1
  %35 = icmp eq i64 %26, %15
  br i1 %35, label %36, label %25, !llvm.loop !240

36:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constructor_regular_field(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #27
  %13 = load ptr, ptr %2, align 8, !tbaa !169
  %14 = tail call i64 @tree_low_cst(ptr noundef %13, i32 noundef 0) #27
  %15 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = tail call i64 @tree_low_cst(ptr noundef %16, i32 noundef 0) #27
  %18 = sub nsw i64 %14, %17
  %19 = mul nsw i64 %18, %12
  br label %26

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !167
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @int_byte_position(ptr noundef nonnull %22) #27
  br label %26

26:                                               ; preds = %20, %24, %5
  %27 = phi i64 [ %19, %5 ], [ %25, %24 ], [ 0, %20 ]
  %28 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 7
  %29 = load i8, ptr %28, align 8, !tbaa !160
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !163
  %34 = sext i32 %33 to i64
  %35 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %34) #27
  %36 = tail call zeroext i8 @assemble_integer(ptr noundef %35, i32 noundef 1, i32 noundef 8, i32 noundef 1) #29, !range !66
  %37 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 6
  %38 = load i64, ptr %37, align 8, !tbaa !159
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !159
  store i8 0, ptr %28, align 8, !tbaa !160
  br label %40

40:                                               ; preds = %31, %26
  %41 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !167
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8, !tbaa !169
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 6
  %49 = load i64, ptr %48, align 8, !tbaa !159
  %50 = icmp eq i64 %27, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = icmp slt i64 %27, %49
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4892, ptr noundef nonnull @.str.5) #27
  %54 = load i64, ptr %48, align 8, !tbaa !159
  br label %55

55:                                               ; preds = %51, %53
  %56 = phi i64 [ %49, %51 ], [ %54, %53 ]
  %57 = sub nsw i64 %27, %56
  tail call void @assemble_zeros(i64 noundef %57) #29
  store i64 %27, ptr %48, align 8, !tbaa !159
  %58 = load ptr, ptr %41, align 8, !tbaa !167
  br label %59

59:                                               ; preds = %55, %47, %44
  %60 = phi ptr [ null, %44 ], [ %42, %47 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !158
  %63 = trunc i64 %27 to i32
  %64 = shl i32 %63, 3
  %65 = tail call fastcc i32 @min_align(i32 noundef %62, i32 noundef %64) #29
  %66 = icmp eq ptr %60, null
  br i1 %66, label %104, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 15
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 14
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !168
  %84 = tail call fastcc i64 @array_size_for_constructor(ptr noundef %83) #29
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %41, align 8, !tbaa !167
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !9
  %90 = icmp eq ptr %89, null
  br i1 %90, label %110, label %91

91:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 4917, ptr noundef nonnull @.str.5) #27
  br label %110

92:                                               ; preds = %77, %73, %67
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %92
  %97 = tail call i32 @host_integerp(ptr noundef nonnull %94, i32 noundef 1) #27
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %41, align 8, !tbaa !167
  %101 = getelementptr inbounds %struct.tree_decl_common, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !9
  %103 = tail call i64 @tree_low_cst(ptr noundef %102, i32 noundef 1) #27
  br label %110

104:                                              ; preds = %59
  %105 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !164
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !9
  %109 = tail call i64 @int_size_in_bytes(ptr noundef %108) #27
  br label %110

110:                                              ; preds = %81, %86, %91, %96, %99, %92, %104
  %111 = phi i64 [ %103, %99 ], [ 0, %96 ], [ 0, %92 ], [ %84, %91 ], [ %84, %86 ], [ 0, %81 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !168
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  tail call void @assemble_zeros(i64 noundef %111) #29
  br label %117

116:                                              ; preds = %110
  tail call void @output_constant(ptr noundef nonnull %113, i64 noundef %111, i32 noundef %65) #29
  br label %117

117:                                              ; preds = %116, %115
  %118 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 6
  %119 = load i64, ptr %118, align 8, !tbaa !159
  %120 = add i64 %119, %111
  store i64 %120, ptr %118, align 8, !tbaa !159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_constructor_bitfield(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.oc_outer_state, align 4
  %4 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 1
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 2
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %14, %9 ], [ %8, %7 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = tail call i64 @tree_low_cst(ptr noundef %17, i32 noundef 1) #27
  %19 = load ptr, ptr %4, align 8, !tbaa !167
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !165
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  br label %42

30:                                               ; preds = %21
  %31 = tail call i64 @tree_low_cst(ptr noundef nonnull %23, i32 noundef 0) #27
  %32 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !166
  %34 = tail call i64 @tree_low_cst(ptr noundef %33, i32 noundef 0) #27
  %35 = sub nsw i64 %31, %34
  %36 = load ptr, ptr %4, align 8, !tbaa !167
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %15, %30
  %39 = phi i64 [ %35, %30 ], [ 0, %15 ]
  %40 = phi ptr [ %36, %30 ], [ %19, %15 ]
  %41 = tail call i64 @int_bit_position(ptr noundef nonnull %40) #27
  br label %45

42:                                               ; preds = %25, %30
  %43 = phi i64 [ %29, %25 ], [ %35, %30 ]
  %44 = mul nsw i64 %43, %18
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i64 [ %39, %38 ], [ %43, %42 ]
  %47 = phi i64 [ %41, %38 ], [ %44, %42 ]
  %48 = icmp eq ptr %1, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %1, align 4, !tbaa !241
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %45, %49
  %53 = phi i64 [ %51, %49 ], [ 0, %45 ]
  %54 = add nsw i64 %53, %47
  %55 = add nsw i64 %54, %18
  %56 = trunc i64 %46 to i32
  %57 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 9
  store i32 %56, ptr %57, align 8, !tbaa !165
  %58 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !168
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %52, %68
  %62 = phi ptr [ %69, %68 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), %52 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  store ptr %63, ptr %58, align 8, !tbaa !168
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi ptr [ %59, %52 ], [ %63, %61 ]
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %70 [
    i16 118, label %68
    i16 117, label %68
    i16 23, label %74
    i16 51, label %74
  ]

68:                                               ; preds = %64, %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  br label %61, !llvm.loop !242

70:                                               ; preds = %64
  %71 = load ptr, ptr %4, align 8, !tbaa !167
  %72 = getelementptr inbounds %struct.tree_decl_minimal, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.175, ptr noundef %73) #27
  br label %185

74:                                               ; preds = %64, %64
  %75 = sdiv i64 %54, 8
  %76 = srem i64 %54, 8
  %77 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 6
  %78 = load i64, ptr %77, align 8, !tbaa !159
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %102, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 7
  %82 = load i8, ptr %81, align 8, !tbaa !160
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 8
  %86 = load i32, ptr %85, align 4, !tbaa !163
  %87 = sext i32 %86 to i64
  %88 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %87) #27
  %89 = tail call zeroext i8 @assemble_integer(ptr noundef %88, i32 noundef 1, i32 noundef 8, i32 noundef 1) #29, !range !66
  %90 = load i64, ptr %77, align 8, !tbaa !159
  %91 = add nsw i64 %90, 1
  store i64 %91, ptr %77, align 8, !tbaa !159
  store i8 0, ptr %81, align 8, !tbaa !160
  br label %92

92:                                               ; preds = %84, %80
  %93 = phi i64 [ %91, %84 ], [ %78, %80 ]
  %94 = icmp eq i64 %75, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = icmp slt i64 %75, %93
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5010, ptr noundef nonnull @.str.5) #27
  %98 = load i64, ptr %77, align 8, !tbaa !159
  br label %99

99:                                               ; preds = %95, %97
  %100 = phi i64 [ %93, %95 ], [ %98, %97 ]
  %101 = sub nsw i64 %75, %100
  tail call void @assemble_zeros(i64 noundef %101) #29
  store i64 %75, ptr %77, align 8, !tbaa !159
  br label %102

102:                                              ; preds = %92, %99, %74
  %103 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 7
  %104 = load i8, ptr %103, align 8, !tbaa !160
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 8
  store i32 0, ptr %107, align 4, !tbaa !163
  %108 = icmp sgt i64 %18, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i8 1, ptr %103, align 8, !tbaa !160
  br label %110

110:                                              ; preds = %106, %109, %102
  %111 = load ptr, ptr %58, align 8, !tbaa !168
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 51
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = icmp sgt i64 %18, 0
  br i1 %116, label %117, label %185

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 8
  br label %128

119:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %120 = trunc i64 %76 to i32
  store i32 %120, ptr %3, align 4, !tbaa !241
  %121 = getelementptr inbounds %struct.oc_local_state, ptr %0, i64 0, i32 8
  %122 = load i32, ptr %121, align 4, !tbaa !163
  %123 = getelementptr inbounds %struct.oc_outer_state, ptr %3, i64 0, i32 1
  store i32 %122, ptr %123, align 4, !tbaa !161
  %124 = call fastcc i64 @output_constructor(ptr noundef nonnull %111, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #29
  %125 = load i64, ptr %77, align 8, !tbaa !159
  %126 = add i64 %125, %124
  store i64 %126, ptr %77, align 8, !tbaa !159
  %127 = load i32, ptr %123, align 4, !tbaa !161
  store i32 %127, ptr %121, align 4, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %185

128:                                              ; preds = %117, %167
  %129 = phi i64 [ %54, %117 ], [ %183, %167 ]
  %130 = sdiv i64 %129, 8
  %131 = srem i64 %129, 8
  %132 = load i64, ptr %77, align 8, !tbaa !159
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %144, label %134

134:                                              ; preds = %128
  %135 = load i32, ptr %118, align 4, !tbaa !163
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i32 [ %135, %134 ], [ 0, %136 ]
  %138 = sext i32 %137 to i64
  %139 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %138) #27
  %140 = tail call zeroext i8 @assemble_integer(ptr noundef %139, i32 noundef 1, i32 noundef 8, i32 noundef 1) #29, !range !66
  %141 = load i64, ptr %77, align 8, !tbaa !159
  %142 = add nsw i64 %141, 1
  store i64 %142, ptr %77, align 8, !tbaa !159
  store i32 0, ptr %118, align 4, !tbaa !163
  %143 = icmp eq i64 %130, %142
  br i1 %143, label %144, label %136, !llvm.loop !243

144:                                              ; preds = %136, %128
  %145 = sub nsw i64 %55, %129
  %146 = sub nsw i64 8, %131
  %147 = tail call i64 @llvm.smin.i64(i64 %145, i64 %146)
  %148 = trunc i64 %147 to i32
  %149 = sub nsw i64 %129, %54
  %150 = trunc i64 %149 to i32
  %151 = icmp slt i32 %150, 64
  %152 = add nsw i32 %148, %150
  %153 = icmp sgt i32 %152, 64
  %154 = select i1 %151, i1 %153, i1 false
  %155 = sub nsw i32 64, %150
  %156 = select i1 %154, i32 %155, i32 %148
  br i1 %151, label %157, label %160

157:                                              ; preds = %144
  %158 = load ptr, ptr %58, align 8, !tbaa !168
  %159 = getelementptr inbounds %struct.tree_int_cst, ptr %158, i64 0, i32 1
  br label %167

160:                                              ; preds = %144
  %161 = icmp ult i32 %150, 128
  br i1 %161, label %163, label %162

162:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 5117, ptr noundef nonnull @.str.5) #27
  br label %163

163:                                              ; preds = %160, %162
  %164 = load ptr, ptr %58, align 8, !tbaa !168
  %165 = getelementptr inbounds %struct.tree_int_cst, ptr %164, i64 0, i32 1, i32 1
  %166 = add i64 %149, 4294967232
  br label %167

167:                                              ; preds = %163, %157
  %168 = phi i64 [ %149, %157 ], [ %166, %163 ]
  %169 = phi ptr [ %159, %157 ], [ %165, %163 ]
  %170 = load i64, ptr %169, align 8, !tbaa !9
  %171 = and i64 %168, 4294967295
  %172 = ashr i64 %170, %171
  %173 = add nsw i32 %156, -1
  %174 = zext nneg i32 %173 to i64
  %175 = shl i64 2, %174
  %176 = add nuw i64 %175, 4294967295
  %177 = and i64 %172, %176
  %178 = shl i64 %177, %131
  %179 = load i32, ptr %118, align 4, !tbaa !163
  %180 = trunc i64 %178 to i32
  %181 = or i32 %179, %180
  store i32 %181, ptr %118, align 4, !tbaa !163
  %182 = sext i32 %156 to i64
  %183 = add nsw i64 %129, %182
  store i8 1, ptr %103, align 8, !tbaa !160
  %184 = icmp slt i64 %183, %55
  br i1 %184, label %128, label %185, !llvm.loop !244

185:                                              ; preds = %167, %115, %119, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @array_size_for_constructor(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 28
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %7) #29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %65, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = sext i32 %12 to i64
  br label %65

14:                                               ; preds = %5, %34
  %15 = phi ptr [ %37, %34 ], [ %7, %5 ]
  %16 = phi ptr [ %35, %34 ], [ null, %5 ]
  %17 = phi i64 [ %36, %34 ], [ 0, %5 ]
  %18 = trunc i64 %17 to i32
  %19 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %15, i32 noundef %18) #29
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 111
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi ptr [ %26, %24 ], [ %20, %14 ]
  %29 = icmp eq ptr %16, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %16, ptr noundef %28) #27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %30, %33
  %35 = phi ptr [ %28, %33 ], [ %16, %30 ]
  %36 = add nuw nsw i64 %17, 1
  %37 = load ptr, ptr %6, align 8, !tbaa !9
  %38 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %37) #29
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %14, label %41, !llvm.loop !245

41:                                               ; preds = %34
  %42 = icmp eq ptr %35, null
  br i1 %42, label %65, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %51 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %50, ptr noundef nonnull %35) #27
  %52 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %53 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef %49) #27
  %54 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %51, ptr noundef %53) #27
  %55 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %56 = tail call ptr @build_int_cst(ptr noundef %55, i64 noundef 1) #27
  %57 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %54, ptr noundef %56) #27
  %58 = load ptr, ptr %44, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %57, ptr noundef %62) #27
  %64 = tail call i64 @tree_low_cst(ptr noundef %63, i32 noundef 1) #27
  br label %65

65:                                               ; preds = %5, %41, %43, %10
  %66 = phi i64 [ %13, %10 ], [ %64, %43 ], [ 0, %41 ], [ 0, %5 ]
  ret i64 %66
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_pair_gc_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @alias_pairs, align 8, !tbaa !5
  %2 = tail call fastcc i32 @VEC_alias_pair_base_space(ptr noundef %1) #29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  store ptr %5, ptr @alias_pairs, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_alias_pair_base_quick_push(ptr noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8, !tbaa !181
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !181
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_pair_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !246
  %6 = load i32, ptr %0, align 8, !tbaa !181
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compare_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.addr_const, align 8
  %4 = alloca %struct.addr_const, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %278, %2
  %7 = phi ptr [ %1, %2 ], [ %282, %278 ]
  %8 = icmp eq ptr %7, null
  %9 = zext i1 %8 to i32
  br label %150

10:                                               ; preds = %2, %278
  %11 = phi ptr [ %282, %278 ], [ %1, %2 ]
  %12 = phi ptr [ %280, %278 ], [ %0, %2 ]
  %13 = icmp eq ptr %11, null
  br i1 %13, label %150, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %11, align 8
  %17 = xor i64 %16, %15
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %150

20:                                               ; preds = %14
  %21 = trunc i64 %15 to i16
  switch i16 %21, label %150 [
    i16 23, label %22
    i16 24, label %62
    i16 25, label %81
    i16 28, label %100
    i16 26, label %143
    i16 51, label %160
    i16 121, label %245
    i16 122, label %245
    i16 63, label %263
    i16 66, label %263
    i16 64, label %263
    i16 111, label %263
    i16 116, label %278
    i16 113, label %278
    i16 118, label %278
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %26
  %32 = and i32 %31, 1023
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %150

34:                                               ; preds = %22
  %35 = load i64, ptr %24, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 14
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #27
  %40 = load ptr, ptr %27, align 8, !tbaa !9
  br label %44

41:                                               ; preds = %34
  %42 = lshr i32 %26, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %40, %38 ], [ %28, %41 ]
  %46 = phi i32 [ %39, %38 ], [ %43, %41 ]
  %47 = load i64, ptr %45, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = tail call i32 @vector_type_mode(ptr noundef nonnull %45) #27
  br label %57

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  br label %57

57:                                               ; preds = %52, %50
  %58 = phi i32 [ %51, %50 ], [ %56, %52 ]
  %59 = icmp eq i32 %46, %58
  br i1 %59, label %60, label %150

60:                                               ; preds = %57
  %61 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %12, ptr noundef nonnull %11) #27
  br label %150

62:                                               ; preds = %20
  %63 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = xor i32 %70, %66
  %72 = and i32 %71, 1023
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %150

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.tree_real_cst, ptr %12, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !9
  %77 = getelementptr inbounds %struct.tree_real_cst, ptr %11, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !9
  %79 = tail call zeroext i8 @real_identical(ptr noundef %76, ptr noundef %78) #27
  %80 = zext i8 %79 to i32
  br label %150

81:                                               ; preds = %20
  %82 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  %84 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = xor i32 %89, %85
  %91 = and i32 %90, 1023
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %150

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.tree_fixed_cst, ptr %12, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !9
  %96 = getelementptr inbounds %struct.tree_fixed_cst, ptr %11, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !9
  %98 = tail call zeroext i8 @fixed_identical(ptr noundef %95, ptr noundef %97) #27
  %99 = zext i8 %98 to i32
  br label %150

100:                                              ; preds = %20
  %101 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !9
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 14
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = tail call i32 @vector_type_mode(ptr noundef nonnull %102) #27
  br label %113

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %108, %106
  %114 = phi i32 [ %107, %106 ], [ %112, %108 ]
  %115 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !9
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 14
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = tail call i32 @vector_type_mode(ptr noundef nonnull %116) #27
  br label %127

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.tree_type, ptr %116, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  br label %127

127:                                              ; preds = %122, %120
  %128 = phi i32 [ %121, %120 ], [ %126, %122 ]
  %129 = icmp eq i32 %114, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.tree_string, ptr %12, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !9
  %133 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !9
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tree_string, ptr %12, i64 0, i32 2
  %138 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  %139 = sext i32 %132 to i64
  %140 = tail call i32 @bcmp(ptr nonnull %137, ptr nonnull %138, i64 %139)
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  br label %150

143:                                              ; preds = %20
  %144 = getelementptr inbounds %struct.tree_complex, ptr %12, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !9
  %146 = getelementptr inbounds %struct.tree_complex, ptr %11, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !9
  %148 = tail call fastcc i32 @compare_constant(ptr noundef %145, ptr noundef %147) #29
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %263, %160, %200, %205, %209, %211, %143, %130, %136, %127, %81, %62, %57, %22, %261, %93, %74, %60, %6, %219, %240, %221, %235, %238, %20, %14, %10, %270, %152
  %151 = phi i32 [ %159, %152 ], [ %277, %270 ], [ %9, %6 ], [ %262, %261 ], [ %99, %93 ], [ %80, %74 ], [ %61, %60 ], [ 0, %22 ], [ 0, %57 ], [ 0, %62 ], [ 0, %81 ], [ 0, %127 ], [ 0, %130 ], [ %142, %136 ], [ 0, %143 ], [ 0, %160 ], [ 0, %200 ], [ 0, %205 ], [ 0, %209 ], [ 0, %211 ], [ 0, %263 ], [ 1, %219 ], [ 0, %238 ], [ 0, %235 ], [ 0, %221 ], [ 1, %240 ], [ 0, %20 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %151

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.tree_complex, ptr %12, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !9
  %155 = getelementptr inbounds %struct.tree_complex, ptr %11, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !9
  %157 = tail call fastcc i32 @compare_constant(ptr noundef %154, ptr noundef %156) #29
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  br label %150

160:                                              ; preds = %20
  %161 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !9
  %163 = load i64, ptr %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = and i32 %164, 65535
  %166 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  %168 = load i64, ptr %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %165, %170
  br i1 %171, label %172, label %150

172:                                              ; preds = %160
  %173 = icmp eq i32 %165, 15
  br i1 %173, label %174, label %209

174:                                              ; preds = %172
  %175 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %162) #27
  %176 = load ptr, ptr %161, align 8, !tbaa !9
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 14
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = tail call i32 @vector_type_mode(ptr noundef nonnull %176) #27
  br label %187

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  br label %187

187:                                              ; preds = %182, %180
  %188 = phi i32 [ %181, %180 ], [ %186, %182 ]
  %189 = load ptr, ptr %166, align 8, !tbaa !9
  %190 = load i64, ptr %189, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 14
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = tail call i32 @vector_type_mode(ptr noundef nonnull %189) #27
  br label %200

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.tree_type, ptr %189, i64 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  br label %200

200:                                              ; preds = %195, %193
  %201 = phi i32 [ %194, %193 ], [ %199, %195 ]
  %202 = icmp ne i32 %188, %201
  %203 = icmp eq i64 %175, -1
  %204 = select i1 %202, i1 true, i1 %203
  br i1 %204, label %150, label %205

205:                                              ; preds = %200
  %206 = load ptr, ptr %166, align 8, !tbaa !9
  %207 = tail call i64 @int_size_in_bytes(ptr noundef %206) #27
  %208 = icmp eq i64 %175, %207
  br i1 %208, label %211, label %150

209:                                              ; preds = %172
  %210 = icmp eq ptr %162, %167
  br i1 %210, label %211, label %150

211:                                              ; preds = %205, %209
  %212 = getelementptr inbounds %struct.tree_constructor, ptr %12, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !9
  %214 = getelementptr inbounds %struct.tree_constructor, ptr %11, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !9
  %216 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %213) #29
  %217 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %215) #29
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %150

219:                                              ; preds = %211
  %220 = icmp eq i32 %216, 0
  br i1 %220, label %150, label %221

221:                                              ; preds = %219, %240
  %222 = phi i64 [ %241, %240 ], [ 0, %219 ]
  %223 = trunc i64 %222 to i32
  %224 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %213, i32 noundef %223) #29
  %225 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %215, i32 noundef %223) #29
  %226 = getelementptr inbounds %struct.constructor_elt_d, ptr %224, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !98
  %228 = getelementptr inbounds %struct.constructor_elt_d, ptr %225, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !98
  %230 = tail call fastcc i32 @compare_constant(ptr noundef %227, ptr noundef %229) #29
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %150, label %232

232:                                              ; preds = %221
  %233 = load ptr, ptr %224, align 8, !tbaa !96
  %234 = load ptr, ptr %225, align 8, !tbaa !96
  br i1 %173, label %235, label %238

235:                                              ; preds = %232
  %236 = tail call fastcc i32 @compare_constant(ptr noundef %233, ptr noundef %234) #29
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %150, label %240

238:                                              ; preds = %232
  %239 = icmp eq ptr %233, %234
  br i1 %239, label %240, label %150

240:                                              ; preds = %238, %235
  %241 = add nuw nsw i64 %222, 1
  %242 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %213) #29
  %243 = zext i32 %242 to i64
  %244 = icmp ult i64 %241, %243
  br i1 %244, label %221, label %150, !llvm.loop !247

245:                                              ; preds = %20, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #28
  call fastcc void @decode_addr_const(ptr noundef nonnull %12, ptr noundef nonnull %3) #29
  call fastcc void @decode_addr_const(ptr noundef nonnull %11, ptr noundef nonnull %4) #29
  %246 = getelementptr inbounds %struct.addr_const, ptr %3, i64 0, i32 1
  %247 = load i64, ptr %246, align 8, !tbaa !126
  %248 = getelementptr inbounds %struct.addr_const, ptr %4, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !126
  %250 = icmp eq i64 %247, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %245
  %252 = load ptr, ptr %3, align 8, !tbaa !124
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !9
  %255 = load ptr, ptr %4, align 8, !tbaa !124
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !9
  %258 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %254, ptr noundef nonnull dereferenceable(1) %257) #29
  %259 = icmp eq i32 %258, 0
  %260 = zext i1 %259 to i32
  br label %261

261:                                              ; preds = %251, %245
  %262 = phi i32 [ 0, %245 ], [ %260, %251 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  br label %150

263:                                              ; preds = %20, %20, %20, %20
  %264 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !9
  %266 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !9
  %268 = tail call fastcc i32 @compare_constant(ptr noundef %265, ptr noundef %267) #29
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %150, label %270

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !9
  %273 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !9
  %275 = tail call fastcc i32 @compare_constant(ptr noundef %272, ptr noundef %274) #29
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i32
  br label %150

278:                                              ; preds = %20, %20, %20
  %279 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !9
  %281 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !9
  %283 = icmp eq ptr %280, null
  br i1 %283, label %6, label %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @fixed_identical(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @asm_output_aligned_bss(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr @bss_section, align 8, !tbaa !5
  tail call void @switch_to_section(ptr noundef %6) #29
  %7 = sdiv i32 %4, 8
  %8 = sext i32 %7 to i64
  %9 = tail call i32 @floor_log2(i64 noundef %8) #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @floor_log2(i64 noundef %8) #27
  %13 = shl nuw i32 1, %12
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %13) #29
  br label %15

15:                                               ; preds = %11, %5
  store ptr %1, ptr @last_assemble_variable_decl, align 8, !tbaa !5
  %16 = tail call i32 @fputs(ptr noundef nonnull @.str.61, ptr noundef %0) #29
  tail call void @assemble_name(ptr noundef %0, ptr noundef %2) #29
  %17 = tail call i32 @fputs(ptr noundef nonnull @.str.62, ptr noundef %0) #29
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.170) #29
  %19 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #29
  store i32 0, ptr @size_directive_output, align 4, !tbaa !19
  %20 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne ptr %1, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  store i32 1, ptr @size_directive_output, align 4, !tbaa !19
  %29 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = tail call i64 @int_size_in_bytes(ptr noundef %30) #27
  %32 = tail call i32 @fputs(ptr noundef nonnull @.str.65, ptr noundef %0) #29
  tail call void @assemble_name(ptr noundef %0, ptr noundef %2) #29
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.171, i64 noundef %31) #29
  br label %34

34:                                               ; preds = %15, %24, %28
  tail call void @assemble_name(ptr noundef %0, ptr noundef %2) #29
  %35 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %0) #29
  %36 = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %36) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @compute_reloc_for_rtx_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #22 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %19 [
    i16 45, label %6
    i16 44, label %13
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 2, i32 1
  %12 = load i32, ptr %1, align 4, !tbaa !19
  br label %15

13:                                               ; preds = %2
  %14 = load i32, ptr %1, align 4, !tbaa !19
  br label %15

15:                                               ; preds = %6, %13
  %16 = phi i32 [ 1, %13 ], [ %12, %6 ]
  %17 = phi i32 [ %14, %13 ], [ %11, %6 ]
  %18 = or i32 %17, %16
  store i32 %18, ptr %1, align 4, !tbaa !19
  br label %19

19:                                               ; preds = %15, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #27
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 8, !tbaa !205
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !205
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !248
  %6 = load i32, ptr %0, align 8, !tbaa !205
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = load i32, ptr %0, align 8, !tbaa !205
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !205
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_object_block(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @switch_to_section(ptr noundef %7) #29
  %8 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !111
  tail call void @assemble_align(i32 noundef %9) #29
  %10 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !203
  %12 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %2) #29, !range !83
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %18, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !249
  %16 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %2) #29, !range !83
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %26

18:                                               ; preds = %6, %18
  %19 = phi i32 [ %22, %18 ], [ 0, %6 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 36), align 8, !tbaa !250
  %21 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void %20(ptr noundef %21) #27
  %22 = add i32 %19, 1
  %23 = load ptr, ptr %10, align 8, !tbaa !203
  %24 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %2) #29, !range !83
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %14, label %18, !llvm.loop !251

26:                                               ; preds = %14, %60
  %27 = phi i64 [ %62, %60 ], [ 0, %14 ]
  %28 = phi i32 [ %63, %60 ], [ 0, %14 ]
  %29 = load ptr, ptr %2, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !9
  %32 = sub nsw i64 %31, %27
  tail call void @assemble_zeros(i64 noundef %32) #29
  %33 = load i64, ptr %30, align 8, !tbaa !9
  %34 = load i32, ptr %29, align 8
  %35 = and i32 %34, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  tail call fastcc void @output_constant_pool_1(ptr noundef %39, i32 noundef 1) #29
  %40 = getelementptr inbounds %struct.constant_descriptor_rtx, ptr %39, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !108
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = zext i8 %44 to i64
  br label %60

46:                                               ; preds = %26
  %47 = and i32 %34, 1073741824
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  br i1 %48, label %56, label %53

53:                                               ; preds = %46
  %54 = tail call fastcc i32 @get_constant_alignment(ptr noundef %50) #29
  tail call fastcc void @assemble_constant_contents(ptr noundef %50, ptr noundef %52, i32 noundef %54) #29
  %55 = tail call fastcc i64 @get_constant_size(ptr noundef %50) #29
  br label %60

56:                                               ; preds = %46
  tail call fastcc void @assemble_variable_contents(ptr noundef %50, ptr noundef %52, i8 noundef zeroext 0) #29
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = tail call i64 @tree_low_cst(ptr noundef %58, i32 noundef 1) #27
  br label %60

60:                                               ; preds = %37, %56, %53
  %61 = phi i64 [ %45, %37 ], [ %55, %53 ], [ %59, %56 ]
  %62 = add nsw i64 %61, %33
  %63 = add i32 %28, 1
  %64 = load ptr, ptr %3, align 8, !tbaa !249
  %65 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %64, i32 noundef %63, ptr noundef nonnull %2) #29, !range !83
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %26, !llvm.loop !252

67:                                               ; preds = %60, %14, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !205
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind }
attributes #29 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 448}
!11 = !{!"lang_hooks", !6, i64 0, !12, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !13, i64 240, !14, i64 248, !15, i64 256, !16, i64 272, !17, i64 432, !18, i64 560, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !7, i64 672}
!12 = !{!"long", !7, i64 0}
!13 = !{!"lang_hooks_for_tree_inlining", !6, i64 0}
!14 = !{!"lang_hooks_for_callgraph", !6, i64 0}
!15 = !{!"lang_hooks_for_tree_dump", !6, i64 0, !6, i64 8}
!16 = !{!"lang_hooks_for_decls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!17 = !{!"lang_hooks_for_types", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120}
!18 = !{!"lang_hooks_for_lto", !6, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !7, i64 0}
!21 = !{!22, !7, i64 2028}
!22 = !{!"gcc_target", !23, i64 0, !25, i64 368, !26, i64 664, !20, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !12, i64 1064, !12, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !27, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !12, i64 1464, !28, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !29, i64 1784, !30, i64 1792, !31, i64 1896, !32, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!23 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !24, i64 24, !24, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!24 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!25 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!26 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!27 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!28 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!29 = !{!"c", !6, i64 0}
!30 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!31 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!32 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!33 = !{!34, !20, i64 8}
!34 = !{!"tree_map", !35, i64 0, !20, i64 8, !6, i64 16}
!35 = !{!"tree_map_base", !6, i64 0}
!36 = !{!34, !6, i64 0}
!37 = !{!34, !6, i64 16}
!38 = !{!22, !7, i64 1960}
!39 = !{!11, !6, i64 432}
!40 = !{!22, !6, i64 1944}
!41 = !{!22, !6, i64 1904}
!42 = !{!43, !6, i64 240}
!43 = !{!"rtl_data", !44, i64 0, !45, i64 40, !46, i64 96, !47, i64 112, !49, i64 208, !50, i64 248, !20, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !12, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !20, i64 432, !20, i64 436, !20, i64 440, !20, i64 444, !20, i64 448, !20, i64 452, !6, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!44 = !{!"expr_status", !20, i64 0, !20, i64 4, !20, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!45 = !{!"emit_status", !20, i64 0, !20, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !6, i64 48}
!46 = !{!"varasm_status", !6, i64 0, !20, i64 8}
!47 = !{!"incoming_args", !20, i64 0, !20, i64 4, !20, i64 8, !6, i64 16, !48, i64 24, !6, i64 88}
!48 = !{!"ix86_args", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !20, i64 60}
!49 = !{!"function_subsections", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!50 = !{!"rtl_eh", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !7, i64 48}
!51 = !{!22, !6, i64 1136}
!52 = !{!22, !6, i64 968}
!53 = !{!22, !6, i64 232}
!54 = !{i64 0, i64 65}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !7, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = !{!61, !6, i64 0}
!61 = !{!"", !6, i64 0, !20, i64 8}
!62 = !{!61, !20, i64 8}
!63 = distinct !{!63, !58}
!64 = !{!22, !6, i64 1128}
!65 = distinct !{!65, !58}
!66 = !{i8 0, i8 2}
!67 = !{!22, !6, i64 1184}
!68 = !{!22, !6, i64 200}
!69 = !{!22, !6, i64 88}
!70 = distinct !{!70, !58}
!71 = !{!43, !6, i64 208}
!72 = !{!43, !6, i64 216}
!73 = !{!43, !6, i64 224}
!74 = !{!75, !6, i64 8}
!75 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !20, i64 104, !20, i64 108, !20, i64 112, !20, i64 116, !20, i64 120, !20, i64 124, !6, i64 128, !20, i64 136, !20, i64 137, !20, i64 138, !20, i64 138, !20, i64 138, !20, i64 138, !20, i64 138, !20, i64 138, !20, i64 138, !20, i64 139, !20, i64 139, !20, i64 139, !20, i64 139, !20, i64 139, !20, i64 139, !20, i64 139}
!76 = !{!77, !6, i64 0}
!77 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !20, i64 24, !20, i64 28, !20, i64 32, !6, i64 40, !20, i64 48, !7, i64 52, !7, i64 60, !20, i64 68, !20, i64 72}
!78 = !{!79, !6, i64 56}
!79 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !12, i64 72, !20, i64 80, !20, i64 84, !20, i64 88, !20, i64 92, !20, i64 96}
!80 = !{!79, !20, i64 96}
!81 = !{!82, !6, i64 112}
!82 = !{!"gcc_debug_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !20, i64 248}
!83 = !{i32 0, i32 2}
!84 = !{!22, !6, i64 312}
!85 = !{!43, !6, i64 96}
!86 = distinct !{!86, !58}
!87 = distinct !{!87, !58}
!88 = !{!22, !6, i64 104}
!89 = !{!22, !6, i64 152}
!90 = !{!43, !6, i64 232}
!91 = distinct !{!91, !58}
!92 = distinct !{!92, !58}
!93 = distinct !{!93, !58}
!94 = distinct !{!94, !58}
!95 = distinct !{!95, !58}
!96 = !{!97, !6, i64 0}
!97 = !{!"constructor_elt_d", !6, i64 0, !6, i64 8}
!98 = !{!97, !6, i64 8}
!99 = !{!100, !20, i64 0}
!100 = !{!"VEC_constructor_elt_base", !20, i64 0, !20, i64 4, !7, i64 8}
!101 = !{!22, !6, i64 1952}
!102 = !{i32 0, i32 4}
!103 = !{!22, !6, i64 216}
!104 = distinct !{!104, !58}
!105 = distinct !{!105, !58}
!106 = !{!107, !20, i64 48}
!107 = !{!"constant_descriptor_rtx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !12, i64 32, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56}
!108 = !{!107, !20, i64 44}
!109 = !{!110, !12, i64 16}
!110 = !{!"object_block", !6, i64 0, !20, i64 8, !12, i64 16, !6, i64 24, !6, i64 32}
!111 = !{!110, !20, i64 8}
!112 = distinct !{!112, !58}
!113 = !{!22, !6, i64 304}
!114 = !{!22, !6, i64 360}
!115 = !{!22, !6, i64 136}
!116 = !{!22, !6, i64 16}
!117 = !{!12, !12, i64 0}
!118 = distinct !{!118, !58}
!119 = !{!120, !6, i64 8}
!120 = !{!"constant_descriptor_tree", !6, i64 0, !6, i64 8, !20, i64 16}
!121 = !{!120, !20, i64 16}
!122 = !{!120, !6, i64 0}
!123 = distinct !{!123, !58}
!124 = !{!125, !6, i64 0}
!125 = !{!"addr_const", !6, i64 0, !12, i64 8}
!126 = !{!125, !12, i64 8}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = !{!43, !20, i64 104}
!130 = !{!131, !6, i64 16}
!131 = !{!"rtx_constant_pool", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24}
!132 = !{!131, !12, i64 24}
!133 = !{!22, !6, i64 1008}
!134 = !{!43, !7, i64 472}
!135 = !{!22, !6, i64 1056}
!136 = !{!107, !6, i64 24}
!137 = !{!107, !6, i64 8}
!138 = !{!107, !6, i64 0}
!139 = !{!107, !12, i64 32}
!140 = !{!107, !20, i64 40}
!141 = !{!107, !20, i64 52}
!142 = !{!107, !20, i64 56}
!143 = !{!131, !6, i64 8}
!144 = !{!22, !6, i64 224}
!145 = !{!107, !6, i64 16}
!146 = !{!110, !6, i64 0}
!147 = distinct !{!147, !58}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = !{!22, !6, i64 1192}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, !58}
!155 = !{!156, !6, i64 0}
!156 = !{!"", !6, i64 0, !12, i64 8, !20, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !12, i64 48, !7, i64 56, !20, i64 60, !20, i64 64, !6, i64 72, !6, i64 80}
!157 = !{!156, !12, i64 8}
!158 = !{!156, !20, i64 16}
!159 = !{!156, !12, i64 48}
!160 = !{!156, !7, i64 56}
!161 = !{!162, !20, i64 4}
!162 = !{!"", !20, i64 0, !20, i64 4}
!163 = !{!156, !20, i64 60}
!164 = !{!156, !6, i64 24}
!165 = !{!156, !20, i64 64}
!166 = !{!156, !6, i64 40}
!167 = !{!156, !6, i64 32}
!168 = !{!156, !6, i64 72}
!169 = !{!156, !6, i64 80}
!170 = distinct !{!170, !58}
!171 = distinct !{!171, !58}
!172 = distinct !{!172, !58}
!173 = distinct !{!173, !58}
!174 = distinct !{!174, !58}
!175 = distinct !{!175, !58}
!176 = distinct !{!176, !58}
!177 = !{!178, !6, i64 0}
!178 = !{!"alias_pair", !6, i64 0, !6, i64 8}
!179 = !{!178, !6, i64 8}
!180 = distinct !{!180, !58}
!181 = !{!182, !20, i64 0}
!182 = !{!"VEC_alias_pair_base", !20, i64 0, !20, i64 4, !7, i64 8}
!183 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!184 = distinct !{!184, !58}
!185 = distinct !{!185, !58}
!186 = !{!22, !6, i64 192}
!187 = !{!22, !6, i64 1112}
!188 = !{i32 0, i32 18}
!189 = !{!22, !6, i64 208}
!190 = !{!22, !6, i64 1912}
!191 = !{!22, !6, i64 1936}
!192 = !{!22, !6, i64 1104}
!193 = !{!22, !7, i64 2029}
!194 = !{!22, !6, i64 1920}
!195 = !{i32 0, i32 7}
!196 = distinct !{!196, !58}
!197 = distinct !{!197, !58}
!198 = !{!22, !6, i64 96}
!199 = !{!22, !7, i64 2031}
!200 = !{!22, !7, i64 2032}
!201 = !{!22, !12, i64 1072}
!202 = !{!22, !12, i64 1064}
!203 = !{!110, !6, i64 32}
!204 = distinct !{!204, !58}
!205 = !{!206, !20, i64 0}
!206 = !{!"VEC_rtx_base", !20, i64 0, !20, i64 4, !7, i64 8}
!207 = distinct !{!207, !58}
!208 = distinct !{!208, !58}
!209 = distinct !{!209, !58}
!210 = distinct !{!210, !58}
!211 = distinct !{!211, !58}
!212 = distinct !{!212, !58}
!213 = distinct !{!213, !58}
!214 = distinct !{!214, !58}
!215 = distinct !{!215, !58}
!216 = distinct !{!216, !58}
!217 = distinct !{!217, !58}
!218 = distinct !{!218, !58}
!219 = !{!22, !6, i64 328}
!220 = !{!131, !6, i64 0}
!221 = distinct !{!221, !58}
!222 = distinct !{!222, !58}
!223 = !{!224, !6, i64 24}
!224 = !{!"htab", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !20, i64 56, !20, i64 60, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !20, i64 104}
!225 = !{!224, !12, i64 32}
!226 = distinct !{!226, !58}
!227 = distinct !{!227, !58}
!228 = distinct !{!228, !58}
!229 = distinct !{!229, !58}
!230 = distinct !{!230, !58}
!231 = distinct !{!231, !58}
!232 = distinct !{!232, !58}
!233 = !{!234, !20, i64 0}
!234 = !{!"rtvec_def", !20, i64 0, !7, i64 8}
!235 = distinct !{!235, !58}
!236 = distinct !{!236, !58}
!237 = distinct !{!237, !58}
!238 = distinct !{!238, !58}
!239 = distinct !{!239, !58}
!240 = distinct !{!240, !58}
!241 = !{!162, !20, i64 0}
!242 = distinct !{!242, !58}
!243 = distinct !{!243, !58}
!244 = distinct !{!244, !58}
!245 = distinct !{!245, !58}
!246 = !{!182, !20, i64 4}
!247 = distinct !{!247, !58}
!248 = !{!206, !20, i64 4}
!249 = !{!110, !6, i64 24}
!250 = !{!22, !6, i64 336}
!251 = distinct !{!251, !58}
!252 = distinct !{!252, !58}
