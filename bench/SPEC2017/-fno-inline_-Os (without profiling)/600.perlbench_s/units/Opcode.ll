; ModuleID = 'Opcode.c'
source_filename = "Opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%union._xivu = type { i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"Opcode.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Opcode::_safe_pkg_prep\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Opcode::_safe_call_sv\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Opcode::verify_opset\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Opcode::invert_opset\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Opcode::opset_to_ops\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Opcode::opset\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Opcode::deny\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"$;@\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Opcode::deny_only\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Opcode::permit\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Opcode::permit_only\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Opcode::opdesc\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Opcode::define_optag\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Opcode::empty_opset\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Opcode::full_opset\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Opcode::opmask_add\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Opcode::opcodes\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Opcode::opmask\00", align 1
@PL_maxo = external local_unnamed_addr global i32, align 4
@my_cxt.0 = internal unnamed_addr global ptr null, align 8
@my_cxt.1 = internal unnamed_addr global ptr null, align 8
@my_cxt.2 = internal unnamed_addr global i64 0, align 8
@PL_unitcheckav = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"Package\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [22 x i8] c"Package, mask, codesv\00", align 1
@PL_endav = external global ptr, align 8
@PL_defstash = external global ptr, align 8
@PL_curstash = external global ptr, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_incgv = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_op_mask = external global ptr, align 8
@.str.34 = private unnamed_addr constant [38 x i8] c"Can't add to uninitialised PL_op_mask\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"wrong size\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Invalid opset: %s\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"opset, fatal = 0\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"opset\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"opset, desc = 0\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"(opset)\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Unknown operator tag \22%s\22\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Can't negate operators here (\22%s\22)\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.45 = private unnamed_addr constant [27 x i8] c"Unknown operator name \22%s\22\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"Unknown operator prefix \22%s\22\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"panic: opcode \22%s\22 value %d is invalid\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"panic: invalid bitspec for \22%s\22 (type %u)\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"safe, ...\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Not a Safe object\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"panic: opcode %d (%s) out of range\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"optagsv, mask\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Opcode tag \22%s\22 already defined\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"opcodes in list context not yet implemented\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c":none\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c":all\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Opcode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %14, i32 noundef %7, ptr noundef nonnull @.str.1) #7
  %16 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Opcode__safe_pkg_prep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Opcode__safe_call_sv, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Opcode_verify_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %19 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Opcode_invert_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %20 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Opcode_opset_to_ops, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Opcode_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #7
  %22 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 3, ptr %24, align 8, !tbaa !14
  %25 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 2, ptr %27, align 8, !tbaa !14
  %28 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 5
  store i32 1, ptr %30, align 8, !tbaa !14
  %31 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 5
  store i32 0, ptr %33, align 8, !tbaa !14
  %34 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Opcode_opdesc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #7
  %35 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_Opcode_define_optag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %36 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Opcode_empty_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7
  %37 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_Opcode_full_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7
  %38 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_Opcode_opmask_add, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %39 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Opcode_opcodes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7
  %40 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_Opcode_opmask, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #7
  %41 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %42 = add nsw i32 %41, 7
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  store i64 %44, ptr @my_cxt.2, align 8, !tbaa !15
  tail call fastcc void @op_names_init() #8
  %45 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %1
  %48 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !10
  tail call void @Perl_call_list(i32 noundef %48, ptr noundef nonnull %45) #7
  br label %49

49:                                               ; preds = %1, %47
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %51 = sext i32 %7 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr @PL_sv_yes, ptr %52, align 8, !tbaa !6
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %54 = getelementptr inbounds ptr, ptr %53, i64 %51
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode__safe_pkg_prep(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #7
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call void @Perl_push_scope() #7
  %21 = tail call ptr @Perl_gv_stashsv(ptr noundef %20, i32 noundef 4) #7
  %22 = getelementptr inbounds %struct.hv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !18
  %24 = and i32 %23, 33554432
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.hv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = load ptr, ptr %21, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.xpvhv, ptr %29, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !21
  %32 = getelementptr ptr, ptr %28, i64 %31
  %33 = getelementptr ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %32, i64 36
  %38 = load i32, ptr %37, align 4, !tbaa !23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %34, align 8, !tbaa !14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %36, %40
  %44 = phi ptr [ %41, %40 ], [ %34, %36 ]
  %45 = getelementptr inbounds %struct.hek, ptr %44, i64 0, i32 2
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(5) @.str.28) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %16, %26, %40, %43
  tail call void @Perl_hv_name_set(ptr noundef nonnull %21, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 0) #7
  %49 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %50 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %21, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 36, ptr noundef %49, i32 noundef 0) #7
  %51 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %52 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %51) #8
  br label %53

53:                                               ; preds = %48, %43
  %54 = shl i64 %11, 29
  %55 = ashr i64 %54, 32
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds ptr, ptr %2, i64 %56
  tail call void @Perl_pop_scope() #7
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode__safe_call_sv(ptr noundef %0) #0 {
  %2 = alloca [496 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.30) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %7, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  %23 = getelementptr ptr, ptr %18, i64 %8
  %24 = getelementptr ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %23, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr ptr, ptr %23, i64 3
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %2) #10
  tail call void @Perl_push_scope() #7
  call fastcc void @opmask_addlocal(ptr noundef %27, ptr noundef nonnull %2) #8
  call void @Perl_save_aptr(ptr noundef nonnull @PL_endav) #7
  %30 = call ptr @Perl_newSV_type(i32 noundef 11) #7
  %31 = call ptr @Perl_sv_2mortal(ptr noundef %30) #7
  store ptr %31, ptr @PL_endav, align 8, !tbaa !6
  call void @Perl_save_hptr(ptr noundef nonnull @PL_defstash) #7
  %32 = call ptr @Perl_gv_stashsv(ptr noundef %25, i32 noundef 4) #7
  store ptr %32, ptr @PL_defstash, align 8, !tbaa !6
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_curstash) #7
  %33 = load ptr, ptr @PL_defstash, align 8, !tbaa !6
  %34 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %33) #8
  store ptr %33, ptr @PL_curstash, align 8, !tbaa !6
  %35 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.31, i64 noundef 6, i32 noundef 4, i32 noundef 12) #7
  %36 = getelementptr inbounds %struct.gv, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  call void @Perl_sv_free(ptr noundef %39) #7
  %40 = load ptr, ptr @PL_defstash, align 8, !tbaa !6
  %41 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %40) #8
  %42 = load ptr, ptr %36, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 5
  store ptr %40, ptr %43, align 8, !tbaa !25
  %44 = load ptr, ptr @PL_incgv, align 8, !tbaa !6
  %45 = call ptr @Perl_save_hash(ptr noundef %44) #7
  %46 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.32, i64 noundef 3, i32 noundef 1, i32 noundef 12) #7
  %47 = call ptr @Perl_gv_add_by_type(ptr noundef %46, i32 noundef 12) #7
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %51) #8
  %53 = load ptr, ptr @PL_incgv, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.gv, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 5
  store ptr %51, ptr %56, align 8, !tbaa !25
  %57 = load i32, ptr @PL_sub_generation, align 4, !tbaa !10
  %58 = add i32 %57, 1
  store i32 %58, ptr @PL_sub_generation, align 4, !tbaa !10
  %59 = load ptr, ptr @PL_stashcache, align 8, !tbaa !6
  call void @Perl_hv_clear(ptr noundef %59) #7
  %60 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %61 = getelementptr inbounds i32, ptr %60, i64 1
  store ptr %61, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %62 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %17
  %65 = call ptr @Perl_markstack_grow() #7
  br label %66

66:                                               ; preds = %17, %64
  %67 = phi ptr [ %65, %64 ], [ %61, %17 ]
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %69 = ptrtoint ptr %22 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = lshr exact i64 %71, 3
  %73 = trunc i64 %72 to i32
  store i32 %73, ptr %67, align 4, !tbaa !10
  %74 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.op, ptr %74, i64 0, i32 5
  %76 = load i8, ptr %75, align 2, !tbaa !27
  %77 = and i8 %76, 3
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %66
  %80 = icmp eq i8 %77, 3
  %81 = select i1 %80, i32 3, i32 2
  br label %84

82:                                               ; preds = %66
  %83 = call i32 @Perl_dowantarray() #7
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = or i32 %85, 40
  %87 = call i32 @Perl_call_sv(ptr noundef %29, i32 noundef %86) #7
  call void @Perl_sv_free(ptr noundef %45) #7
  %88 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @Perl_pop_scope() #7
  store ptr %88, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 496, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_verify_opset(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %6, %1 ], [ %18, %17 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !29
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !30
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  br label %37

35:                                               ; preds = %19
  %36 = tail call ptr @Perl_sv_newmortal() #7
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = icmp slt i32 %14, 2
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %42 = getelementptr ptr, ptr %41, i64 %8
  %43 = getelementptr ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !31
  %47 = and i32 %46, 2097408
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load ptr, ptr %44, align 8, !tbaa !33
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !14
  br label %55

53:                                               ; preds = %40
  %54 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %44, i32 noundef 2) #7
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i64 [ %52, %49 ], [ %54, %53 ]
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %37, %55
  %59 = phi i32 [ %57, %55 ], [ 0, %37 ]
  %60 = tail call fastcc i32 @verify_opset(ptr noundef %23, i32 noundef %59) #8, !range !34
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %62 = zext nneg i32 %60 to i64
  tail call void @Perl_sv_setiv(ptr noundef %38, i64 noundef %62) #7
  %63 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !31
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = tail call i32 @Perl_mg_set(ptr noundef nonnull %38) #7
  br label %69

69:                                               ; preds = %58, %67
  %70 = getelementptr inbounds ptr, ptr %61, i64 %21
  store ptr %38, ptr %70, align 8, !tbaa !6
  %71 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %21
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_invert_opset(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %23 = tail call fastcc ptr @new_opset(ptr noundef %21) #8
  %24 = tail call ptr @Perl_sv_2mortal(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17, %28
  %29 = phi i64 [ %30, %28 ], [ %22, %17 ]
  %30 = add i64 %29, -1
  %31 = getelementptr inbounds i8, ptr %26, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %33 = xor i8 %32, -1
  store i8 %33, ptr %31, align 1, !tbaa !14
  %34 = icmp eq i64 %30, 0
  br i1 %34, label %35, label %28, !llvm.loop !35

35:                                               ; preds = %28, %17
  %36 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %37 = and i32 %36, 7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = shl nuw nsw i32 255, %37
  %41 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %42 = getelementptr i8, ptr %26, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -1
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %45 = trunc i32 %40 to i8
  %46 = xor i8 %45, -1
  %47 = and i8 %44, %46
  store i8 %47, ptr %43, align 1, !tbaa !14
  br label %48

48:                                               ; preds = %39, %35
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %50 = getelementptr inbounds ptr, ptr %49, i64 %19
  store ptr %24, ptr %50, align 8, !tbaa !6
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %52 = getelementptr inbounds ptr, ptr %51, i64 %19
  store ptr %52, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opset_to_ops(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.41) #7
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %7, %1 ], [ %18, %17 ]
  %21 = shl i64 %12, 29
  %22 = ashr i64 %21, 32
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds ptr, ptr %3, i64 %23
  %25 = getelementptr ptr, ptr %20, i64 %8
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp slt i32 %14, 2
  br i1 %28, label %46, label %29

29:                                               ; preds = %19
  %30 = getelementptr ptr, ptr %25, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !31
  %34 = and i32 %33, 2097408
  %35 = icmp eq i32 %34, 256
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load ptr, ptr %31, align 8, !tbaa !33
  %38 = getelementptr inbounds %struct.xpviv, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !14
  br label %42

40:                                               ; preds = %29
  %41 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %31, i32 noundef 2) #7
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  %44 = and i64 %43, 4294967295
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %19, %42
  %47 = phi i1 [ %45, %42 ], [ true, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %48 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !31
  %50 = and i32 %49, 2098176
  %51 = icmp eq i32 %50, 1024
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load ptr, ptr %27, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.xpv, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !37
  store i64 %55, ptr %2, align 8, !tbaa !39
  %56 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  br label %60

58:                                               ; preds = %46
  %59 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %27, ptr noundef nonnull %2, i32 noundef 2) #7
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi ptr [ %57, %52 ], [ %59, %58 ]
  br i1 %47, label %64, label %62

62:                                               ; preds = %60
  %63 = call ptr @Perl_get_op_descs() #7
  br label %66

64:                                               ; preds = %60
  %65 = call ptr @Perl_get_op_names() #7
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %68 = call fastcc i32 @verify_opset(ptr noundef nonnull %27, i32 noundef 1) #8, !range !34
  %69 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %66
  %72 = load i32, ptr @PL_maxo, align 4
  br label %73

73:                                               ; preds = %71, %123
  %74 = phi i64 [ %69, %71 ], [ %124, %123 ]
  %75 = phi i32 [ %72, %71 ], [ %125, %123 ]
  %76 = phi i32 [ %72, %71 ], [ %126, %123 ]
  %77 = phi i64 [ 0, %71 ], [ %129, %123 ]
  %78 = phi ptr [ %24, %71 ], [ %128, %123 ]
  %79 = phi i32 [ 0, %71 ], [ %127, %123 ]
  %80 = icmp slt i32 %79, %76
  br i1 %80, label %81, label %123

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, ptr %61, i64 %77
  %83 = load i8, ptr %82, align 1, !tbaa !14
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 65535
  %86 = sext i32 %79 to i64
  br label %87

87:                                               ; preds = %81, %111
  %88 = phi i32 [ %75, %81 ], [ %112, %111 ]
  %89 = phi i64 [ %86, %81 ], [ %115, %111 ]
  %90 = phi ptr [ %78, %81 ], [ %113, %111 ]
  %91 = phi i32 [ 0, %81 ], [ %114, %111 ]
  %92 = shl nuw nsw i32 1, %91
  %93 = and i32 %85, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %87
  %96 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %90 to i64
  %99 = sub i64 %97, %98
  %100 = icmp slt i64 %99, 8
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call ptr @Perl_stack_grow(ptr noundef %90, ptr noundef %90, i64 noundef 1) #7
  br label %103

103:                                              ; preds = %95, %101
  %104 = phi ptr [ %102, %101 ], [ %90, %95 ]
  %105 = getelementptr inbounds ptr, ptr %67, i64 %89
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #9
  %108 = call ptr @Perl_newSVpvn_flags(ptr noundef %106, i64 noundef %107, i32 noundef 524288) #7
  %109 = getelementptr inbounds ptr, ptr %104, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !6
  %110 = load i32, ptr @PL_maxo, align 4
  br label %111

111:                                              ; preds = %87, %103
  %112 = phi i32 [ %110, %103 ], [ %88, %87 ]
  %113 = phi ptr [ %109, %103 ], [ %90, %87 ]
  %114 = add nuw nsw i32 %91, 1
  %115 = add nsw i64 %89, 1
  %116 = icmp ult i32 %91, 7
  %117 = sext i32 %112 to i64
  %118 = icmp slt i64 %115, %117
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %87, label %120, !llvm.loop !40

120:                                              ; preds = %111
  %121 = trunc i64 %115 to i32
  %122 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  br label %123

123:                                              ; preds = %120, %73
  %124 = phi i64 [ %74, %73 ], [ %122, %120 ]
  %125 = phi i32 [ %75, %73 ], [ %112, %120 ]
  %126 = phi i32 [ %76, %73 ], [ %112, %120 ]
  %127 = phi i32 [ %79, %73 ], [ %121, %120 ]
  %128 = phi ptr [ %78, %73 ], [ %113, %120 ]
  %129 = add nuw nsw i64 %77, 1
  %130 = icmp sgt i64 %124, %129
  br i1 %130, label %73, label %131, !llvm.loop !41

131:                                              ; preds = %123, %66
  %132 = phi ptr [ %24, %66 ], [ %128, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  store ptr %132, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opset(ptr nocapture readnone %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr i64 %13, 3
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %16 = tail call fastcc ptr @new_opset(ptr noundef null) #8
  %17 = tail call ptr @Perl_sv_2mortal(ptr noundef %16) #7
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = icmp sgt i32 %15, 0
  %21 = sext i32 %8 to i64
  br i1 %20, label %22, label %68

22:                                               ; preds = %1
  %23 = and i64 %14, 4294967295
  br label %24

24:                                               ; preds = %22, %62
  %25 = phi i64 [ 0, %22 ], [ %66, %62 ]
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %27 = add nsw i64 %25, %21
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = call fastcc i32 @verify_opset(ptr noundef %29, i32 noundef 0) #8, !range !34
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %33 = getelementptr inbounds ptr, ptr %32, i64 %27
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  br i1 %31, label %35, label %62

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !31
  %38 = and i32 %37, 2098176
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %34, align 8, !tbaa !33
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !37
  store i64 %43, ptr %2, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  br label %49

46:                                               ; preds = %35
  %47 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %34, ptr noundef nonnull %2, i32 noundef 2) #7
  %48 = load i64, ptr %2, align 8, !tbaa !39
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i64 [ %43, %40 ], [ %48, %46 ]
  %51 = phi ptr [ %45, %40 ], [ %47, %46 ]
  %52 = load i8, ptr %51, align 1, !tbaa !14
  %53 = icmp eq i8 %52, 33
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  %56 = add i64 %50, -1
  store i64 %56, ptr %2, align 8, !tbaa !39
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i64 [ %56, %54 ], [ %50, %49 ]
  %59 = phi i32 [ 0, %54 ], [ 1, %49 ]
  %60 = phi ptr [ %55, %54 ], [ %51, %49 ]
  %61 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %60, i64 noundef %58) #8
  br label %62

62:                                               ; preds = %24, %57
  %63 = phi i32 [ %59, %57 ], [ 1, %24 ]
  %64 = phi ptr [ %61, %57 ], [ %34, %24 ]
  %65 = phi ptr [ %60, %57 ], [ @.str.42, %24 ]
  call fastcc void @set_opset_bits(ptr noundef %19, ptr noundef %64, i32 noundef %63, ptr noundef nonnull %65) #8
  %66 = add nuw nsw i64 %25, 1
  %67 = icmp eq i64 %66, %23
  br i1 %67, label %68, label %24, !llvm.loop !42

68:                                               ; preds = %62, %1
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %70 = getelementptr inbounds ptr, ptr %69, i64 %21
  store ptr %17, ptr %70, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %71 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %72 = getelementptr inbounds ptr, ptr %71, i64 %21
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_permit_only(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr %0, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !14
  %19 = icmp slt i32 %15, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #7
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %7, %1 ]
  %24 = sext i32 %8 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !31
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !31
  %36 = and i32 %35, 1048831
  %37 = icmp eq i32 %36, 1048588
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #7
  %39 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  br label %41

41:                                               ; preds = %31, %38
  %42 = phi ptr [ %33, %31 ], [ %40, %38 ]
  %43 = tail call ptr @Perl_hv_common_key_len(ptr noundef %42, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 48, ptr noundef null, i32 noundef 0) #7
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = and i32 %18, -3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = icmp ult i32 %18, 2
  %49 = load ptr, ptr @my_cxt.1, align 8
  %50 = select i1 %48, ptr %49, ptr null
  %51 = tail call fastcc ptr @new_opset(ptr noundef %50) #8
  %52 = tail call ptr @Perl_sv_2mortal(ptr noundef %51) #7
  tail call void @Perl_sv_setsv_flags(ptr noundef %44, ptr noundef %52, i32 noundef 2) #7
  br label %55

53:                                               ; preds = %41
  %54 = tail call fastcc i32 @verify_opset(ptr noundef %44, i32 noundef 1) #8, !range !34
  br label %55

55:                                               ; preds = %53, %47
  %56 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = icmp sgt i32 %15, 1
  br i1 %58, label %59, label %109

59:                                               ; preds = %55
  %60 = icmp ugt i32 %18, 1
  %61 = zext i1 %60 to i32
  %62 = xor i1 %60, true
  %63 = zext i1 %62 to i32
  %64 = and i64 %14, 4294967295
  br label %65

65:                                               ; preds = %59, %103
  %66 = phi i64 [ 1, %59 ], [ %107, %103 ]
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %68 = add nsw i64 %66, %24
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = call fastcc i32 @verify_opset(ptr noundef %70, i32 noundef 0) #8, !range !34
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %74 = getelementptr inbounds ptr, ptr %73, i64 %68
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  br i1 %72, label %76, label %103

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !31
  %79 = and i32 %78, 2098176
  %80 = icmp eq i32 %79, 1024
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load ptr, ptr %75, align 8, !tbaa !33
  %83 = getelementptr inbounds %struct.xpv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !37
  store i64 %84, ptr %2, align 8, !tbaa !39
  %85 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  br label %90

87:                                               ; preds = %76
  %88 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %75, ptr noundef nonnull %2, i32 noundef 2) #7
  %89 = load i64, ptr %2, align 8, !tbaa !39
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi i64 [ %84, %81 ], [ %89, %87 ]
  %92 = phi ptr [ %86, %81 ], [ %88, %87 ]
  %93 = load i8, ptr %92, align 1, !tbaa !14
  %94 = icmp eq i8 %93, 33
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds i8, ptr %92, i64 1
  %97 = add i64 %91, -1
  store i64 %97, ptr %2, align 8, !tbaa !39
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i64 [ %97, %95 ], [ %91, %90 ]
  %100 = phi ptr [ %96, %95 ], [ %92, %90 ]
  %101 = phi i32 [ %63, %95 ], [ %61, %90 ]
  %102 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %100, i64 noundef %99) #8
  br label %103

103:                                              ; preds = %65, %98
  %104 = phi ptr [ %102, %98 ], [ %75, %65 ]
  %105 = phi ptr [ %100, %98 ], [ @.str.42, %65 ]
  %106 = phi i32 [ %101, %98 ], [ %61, %65 ]
  call fastcc void @set_opset_bits(ptr noundef %57, ptr noundef %104, i32 noundef %106, ptr noundef nonnull %105) #8
  %107 = add nuw nsw i64 %66, 1
  %108 = icmp eq i64 %107, %64
  br i1 %108, label %109, label %65, !llvm.loop !43

109:                                              ; preds = %103, %55
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %24
  store ptr @PL_sv_yes, ptr %111, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %112 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %113 = getelementptr inbounds ptr, ptr %112, i64 %24
  store ptr %113, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opdesc(ptr nocapture readnone %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = sext i32 %6 to i64
  %9 = getelementptr ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = shl i64 %12, 29
  %16 = ashr i64 %15, 32
  %17 = sub nsw i64 0, %16
  %18 = getelementptr inbounds ptr, ptr %3, i64 %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %19 = tail call ptr @Perl_get_op_descs() #7
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %21 = getelementptr ptr, ptr %20, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = shl nsw i64 %16, 3
  %24 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %22, i64 noundef %23, i32 noundef 524288) #7
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = icmp sgt i32 %14, 0
  br i1 %27, label %28, label %178

28:                                               ; preds = %1
  %29 = and i64 %13, 4294967295
  br label %30

30:                                               ; preds = %28, %174
  %31 = phi i64 [ 0, %28 ], [ %176, %174 ]
  %32 = phi ptr [ %18, %28 ], [ %175, %174 ]
  %33 = getelementptr inbounds ptr, ptr %26, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !31
  %37 = and i32 %36, 2098176
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !37
  store i64 %42, ptr %2, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  br label %48

45:                                               ; preds = %30
  %46 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %34, ptr noundef nonnull %2, i32 noundef 2) #7
  %47 = load i64, ptr %2, align 8, !tbaa !39
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i64 [ %42, %39 ], [ %47, %45 ]
  %50 = phi ptr [ %44, %39 ], [ %46, %45 ]
  %51 = call fastcc ptr @get_op_bitspec(ptr noundef %50, i64 noundef %49) #8
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !31
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %48
  %57 = and i32 %53, 2097408
  %58 = icmp eq i32 %57, 256
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load ptr, ptr %51, align 8, !tbaa !33
  %61 = getelementptr inbounds %struct.xpviv, ptr %60, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !14
  br label %65

63:                                               ; preds = %56
  %64 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %51, i32 noundef 2) #7
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %62, %59 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  %68 = icmp sgt i32 %67, -1
  %69 = load i32, ptr @PL_maxo, align 4
  %70 = icmp sgt i32 %69, %67
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, i32 noundef %67, ptr noundef %50) #7
  br label %73

73:                                               ; preds = %65, %72
  %74 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %32 to i64
  %77 = sub i64 %75, %76
  %78 = icmp slt i64 %77, 8
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call ptr @Perl_stack_grow(ptr noundef %32, ptr noundef %32, i64 noundef 1) #7
  br label %81

81:                                               ; preds = %73, %79
  %82 = phi ptr [ %80, %79 ], [ %32, %73 ]
  %83 = shl i64 %66, 32
  %84 = ashr exact i64 %83, 32
  %85 = getelementptr inbounds ptr, ptr %19, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %86) #9
  %88 = call ptr @Perl_newSVpvn_flags(ptr noundef %86, i64 noundef %87, i32 noundef 524288) #7
  %89 = getelementptr inbounds ptr, ptr %82, i64 1
  store ptr %88, ptr %89, align 8, !tbaa !6
  br label %174

90:                                               ; preds = %48
  %91 = and i32 %53, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %172, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %51, align 8, !tbaa !33
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !37
  %97 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %172

99:                                               ; preds = %93
  %100 = and i32 %53, 2098176
  %101 = icmp eq i32 %100, 1024
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  br label %108

105:                                              ; preds = %99
  %106 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %51, ptr noundef null, i32 noundef 34) #7
  %107 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i64 [ %96, %102 ], [ %107, %105 ]
  %110 = phi ptr [ %104, %102 ], [ %106, %105 ]
  %111 = icmp sgt i64 %109, 0
  br i1 %111, label %112, label %174

112:                                              ; preds = %108
  %113 = load i32, ptr @PL_maxo, align 4
  br label %114

114:                                              ; preds = %112, %164
  %115 = phi i64 [ %109, %112 ], [ %165, %164 ]
  %116 = phi i32 [ %113, %112 ], [ %166, %164 ]
  %117 = phi i32 [ %113, %112 ], [ %167, %164 ]
  %118 = phi i64 [ 0, %112 ], [ %170, %164 ]
  %119 = phi ptr [ %32, %112 ], [ %169, %164 ]
  %120 = phi i32 [ 0, %112 ], [ %168, %164 ]
  %121 = icmp slt i32 %120, %117
  br i1 %121, label %122, label %164

122:                                              ; preds = %114
  %123 = getelementptr inbounds i8, ptr %110, i64 %118
  %124 = load i8, ptr %123, align 1, !tbaa !14
  %125 = sext i8 %124 to i32
  %126 = and i32 %125, 65535
  %127 = sext i32 %120 to i64
  br label %128

128:                                              ; preds = %122, %152
  %129 = phi i32 [ %116, %122 ], [ %153, %152 ]
  %130 = phi i64 [ %127, %122 ], [ %156, %152 ]
  %131 = phi ptr [ %119, %122 ], [ %154, %152 ]
  %132 = phi i32 [ 0, %122 ], [ %155, %152 ]
  %133 = shl nuw nsw i32 1, %132
  %134 = and i32 %126, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %138 = ptrtoint ptr %137 to i64
  %139 = ptrtoint ptr %131 to i64
  %140 = sub i64 %138, %139
  %141 = icmp slt i64 %140, 8
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call ptr @Perl_stack_grow(ptr noundef %131, ptr noundef %131, i64 noundef 1) #7
  br label %144

144:                                              ; preds = %136, %142
  %145 = phi ptr [ %143, %142 ], [ %131, %136 ]
  %146 = getelementptr inbounds ptr, ptr %19, i64 %130
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %147) #9
  %149 = call ptr @Perl_newSVpvn_flags(ptr noundef %147, i64 noundef %148, i32 noundef 524288) #7
  %150 = getelementptr inbounds ptr, ptr %145, i64 1
  store ptr %149, ptr %150, align 8, !tbaa !6
  %151 = load i32, ptr @PL_maxo, align 4
  br label %152

152:                                              ; preds = %128, %144
  %153 = phi i32 [ %151, %144 ], [ %129, %128 ]
  %154 = phi ptr [ %150, %144 ], [ %131, %128 ]
  %155 = add nuw nsw i32 %132, 1
  %156 = add nsw i64 %130, 1
  %157 = icmp ult i32 %132, 7
  %158 = sext i32 %153 to i64
  %159 = icmp slt i64 %156, %158
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %128, label %161, !llvm.loop !44

161:                                              ; preds = %152
  %162 = trunc i64 %156 to i32
  %163 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  br label %164

164:                                              ; preds = %161, %114
  %165 = phi i64 [ %115, %114 ], [ %163, %161 ]
  %166 = phi i32 [ %116, %114 ], [ %153, %161 ]
  %167 = phi i32 [ %117, %114 ], [ %153, %161 ]
  %168 = phi i32 [ %120, %114 ], [ %162, %161 ]
  %169 = phi ptr [ %119, %114 ], [ %154, %161 ]
  %170 = add nuw nsw i64 %118, 1
  %171 = icmp sgt i64 %165, %170
  br i1 %171, label %114, label %174, !llvm.loop !45

172:                                              ; preds = %93, %90
  %173 = and i32 %53, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %50, i32 noundef %173) #7
  br label %174

174:                                              ; preds = %164, %108, %172, %81
  %175 = phi ptr [ %89, %81 ], [ %32, %172 ], [ %32, %108 ], [ %169, %164 ]
  %176 = add nuw nsw i64 %31, 1
  %177 = icmp eq i64 %176, %29
  br i1 %177, label %178, label %30, !llvm.loop !46

178:                                              ; preds = %174, %1
  %179 = phi ptr [ %18, %1 ], [ %175, %174 ]
  store ptr %179, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_define_optag(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.57) #7
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %19, i64 %9
  %24 = getelementptr ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %26 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !31
  %28 = and i32 %27, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load ptr, ptr %22, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !37
  store i64 %33, ptr %2, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  br label %39

36:                                               ; preds = %18
  %37 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #7
  %38 = load i64, ptr %2, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i64 [ %33, %30 ], [ %38, %36 ]
  %41 = phi ptr [ %35, %30 ], [ %37, %36 ]
  call fastcc void @put_op_bitspec(ptr noundef %41, i64 noundef %40, ptr noundef %25) #8
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  store ptr @PL_sv_yes, ptr %43, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %45 = getelementptr inbounds ptr, ptr %44, i64 %20
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_empty_opset(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #7
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = tail call fastcc ptr @new_opset(ptr noundef null) #8
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #7
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %18, ptr %21, align 8, !tbaa !6
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr %23, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_full_opset(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #7
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @my_cxt.1, align 8, !tbaa !47
  %18 = tail call fastcc ptr @new_opset(ptr noundef %17) #8
  %19 = tail call ptr @Perl_sv_2mortal(ptr noundef %18) #7
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !6
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opmask_add(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @Perl_safesyscalloc(i64 noundef %26, i64 noundef 1) #7
  store ptr %27, ptr @PL_op_mask, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %24, %17
  tail call fastcc void @opmask_add(ptr noundef %21) #8
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %30 = getelementptr inbounds ptr, ptr %29, i64 %19
  %31 = getelementptr inbounds ptr, ptr %30, i64 -1
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opcodes(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #7
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 2, !tbaa !27
  %23 = and i8 %22, 3
  switch i8 %23, label %28 [
    i8 0, label %24
    i8 3, label %27
  ]

24:                                               ; preds = %15
  %25 = tail call i32 @Perl_dowantarray() #7
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %15, %24
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #7
  br label %43

28:                                               ; preds = %15, %24
  %29 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %19 to i64
  %32 = sub i64 %30, %31
  %33 = icmp slt i64 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #7
  br label %36

36:                                               ; preds = %28, %34
  %37 = phi ptr [ %35, %34 ], [ %19, %28 ]
  %38 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %39 = sext i32 %38 to i64
  %40 = tail call ptr @Perl_newSViv(i64 noundef %39) #7
  %41 = tail call ptr @Perl_sv_2mortal(ptr noundef %40) #7
  %42 = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !6
  br label %43

43:                                               ; preds = %36, %27
  %44 = phi ptr [ %19, %27 ], [ %42, %36 ]
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Opcode_opmask(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #7
  br label %16

16:                                               ; preds = %15, %1
  %17 = tail call fastcc ptr @new_opset(ptr noundef null) #8
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #7
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %18, ptr %21, align 8, !tbaa !6
  %22 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br i1 %23, label %58, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds ptr, ptr %24, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25, %50
  %33 = phi i32 [ %51, %50 ], [ %30, %25 ]
  %34 = phi ptr [ %52, %50 ], [ %22, %25 ]
  %35 = phi i64 [ %53, %50 ], [ 0, %25 ]
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %32
  %40 = trunc i64 %35 to i8
  %41 = and i8 %40, 7
  %42 = shl nuw i8 1, %41
  %43 = lshr i64 %35, 3
  %44 = and i64 %43, 536870911
  %45 = getelementptr inbounds i8, ptr %29, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !14
  %47 = or i8 %46, %42
  store i8 %47, ptr %45, align 1, !tbaa !14
  %48 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  %49 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  br label %50

50:                                               ; preds = %32, %39
  %51 = phi i32 [ %33, %32 ], [ %49, %39 ]
  %52 = phi ptr [ %34, %32 ], [ %48, %39 ]
  %53 = add nuw nsw i64 %35, 1
  %54 = sext i32 %51 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %32, label %56, !llvm.loop !48

56:                                               ; preds = %50
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  br label %58

58:                                               ; preds = %56, %25, %16
  %59 = phi ptr [ %57, %56 ], [ %24, %25 ], [ %24, %16 ]
  %60 = getelementptr inbounds ptr, ptr %59, i64 %20
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_names_init() unnamed_addr #0 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  store ptr %2, ptr @my_cxt.0, align 8, !tbaa !49
  %3 = tail call ptr @Perl_get_op_names() #7
  %4 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %0, %6
  %7 = phi i64 [ %18, %6 ], [ 0, %0 ]
  %8 = tail call ptr @Perl_newSViv(i64 noundef %7) #7
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = or i32 %10, 134217728
  store i32 %11, ptr %9, align 4, !tbaa !31
  %12 = load ptr, ptr @my_cxt.0, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %3, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #9
  %16 = trunc i64 %15 to i32
  %17 = tail call ptr @Perl_hv_common_key_len(ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef 36, ptr noundef %8, i32 noundef 0) #7
  %18 = add nuw nsw i64 %7, 1
  %19 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %6, label %22, !llvm.loop !50

22:                                               ; preds = %6, %0
  %23 = tail call fastcc ptr @new_opset(ptr noundef null) #8
  %24 = tail call ptr @Perl_sv_2mortal(ptr noundef %23) #7
  tail call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.60, i64 noundef 5, ptr noundef %24) #8
  %25 = tail call fastcc ptr @new_opset(ptr noundef null) #8
  store ptr %25, ptr @my_cxt.1, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !31
  %28 = and i32 %27, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load ptr, ptr %25, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !37
  store i64 %33, ptr %1, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  br label %40

36:                                               ; preds = %22
  %37 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %25, ptr noundef nonnull %1, i32 noundef 2) #7
  %38 = load i64, ptr %1, align 8, !tbaa !39
  %39 = load ptr, ptr @my_cxt.1, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi ptr [ %25, %30 ], [ %39, %36 ]
  %42 = phi i64 [ %33, %30 ], [ %38, %36 ]
  %43 = phi ptr [ %35, %30 ], [ %37, %36 ]
  %44 = add i64 %42, -1
  call void @llvm.memset.p0.i64(ptr align 1 %43, i8 -1, i64 %44, i1 false)
  %45 = load i32, ptr @PL_maxo, align 4
  %46 = and i32 %45, 7
  %47 = icmp eq i32 %46, 0
  %48 = shl nuw nsw i32 255, %46
  %49 = trunc i32 %48 to i8
  %50 = xor i8 %49, -1
  %51 = select i1 %47, i8 -1, i8 %50
  %52 = load i64, ptr %1, align 8, !tbaa !39
  %53 = add i64 %52, -1
  %54 = getelementptr inbounds i8, ptr %43, i64 %53
  store i8 %51, ptr %54, align 1, !tbaa !14
  call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.61, i64 noundef 4, ptr noundef %41) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret void
}

; Function Attrs: optsize
declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @opmask_addlocal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_op_mask) #7
  store ptr %1, ptr @PL_op_mask, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  %5 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %6 = sext i32 %5 to i64
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %3, i64 %6, i1 false)
  br label %9

8:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %7
  tail call fastcc void @opmask_add(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @Perl_save_aptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_hptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_dowantarray() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @opmask_add(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = tail call fastcc i32 @verify_opset(ptr noundef %0, i32 noundef 1) #8, !range !34
  %4 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34) #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !31
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !37
  store i64 %15, ptr %2, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  br label %20

18:                                               ; preds = %7
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2) #7
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20, %56
  %25 = phi i64 [ %58, %56 ], [ 0, %20 ]
  %26 = phi i32 [ %57, %56 ], [ 0, %20 ]
  %27 = getelementptr inbounds i8, ptr %21, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr @PL_maxo, align 4
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = sext i32 %26 to i64
  br label %37

35:                                               ; preds = %24
  %36 = add nsw i32 %26, 8
  br label %56

37:                                               ; preds = %33, %37
  %38 = phi i64 [ %34, %33 ], [ %43, %37 ]
  %39 = phi i32 [ 0, %33 ], [ %40, %37 ]
  %40 = add nuw nsw i32 %39, 1
  %41 = shl nuw nsw i32 1, %39
  %42 = load ptr, ptr @PL_op_mask, align 8, !tbaa !6
  %43 = add nsw i64 %38, 1
  %44 = getelementptr inbounds i8, ptr %42, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !14
  %46 = trunc i32 %41 to i8
  %47 = and i8 %28, %46
  %48 = or i8 %45, %47
  store i8 %48, ptr %44, align 1, !tbaa !14
  %49 = icmp ult i32 %39, 7
  %50 = load i32, ptr @PL_maxo, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %43, %51
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %37, label %54, !llvm.loop !52

54:                                               ; preds = %37
  %55 = trunc i64 %43 to i32
  br label %56

56:                                               ; preds = %54, %30, %35
  %57 = phi i32 [ %36, %35 ], [ %26, %30 ], [ %55, %54 ]
  %58 = add nuw nsw i64 %25, 1
  %59 = icmp eq i64 %58, %22
  br i1 %59, label %60, label %24, !llvm.loop !53

60:                                               ; preds = %56, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @verify_opset(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !31
  %5 = and i32 %4, 65280
  %6 = icmp ne i32 %5, 0
  %7 = and i32 %4, 255
  %8 = icmp eq i32 %7, 8
  %9 = or i1 %6, %8
  %10 = and i32 %4, 16777471
  %11 = icmp eq i32 %10, 16777226
  %12 = or i1 %11, %9
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = and i32 %4, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !37
  %20 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %21 = icmp ne i64 %19, %20
  %22 = select i1 %21, ptr @.str.37, ptr null
  br label %23

23:                                               ; preds = %16, %13, %2
  %24 = phi i1 [ true, %2 ], [ true, %13 ], [ %21, %16 ]
  %25 = phi ptr [ @.str.35, %2 ], [ @.str.36, %13 ], [ %22, %16 ]
  %26 = icmp ne i32 %1, 0
  %27 = and i1 %26, %24
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef %25) #7
  br label %29

29:                                               ; preds = %28, %23
  %30 = xor i1 %24, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_opset(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @verify_opset(ptr noundef nonnull %0, i32 noundef 1) #8, !range !34
  %5 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #7
  br label %19

6:                                                ; preds = %1
  %7 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %8 = tail call ptr @Perl_newSV(i64 noundef %7) #7
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %12 = add nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 %12, i1 false)
  %13 = load ptr, ptr %8, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  store i64 %11, ptr %14, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = and i32 %16, 1610547455
  %18 = or disjoint i32 %17, 17408
  store i32 %18, ptr %15, align 4, !tbaa !31
  br label %19

19:                                               ; preds = %6, %3
  %20 = phi ptr [ %5, %3 ], [ %8, %6 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_op_descs() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_op_names() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_op_bitspec(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !49
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr @Perl_hv_common_key_len(ptr noundef %3, ptr noundef %0, i32 noundef %4, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %39, label %19

19:                                               ; preds = %2, %7
  %20 = load i8, ptr %0, align 1, !tbaa !14
  %21 = icmp eq i8 %20, 58
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef nonnull %0) #7
  %23 = load i8, ptr %0, align 1, !tbaa !14
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i8 [ %23, %22 ], [ %20, %19 ]
  %26 = icmp eq i8 %25, 33
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #7
  %28 = load i8, ptr %0, align 1, !tbaa !14
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i8 [ %28, %27 ], [ %25, %24 ]
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !10
  %34 = and i32 %33, 16388
  %35 = icmp eq i32 %34, 16388
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45, ptr noundef nonnull %0) #7
  br label %37

37:                                               ; preds = %36, %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, ptr noundef nonnull %0) #7
  %38 = load ptr, ptr %5, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %7, %37
  %40 = phi ptr [ %8, %7 ], [ %38, %37 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_opset_bits(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !31
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 2097408
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !14
  br label %19

17:                                               ; preds = %10
  %18 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #7
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %16, %13 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  %22 = ashr i32 %21, 3
  %23 = and i32 %21, 7
  %24 = load i32, ptr @PL_maxo, align 4, !tbaa !10
  %25 = icmp sle i32 %24, %21
  %26 = icmp slt i32 %21, 0
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %3, i32 noundef %21) #7
  br label %29

29:                                               ; preds = %28, %19
  %30 = icmp eq i32 %2, 0
  %31 = shl nuw nsw i32 1, %23
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !14
  %35 = trunc i32 %31 to i8
  br i1 %30, label %38, label %36

36:                                               ; preds = %29
  %37 = or i8 %34, %35
  store i8 %37, ptr %33, align 1, !tbaa !14
  br label %88

38:                                               ; preds = %29
  %39 = xor i8 %35, -1
  %40 = and i8 %34, %39
  store i8 %40, ptr %33, align 1, !tbaa !14
  br label %88

41:                                               ; preds = %4
  %42 = and i32 %7, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %86, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %1, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !37
  %48 = load i64, ptr @my_cxt.2, align 8, !tbaa !15
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %51 = and i32 %7, 2098176
  %52 = icmp eq i32 %51, 1024
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  store i64 %47, ptr %5, align 8, !tbaa !39
  %54 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  br label %58

56:                                               ; preds = %50
  %57 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #7
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi ptr [ %55, %53 ], [ %57, %56 ]
  %60 = icmp eq i32 %2, 0
  %61 = load i64, ptr %5, align 8, !tbaa !39
  %62 = add i64 %61, -1
  store i64 %62, ptr %5, align 8, !tbaa !39
  %63 = icmp eq i64 %61, 0
  br i1 %60, label %65, label %64

64:                                               ; preds = %58
  br i1 %63, label %85, label %66

65:                                               ; preds = %58
  br i1 %63, label %85, label %75

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %73, %66 ], [ %62, %64 ]
  %68 = getelementptr inbounds i8, ptr %59, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !14
  %70 = getelementptr inbounds i8, ptr %0, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !14
  %72 = or i8 %71, %69
  store i8 %72, ptr %70, align 1, !tbaa !14
  %73 = add i64 %67, -1
  store i64 %73, ptr %5, align 8, !tbaa !39
  %74 = icmp eq i64 %67, 0
  br i1 %74, label %85, label %66, !llvm.loop !54

75:                                               ; preds = %65, %75
  %76 = phi i64 [ %83, %75 ], [ %62, %65 ]
  %77 = getelementptr inbounds i8, ptr %59, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !14
  %79 = xor i8 %78, -1
  %80 = getelementptr inbounds i8, ptr %0, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !14
  %82 = and i8 %81, %79
  store i8 %82, ptr %80, align 1, !tbaa !14
  %83 = add i64 %76, -1
  store i64 %83, ptr %5, align 8, !tbaa !39
  %84 = icmp eq i64 %76, 0
  br i1 %84, label %85, label %75, !llvm.loop !55

85:                                               ; preds = %66, %75, %64, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %88

86:                                               ; preds = %44, %41
  %87 = and i32 %7, 255
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %3, i32 noundef %87) #7
  br label %88

88:                                               ; preds = %36, %38, %85, %86
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_op_bitspec(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @verify_opset(ptr noundef %2, i32 noundef 1) #8, !range !34
  %5 = load ptr, ptr @my_cxt.0, align 8, !tbaa !49
  %6 = trunc i64 %1 to i32
  %7 = tail call ptr @Perl_hv_common_key_len(ptr noundef %5, ptr noundef %0, i32 noundef %6, i32 noundef 48, ptr noundef null, i32 noundef 0) #7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58, ptr noundef %0) #7
  %20 = load ptr, ptr %7, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %3, %19
  %22 = phi ptr [ %8, %3 ], [ %20, %19 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %22, ptr noundef %2, i32 noundef 2) #7
  %23 = load ptr, ptr %7, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !31
  %26 = or i32 %25, 134217728
  store i32 %26, ptr %24, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"cv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"", !7, i64 0, !7, i64 8, !17, i64 16, !11, i64 24}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !11, i64 12}
!19 = !{!"hv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!20 = !{!19, !7, i64 0}
!21 = !{!22, !17, i64 24}
!22 = !{!"xpvhv", !7, i64 0, !8, i64 8, !17, i64 16, !17, i64 24}
!23 = !{!24, !11, i64 28}
!24 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!25 = !{!26, !7, i64 32}
!26 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64, !11, i64 67, !7, i64 72}
!27 = !{!28, !8, i64 34}
!28 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !8, i64 34, !8, i64 35}
!29 = !{!28, !8, i64 35}
!30 = !{!28, !17, i64 24}
!31 = !{!32, !11, i64 12}
!32 = !{!"sv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!33 = !{!32, !7, i64 0}
!34 = !{i32 0, i32 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !17, i64 16}
!38 = !{!"xpv", !7, i64 0, !8, i64 8, !17, i64 16, !8, i64 24}
!39 = !{!17, !17, i64 0}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = !{!16, !7, i64 8}
!48 = distinct !{!48, !36}
!49 = !{!16, !7, i64 0}
!50 = distinct !{!50, !36}
!51 = !{!32, !11, i64 8}
!52 = distinct !{!52, !36}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
