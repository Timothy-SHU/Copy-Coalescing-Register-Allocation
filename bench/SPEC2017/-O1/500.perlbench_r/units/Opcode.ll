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
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Opcode(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %8, ptr noundef nonnull @.str.1) #6
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Opcode__safe_pkg_prep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Opcode__safe_call_sv, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %19 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Opcode_verify_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %20 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Opcode_invert_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Opcode_opset_to_ops, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %22 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Opcode_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %23 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #6
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 5
  store i32 3, ptr %25, align 8, !tbaa !43
  %26 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #6
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 5
  store i32 2, ptr %28, align 8, !tbaa !43
  %29 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #6
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 5
  store i32 1, ptr %31, align 8, !tbaa !43
  %32 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Opcode_permit_only, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 0) #6
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 5
  store i32 0, ptr %34, align 8, !tbaa !43
  %35 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Opcode_opdesc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %36 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_Opcode_define_optag, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  %37 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Opcode_empty_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  %38 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_Opcode_full_opset, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  %39 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_Opcode_opmask_add, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %40 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Opcode_opcodes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  %41 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_Opcode_opmask, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  %42 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %43 = add nsw i32 %42, 7
  %44 = sdiv i32 %43, 8
  %45 = sext i32 %44 to i64
  store i64 %45, ptr @my_cxt.2, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %46 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  store ptr %46, ptr @my_cxt.0, align 8, !tbaa !47
  %47 = tail call ptr @Perl_get_op_names() #6
  %48 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %1, %50
  %51 = phi i64 [ %62, %50 ], [ 0, %1 ]
  %52 = tail call ptr @Perl_newSViv(i64 noundef %51) #6
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !48
  %55 = or i32 %54, 134217728
  store i32 %55, ptr %53, align 4, !tbaa !48
  %56 = load ptr, ptr @my_cxt.0, align 8, !tbaa !47
  %57 = getelementptr inbounds ptr, ptr %47, i64 %51
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %58) #7
  %60 = trunc i64 %59 to i32
  %61 = tail call ptr @Perl_hv_common_key_len(ptr noundef %56, ptr noundef %58, i32 noundef %60, i32 noundef 36, ptr noundef %52, i32 noundef 0) #6
  %62 = add nuw nsw i64 %51, 1
  %63 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %50, label %66, !llvm.loop !50

66:                                               ; preds = %50, %1
  %67 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %68 = tail call ptr @Perl_newSV(i64 noundef %67) #6
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !43
  %71 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %72 = add nsw i64 %71, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %70, i8 0, i64 %72, i1 false)
  %73 = load ptr, ptr %68, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  store i64 %71, ptr %74, align 8, !tbaa !54
  %75 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !48
  %77 = and i32 %76, 1610547455
  %78 = or disjoint i32 %77, 17408
  store i32 %78, ptr %75, align 4, !tbaa !48
  %79 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %68) #6
  tail call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.60, i64 noundef 5, ptr noundef %79)
  %80 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %81 = tail call ptr @Perl_newSV(i64 noundef %80) #6
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %85 = add nsw i64 %84, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %83, i8 0, i64 %85, i1 false)
  %86 = load ptr, ptr %81, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 2
  store i64 %84, ptr %87, align 8, !tbaa !54
  %88 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !48
  %90 = and i32 %89, 1610547455
  %91 = or disjoint i32 %90, 17408
  store i32 %91, ptr %88, align 4, !tbaa !48
  store ptr %81, ptr @my_cxt.1, align 8, !tbaa !56
  %92 = and i32 %91, 2098176
  %93 = icmp eq i32 %92, 1024
  br i1 %93, label %94, label %96

94:                                               ; preds = %66
  store i64 %84, ptr %2, align 8, !tbaa !57
  %95 = load ptr, ptr %82, align 8, !tbaa !43
  br label %98

96:                                               ; preds = %66
  %97 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %81, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %98

98:                                               ; preds = %94, %96
  %99 = phi ptr [ %95, %94 ], [ %97, %96 ]
  %100 = load i64, ptr %2, align 8, !tbaa !57
  %101 = add i64 %100, -1
  call void @llvm.memset.p0.i64(ptr align 1 %99, i8 -1, i64 %101, i1 false)
  %102 = load i32, ptr @PL_maxo, align 4
  %103 = and i32 %102, 7
  %104 = icmp eq i32 %103, 0
  %105 = shl nuw nsw i32 255, %103
  %106 = trunc i32 %105 to i8
  %107 = xor i8 %106, -1
  %108 = select i1 %104, i8 -1, i8 %107
  %109 = load i64, ptr %2, align 8, !tbaa !57
  %110 = add i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %99, i64 %110
  store i8 %108, ptr %111, align 1, !tbaa !43
  %112 = load ptr, ptr @my_cxt.1, align 8, !tbaa !56
  call fastcc void @put_op_bitspec(ptr noundef nonnull @.str.61, i64 noundef 4, ptr noundef %112)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %113 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %98
  %116 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !39
  call void @Perl_call_list(i32 noundef %116, ptr noundef nonnull %113) #6
  br label %117

117:                                              ; preds = %98, %115
  %118 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %119 = sext i32 %8 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  store ptr @PL_sv_yes, ptr %120, align 8, !tbaa !35
  %121 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %122 = getelementptr inbounds ptr, ptr %121, i64 %119
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode__safe_pkg_prep(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  tail call void @Perl_push_scope() #6
  %20 = tail call ptr @Perl_gv_stashsv(ptr noundef %19, i32 noundef 4) #6
  %21 = getelementptr inbounds %struct.hv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = and i32 %22, 33554432
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.hv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = load ptr, ptr %20, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.xpvhv, ptr %28, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !61
  %31 = getelementptr ptr, ptr %27, i64 %30
  %32 = getelementptr ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %25
  %36 = getelementptr i8, ptr %31, i64 36
  %37 = load i32, ptr %36, align 4, !tbaa !63
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %33, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %32, %35 ], [ %33, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.hek, ptr %44, i64 0, i32 2
  br label %46

46:                                               ; preds = %15, %25, %39, %42
  %47 = phi ptr [ %45, %42 ], [ null, %39 ], [ null, %25 ], [ null, %15 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(5) @.str.28) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49, %46
  tail call void @Perl_hv_name_set(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 0) #6
  %53 = load ptr, ptr @PL_defgv, align 8, !tbaa !35
  %54 = tail call ptr @Perl_hv_common_key_len(ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 36, ptr noundef %53, i32 noundef 0) #6
  %55 = load ptr, ptr @PL_defgv, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !65
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !65
  br label %61

61:                                               ; preds = %49, %57, %52
  %62 = shl i64 %11, 29
  %63 = ashr i64 %62, 32
  %64 = sub nsw i64 0, %63
  %65 = getelementptr inbounds ptr, ptr %2, i64 %64
  tail call void @Perl_pop_scope() #6
  store ptr %65, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode__safe_call_sv(ptr noundef %0) #0 !prof !34 {
  %2 = alloca [496 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.30) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %22 = getelementptr ptr, ptr %21, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr ptr, ptr %22, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr ptr, ptr %22, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %2) #6
  tail call void @Perl_push_scope() #6
  %29 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_op_mask) #6
  store ptr %2, ptr @PL_op_mask, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %32 = sext i32 %31 to i64
  br i1 %30, label %34, label %33

33:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %29, i64 %32, i1 false)
  br label %35

34:                                               ; preds = %16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %32, i1 false)
  br label %35

35:                                               ; preds = %33, %34
  call fastcc void @opmask_add(ptr noundef %26)
  call void @Perl_save_aptr(ptr noundef nonnull @PL_endav) #6
  %36 = call ptr @Perl_newSV_type(i32 noundef 11) #6
  %37 = call ptr @Perl_sv_2mortal(ptr noundef %36) #6
  store ptr %37, ptr @PL_endav, align 8, !tbaa !35
  call void @Perl_save_hptr(ptr noundef nonnull @PL_defstash) #6
  %38 = call ptr @Perl_gv_stashsv(ptr noundef %24, i32 noundef 4) #6
  store ptr %38, ptr @PL_defstash, align 8, !tbaa !35
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_curstash) #6
  %39 = load ptr, ptr @PL_defstash, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !65
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !65
  br label %45

45:                                               ; preds = %35, %41
  store ptr %39, ptr @PL_curstash, align 8, !tbaa !35
  %46 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.31, i64 noundef 6, i32 noundef 4, i32 noundef 12) #6
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  call void @Perl_sv_free(ptr noundef %50) #6
  %51 = load ptr, ptr @PL_defstash, align 8, !tbaa !35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !65
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !65
  br label %57

57:                                               ; preds = %45, %53
  %58 = load ptr, ptr %47, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 5
  store ptr %51, ptr %59, align 8, !tbaa !66
  %60 = load ptr, ptr @PL_incgv, align 8, !tbaa !35
  %61 = call ptr @Perl_save_hash(ptr noundef %60) #6
  %62 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.32, i64 noundef 3, i32 noundef 1, i32 noundef 12) #6
  %63 = call ptr @Perl_gv_add_by_type(ptr noundef %62, i32 noundef 12) #6
  %64 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.gp, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !66
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !65
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !65
  br label %73

73:                                               ; preds = %57, %69
  %74 = load ptr, ptr @PL_incgv, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.gv, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 5
  store ptr %67, ptr %77, align 8, !tbaa !66
  %78 = load i32, ptr @PL_sub_generation, align 4, !tbaa !39
  %79 = add i32 %78, 1
  store i32 %79, ptr @PL_sub_generation, align 4, !tbaa !39
  %80 = load ptr, ptr @PL_stashcache, align 8, !tbaa !35
  call void @Perl_hv_clear(ptr noundef %80) #6
  %81 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  store ptr %82, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %83 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = call ptr @Perl_markstack_grow() #6
  br label %87

87:                                               ; preds = %73, %85
  %88 = phi ptr [ %86, %85 ], [ %82, %73 ]
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %90 = ptrtoint ptr %20 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = lshr exact i64 %92, 3
  %94 = trunc i64 %93 to i32
  store i32 %94, ptr %88, align 4, !tbaa !39
  %95 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %96 = getelementptr inbounds %struct.op, ptr %95, i64 0, i32 5
  %97 = load i8, ptr %96, align 2, !tbaa !68
  %98 = and i8 %97, 3
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = icmp eq i8 %98, 3
  %102 = select i1 %101, i32 3, i32 2
  br label %105

103:                                              ; preds = %87
  %104 = call i32 @Perl_dowantarray() #6
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi i32 [ %102, %100 ], [ %104, %103 ]
  %107 = or i32 %106, 40
  %108 = call i32 @Perl_call_sv(ptr noundef %28, i32 noundef %107) #6
  call void @Perl_sv_free(ptr noundef %61) #6
  %109 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @Perl_pop_scope() #6
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 496, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_verify_opset(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #6
  br label %18

18:                                               ; preds = %1, %17
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 6
  %25 = load i8, ptr %24, align 1, !tbaa !70
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !71
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  br label %36

34:                                               ; preds = %18
  %35 = tail call ptr @Perl_sv_newmortal() #6
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %38 = icmp slt i32 %14, 2
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %41 = getelementptr ptr, ptr %40, i64 %8
  %42 = getelementptr ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = and i32 %45, 2097408
  %47 = icmp eq i32 %46, 256
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load ptr, ptr %43, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !43
  br label %54

52:                                               ; preds = %39
  %53 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %43, i32 noundef 2) #6
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %36, %54
  %58 = phi i32 [ %56, %54 ], [ 0, %36 ]
  %59 = tail call fastcc i32 @verify_opset(ptr noundef %22, i32 noundef %58), !range !72
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %61 = zext nneg i32 %59 to i64
  tail call void @Perl_sv_setiv(ptr noundef %37, i64 noundef %61) #6
  %62 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !48
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = tail call i32 @Perl_mg_set(ptr noundef %37) #6
  br label %68

68:                                               ; preds = %57, %66
  %69 = getelementptr inbounds ptr, ptr %60, i64 %20
  store ptr %37, ptr %69, align 8, !tbaa !35
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %71 = getelementptr inbounds ptr, ptr %70, i64 %20
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_invert_opset(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %22 = tail call fastcc ptr @new_opset(ptr noundef %20)
  %23 = tail call ptr @Perl_sv_2mortal(ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16, %27
  %28 = phi i64 [ %29, %27 ], [ %21, %16 ]
  %29 = add i64 %28, -1
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = xor i8 %31, -1
  store i8 %32, ptr %30, align 1, !tbaa !43
  %33 = icmp eq i64 %29, 0
  br i1 %33, label %34, label %27, !llvm.loop !73

34:                                               ; preds = %27, %16
  %35 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = shl nuw nsw i32 255, %36
  %40 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %41 = getelementptr i8, ptr %25, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !43
  %44 = trunc i32 %39 to i8
  %45 = xor i8 %44, -1
  %46 = and i8 %43, %45
  store i8 %46, ptr %42, align 1, !tbaa !43
  br label %47

47:                                               ; preds = %38, %34
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 %18
  store ptr %23, ptr %49, align 8, !tbaa !35
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 %18
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opset_to_ops(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.41) #6
  br label %18

18:                                               ; preds = %1, %17
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %24 = getelementptr ptr, ptr %23, i64 %8
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp slt i32 %14, 2
  br i1 %27, label %45, label %28

28:                                               ; preds = %18
  %29 = getelementptr ptr, ptr %24, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !48
  %33 = and i32 %32, 2097408
  %34 = icmp eq i32 %33, 256
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %30, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.xpviv, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !43
  br label %41

39:                                               ; preds = %28
  %40 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %30, i32 noundef 2) #6
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i64 [ %38, %35 ], [ %40, %39 ]
  %43 = and i64 %42, 4294967295
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %18, %41
  %46 = phi i1 [ %44, %41 ], [ true, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %47 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !48
  %49 = and i32 %48, 2098176
  %50 = icmp eq i32 %49, 1024
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load ptr, ptr %26, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !54
  store i64 %54, ptr %2, align 8, !tbaa !57
  %55 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  br label %59

57:                                               ; preds = %45
  %58 = call ptr @Perl_sv_2pv_flags(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi ptr [ %56, %51 ], [ %58, %57 ]
  br i1 %46, label %63, label %61

61:                                               ; preds = %59
  %62 = call ptr @Perl_get_op_descs() #6
  br label %65

63:                                               ; preds = %59
  %64 = call ptr @Perl_get_op_names() #6
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %62, %61 ], [ %64, %63 ]
  %67 = call fastcc i32 @verify_opset(ptr noundef %26, i32 noundef 1), !range !72
  %68 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %65, %115
  %71 = phi i64 [ %118, %115 ], [ 0, %65 ]
  %72 = phi ptr [ %117, %115 ], [ %22, %65 ]
  %73 = phi i32 [ %116, %115 ], [ 0, %65 ]
  %74 = load i32, ptr @PL_maxo, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %70
  %77 = getelementptr inbounds i8, ptr %60, i64 %71
  %78 = load i8, ptr %77, align 1, !tbaa !43
  %79 = sext i8 %78 to i32
  %80 = and i32 %79, 65535
  %81 = sext i32 %73 to i64
  br label %82

82:                                               ; preds = %76, %104
  %83 = phi i64 [ %81, %76 ], [ %107, %104 ]
  %84 = phi ptr [ %72, %76 ], [ %105, %104 ]
  %85 = phi i32 [ 0, %76 ], [ %106, %104 ]
  %86 = shl nuw nsw i32 1, %85
  %87 = and i32 %80, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %82
  %90 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %84 to i64
  %93 = sub i64 %91, %92
  %94 = icmp slt i64 %93, 8
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call ptr @Perl_stack_grow(ptr noundef %84, ptr noundef %84, i64 noundef 1) #6
  br label %97

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %96, %95 ], [ %84, %89 ]
  %99 = getelementptr inbounds ptr, ptr %66, i64 %83
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #7
  %102 = call ptr @Perl_newSVpvn_flags(ptr noundef %100, i64 noundef %101, i32 noundef 524288) #6
  %103 = getelementptr inbounds ptr, ptr %98, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %82, %97
  %105 = phi ptr [ %103, %97 ], [ %84, %82 ]
  %106 = add nuw nsw i32 %85, 1
  %107 = add nsw i64 %83, 1
  %108 = icmp ult i32 %85, 7
  %109 = load i32, ptr @PL_maxo, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %107, %110
  %112 = select i1 %108, i1 %111, i1 false
  br i1 %112, label %82, label %113, !llvm.loop !74

113:                                              ; preds = %104
  %114 = trunc i64 %107 to i32
  br label %115

115:                                              ; preds = %113, %70
  %116 = phi i32 [ %73, %70 ], [ %114, %113 ]
  %117 = phi ptr [ %72, %70 ], [ %105, %113 ]
  %118 = add nuw nsw i64 %71, 1
  %119 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %120 = icmp sgt i64 %119, %118
  br i1 %120, label %70, label %121, !llvm.loop !75

121:                                              ; preds = %115, %65
  %122 = phi ptr [ %22, %65 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opset(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr i64 %13, 3
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %16 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %17 = tail call ptr @Perl_newSV(i64 noundef %16) #6
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %21 = add nsw i64 %20, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %19, i8 0, i64 %21, i1 false)
  %22 = load ptr, ptr %17, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  store i64 %20, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = and i32 %25, 1610547455
  %27 = or disjoint i32 %26, 17408
  store i32 %27, ptr %24, align 4, !tbaa !48
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %17) #6
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp sgt i32 %15, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %1
  %33 = sext i32 %8 to i64
  %34 = and i64 %14, 4294967295
  br label %35

35:                                               ; preds = %32, %84
  %36 = phi i64 [ 0, %32 ], [ %88, %84 ]
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %38 = getelementptr ptr, ptr %37, i64 %36
  %39 = getelementptr ptr, ptr %38, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !48
  %43 = and i32 %42, 65280
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %45, 8
  %47 = or i1 %44, %46
  %48 = and i32 %42, 16777471
  %49 = icmp eq i32 %48, 16777226
  %50 = or i1 %49, %47
  %51 = and i32 %42, 1024
  %52 = icmp ne i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %60

54:                                               ; preds = %35
  %55 = load ptr, ptr %40, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.xpv, ptr %55, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !54
  %58 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %35, %54
  %61 = and i32 %42, 2098176
  %62 = icmp eq i32 %61, 1024
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load ptr, ptr %40, align 8, !tbaa !53
  %65 = getelementptr inbounds %struct.xpv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !54
  store i64 %66, ptr %2, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  br label %71

69:                                               ; preds = %60
  %70 = call ptr @Perl_sv_2pv_flags(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi ptr [ %68, %63 ], [ %70, %69 ]
  %73 = load i8, ptr %72, align 1, !tbaa !43
  %74 = icmp eq i8 %73, 33
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  %77 = load i64, ptr %2, align 8, !tbaa !57
  %78 = add i64 %77, -1
  store i64 %78, ptr %2, align 8, !tbaa !57
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ 0, %75 ], [ 1, %71 ]
  %81 = phi ptr [ %76, %75 ], [ %72, %71 ]
  %82 = load i64, ptr %2, align 8, !tbaa !57
  %83 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %81, i64 noundef %82)
  br label %84

84:                                               ; preds = %54, %79
  %85 = phi i32 [ %80, %79 ], [ 1, %54 ]
  %86 = phi ptr [ %83, %79 ], [ %40, %54 ]
  %87 = phi ptr [ %81, %79 ], [ @.str.42, %54 ]
  call fastcc void @set_opset_bits(ptr noundef %30, ptr noundef %86, i32 noundef %85, ptr noundef %87)
  %88 = add nuw nsw i64 %36, 1
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %90, label %35, !llvm.loop !76

90:                                               ; preds = %84, %1
  %91 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %92 = sext i32 %8 to i64
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92
  store ptr %28, ptr %93, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %95 = getelementptr inbounds ptr, ptr %94, i64 %92
  store ptr %95, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_permit_only(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr %0, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !43
  %19 = icmp slt i32 %15, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #6
  br label %21

21:                                               ; preds = %20, %1
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %23 = sext i32 %8 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = and i32 %34, 1048831
  %36 = icmp eq i32 %35, 1048588
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %21
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #6
  br label %38

38:                                               ; preds = %30, %37
  %39 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = tail call ptr @Perl_hv_common_key_len(ptr noundef %40, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 48, ptr noundef null, i32 noundef 0) #6
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = and i32 %18, -3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = icmp ult i32 %18, 2
  %47 = load ptr, ptr @my_cxt.1, align 8
  %48 = select i1 %46, ptr %47, ptr null
  %49 = tail call fastcc ptr @new_opset(ptr noundef %48)
  %50 = tail call ptr @Perl_sv_2mortal(ptr noundef %49) #6
  tail call void @Perl_sv_setsv_flags(ptr noundef %42, ptr noundef %50, i32 noundef 2) #6
  br label %53

51:                                               ; preds = %38
  %52 = tail call fastcc i32 @verify_opset(ptr noundef %42, i32 noundef 1), !range !72
  br label %53

53:                                               ; preds = %51, %45
  %54 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = icmp sgt i32 %15, 1
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = icmp ugt i32 %18, 1
  %59 = zext i1 %58 to i32
  %60 = xor i1 %58, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %8 to i64
  %63 = and i64 %14, 4294967295
  br label %64

64:                                               ; preds = %57, %113
  %65 = phi i64 [ 1, %57 ], [ %117, %113 ]
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %67 = getelementptr ptr, ptr %66, i64 %65
  %68 = getelementptr ptr, ptr %67, i64 %62
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = and i32 %71, 65280
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 255
  %75 = icmp eq i32 %74, 8
  %76 = or i1 %73, %75
  %77 = and i32 %71, 16777471
  %78 = icmp eq i32 %77, 16777226
  %79 = or i1 %78, %76
  %80 = and i32 %71, 1024
  %81 = icmp ne i32 %80, 0
  %82 = and i1 %81, %79
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load ptr, ptr %69, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !54
  %87 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %113, label %89

89:                                               ; preds = %64, %83
  %90 = and i32 %71, 2098176
  %91 = icmp eq i32 %90, 1024
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load ptr, ptr %69, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !54
  store i64 %95, ptr %2, align 8, !tbaa !57
  %96 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  br label %100

98:                                               ; preds = %89
  %99 = call ptr @Perl_sv_2pv_flags(ptr noundef %69, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi ptr [ %97, %92 ], [ %99, %98 ]
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = icmp eq i8 %102, 33
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  %106 = load i64, ptr %2, align 8, !tbaa !57
  %107 = add i64 %106, -1
  store i64 %107, ptr %2, align 8, !tbaa !57
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi ptr [ %105, %104 ], [ %101, %100 ]
  %110 = phi i32 [ %61, %104 ], [ %59, %100 ]
  %111 = load i64, ptr %2, align 8, !tbaa !57
  %112 = call fastcc ptr @get_op_bitspec(ptr noundef nonnull %109, i64 noundef %111)
  br label %113

113:                                              ; preds = %83, %108
  %114 = phi ptr [ %112, %108 ], [ %69, %83 ]
  %115 = phi ptr [ %109, %108 ], [ @.str.42, %83 ]
  %116 = phi i32 [ %110, %108 ], [ %59, %83 ]
  call fastcc void @set_opset_bits(ptr noundef %55, ptr noundef %114, i32 noundef %116, ptr noundef %115)
  %117 = add nuw nsw i64 %65, 1
  %118 = icmp eq i64 %117, %63
  br i1 %118, label %119, label %64, !llvm.loop !77

119:                                              ; preds = %113, %53
  %120 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %121 = getelementptr inbounds ptr, ptr %120, i64 %23
  store ptr @PL_sv_yes, ptr %121, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %123 = getelementptr inbounds ptr, ptr %122, i64 %23
  store ptr %123, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opdesc(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %19 = tail call ptr @Perl_get_op_descs() #6
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = shl nsw i64 %16, 3
  %24 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %22, i64 noundef %23, i32 noundef 524288) #6
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp sgt i32 %14, 0
  br i1 %27, label %28, label %167

28:                                               ; preds = %1
  %29 = and i64 %13, 4294967295
  br label %30

30:                                               ; preds = %28, %163
  %31 = phi i64 [ 0, %28 ], [ %165, %163 ]
  %32 = phi ptr [ %18, %28 ], [ %164, %163 ]
  %33 = getelementptr inbounds ptr, ptr %26, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !48
  %37 = and i32 %36, 2098176
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !54
  store i64 %42, ptr %2, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  br label %47

45:                                               ; preds = %30
  %46 = call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %44, %39 ], [ %46, %45 ]
  %49 = load i64, ptr %2, align 8, !tbaa !57
  %50 = call fastcc ptr @get_op_bitspec(ptr noundef %48, i64 noundef %49)
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !48
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %47
  %56 = and i32 %52, 2097408
  %57 = icmp eq i32 %56, 256
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load ptr, ptr %50, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.xpviv, ptr %59, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !43
  br label %64

62:                                               ; preds = %55
  %63 = call i64 @Perl_sv_2iv_flags(ptr noundef %50, i32 noundef 2) #6
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i64 [ %61, %58 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %66, -1
  %68 = load i32, ptr @PL_maxo, align 4
  %69 = icmp sgt i32 %68, %66
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, i32 noundef %66, ptr noundef %48) #6
  br label %72

72:                                               ; preds = %64, %71
  %73 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %32 to i64
  %76 = sub i64 %74, %75
  %77 = icmp slt i64 %76, 8
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call ptr @Perl_stack_grow(ptr noundef %32, ptr noundef %32, i64 noundef 1) #6
  br label %80

80:                                               ; preds = %72, %78
  %81 = phi ptr [ %79, %78 ], [ %32, %72 ]
  %82 = shl i64 %65, 32
  %83 = ashr exact i64 %82, 32
  %84 = getelementptr inbounds ptr, ptr %19, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85) #7
  %87 = call ptr @Perl_newSVpvn_flags(ptr noundef %85, i64 noundef %86, i32 noundef 524288) #6
  %88 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %87, ptr %88, align 8, !tbaa !35
  br label %163

89:                                               ; preds = %47
  %90 = and i32 %52, 1024
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %161, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %50, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !54
  %96 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %161

98:                                               ; preds = %92
  %99 = and i32 %52, 2098176
  %100 = icmp eq i32 %99, 1024
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  br label %106

104:                                              ; preds = %98
  %105 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %50, ptr noundef null, i32 noundef 34) #6
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %103, %101 ], [ %105, %104 ]
  %108 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %163

110:                                              ; preds = %106, %155
  %111 = phi i64 [ %158, %155 ], [ 0, %106 ]
  %112 = phi ptr [ %157, %155 ], [ %32, %106 ]
  %113 = phi i32 [ %156, %155 ], [ 0, %106 ]
  %114 = load i32, ptr @PL_maxo, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %155

116:                                              ; preds = %110
  %117 = getelementptr inbounds i8, ptr %107, i64 %111
  %118 = load i8, ptr %117, align 1, !tbaa !43
  %119 = sext i8 %118 to i32
  %120 = and i32 %119, 65535
  %121 = sext i32 %113 to i64
  br label %122

122:                                              ; preds = %116, %144
  %123 = phi i64 [ %121, %116 ], [ %147, %144 ]
  %124 = phi ptr [ %112, %116 ], [ %145, %144 ]
  %125 = phi i32 [ 0, %116 ], [ %146, %144 ]
  %126 = shl nuw nsw i32 1, %125
  %127 = and i32 %120, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %122
  %130 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %131 = ptrtoint ptr %130 to i64
  %132 = ptrtoint ptr %124 to i64
  %133 = sub i64 %131, %132
  %134 = icmp slt i64 %133, 8
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call ptr @Perl_stack_grow(ptr noundef %124, ptr noundef %124, i64 noundef 1) #6
  br label %137

137:                                              ; preds = %129, %135
  %138 = phi ptr [ %136, %135 ], [ %124, %129 ]
  %139 = getelementptr inbounds ptr, ptr %19, i64 %123
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  %141 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %140) #7
  %142 = call ptr @Perl_newSVpvn_flags(ptr noundef %140, i64 noundef %141, i32 noundef 524288) #6
  %143 = getelementptr inbounds ptr, ptr %138, i64 1
  store ptr %142, ptr %143, align 8, !tbaa !35
  br label %144

144:                                              ; preds = %122, %137
  %145 = phi ptr [ %143, %137 ], [ %124, %122 ]
  %146 = add nuw nsw i32 %125, 1
  %147 = add nsw i64 %123, 1
  %148 = icmp ult i32 %125, 7
  %149 = load i32, ptr @PL_maxo, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %147, %150
  %152 = select i1 %148, i1 %151, i1 false
  br i1 %152, label %122, label %153, !llvm.loop !78

153:                                              ; preds = %144
  %154 = trunc i64 %147 to i32
  br label %155

155:                                              ; preds = %153, %110
  %156 = phi i32 [ %113, %110 ], [ %154, %153 ]
  %157 = phi ptr [ %112, %110 ], [ %145, %153 ]
  %158 = add nuw nsw i64 %111, 1
  %159 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %160 = icmp sgt i64 %159, %158
  br i1 %160, label %110, label %163, !llvm.loop !79

161:                                              ; preds = %92, %89
  %162 = and i32 %52, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %48, i32 noundef %162) #6
  br label %163

163:                                              ; preds = %155, %106, %161, %80
  %164 = phi ptr [ %88, %80 ], [ %32, %161 ], [ %32, %106 ], [ %157, %155 ]
  %165 = add nuw nsw i64 %31, 1
  %166 = icmp eq i64 %165, %29
  br i1 %166, label %167, label %30, !llvm.loop !80

167:                                              ; preds = %163, %1
  %168 = phi ptr [ %18, %1 ], [ %164, %163 ]
  store ptr %168, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_define_optag(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.57) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr ptr, ptr %18, i64 %9
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %25 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = and i32 %26, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load ptr, ptr %21, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !54
  store i64 %32, ptr %2, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  br label %37

35:                                               ; preds = %17
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = load i64, ptr %2, align 8, !tbaa !57
  call fastcc void @put_op_bitspec(ptr noundef %38, i64 noundef %39, ptr noundef %24)
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 %19
  store ptr @PL_sv_yes, ptr %41, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_empty_opset(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %18 = tail call ptr @Perl_newSV(i64 noundef %17) #6
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %22 = add nsw i64 %21, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %20, i8 0, i64 %22, i1 false)
  %23 = load ptr, ptr %18, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  store i64 %21, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = and i32 %26, 1610547455
  %28 = or disjoint i32 %27, 17408
  store i32 %28, ptr %25, align 4, !tbaa !48
  %29 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %18) #6
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %31 = sext i32 %16 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !35
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_full_opset(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @my_cxt.1, align 8, !tbaa !56
  %18 = tail call fastcc ptr @new_opset(ptr noundef %17)
  %19 = tail call ptr @Perl_sv_2mortal(ptr noundef %18) #6
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !35
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opmask_add(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.40) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @Perl_safesyscalloc(i64 noundef %25, i64 noundef 1) #6
  store ptr %26, ptr @PL_op_mask, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %23, %16
  tail call fastcc void @opmask_add(ptr noundef %20)
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 %18
  %30 = getelementptr inbounds ptr, ptr %29, i64 -1
  store ptr %30, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opcodes(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 2, !tbaa !68
  %23 = and i8 %22, 3
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = icmp eq i8 %23, 3
  br label %30

27:                                               ; preds = %15
  %28 = tail call i32 @Perl_dowantarray() #6
  %29 = icmp eq i32 %28, 3
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i1 [ %26, %25 ], [ %29, %27 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59) #6
  br label %48

33:                                               ; preds = %30
  %34 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %19 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #6
  br label %41

41:                                               ; preds = %33, %39
  %42 = phi ptr [ %40, %39 ], [ %19, %33 ]
  %43 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %44 = sext i32 %43 to i64
  %45 = tail call ptr @Perl_newSViv(i64 noundef %44) #6
  %46 = tail call ptr @Perl_sv_2mortal(ptr noundef %45) #6
  %47 = getelementptr inbounds ptr, ptr %42, i64 1
  store ptr %46, ptr %47, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %41, %32
  %49 = phi ptr [ %19, %32 ], [ %47, %41 ]
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Opcode_opmask(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %18 = tail call ptr @Perl_newSV(i64 noundef %17) #6
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %22 = add nsw i64 %21, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %20, i8 0, i64 %22, i1 false)
  %23 = load ptr, ptr %18, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  store i64 %21, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = and i32 %26, 1610547455
  %28 = or disjoint i32 %27, 17408
  store i32 %28, ptr %25, align 4, !tbaa !48
  %29 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %18) #6
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !35
  %33 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %16
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 %31
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %35, %58
  %44 = phi i64 [ %59, %58 ], [ 0, %35 ]
  %45 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  %46 = getelementptr inbounds i8, ptr %45, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = trunc i64 %44 to i8
  %51 = and i8 %50, 7
  %52 = shl nuw i8 1, %51
  %53 = lshr i64 %44, 3
  %54 = and i64 %53, 536870911
  %55 = getelementptr inbounds i8, ptr %40, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !43
  %57 = or i8 %56, %52
  store i8 %57, ptr %55, align 1, !tbaa !43
  br label %58

58:                                               ; preds = %43, %49
  %59 = add nuw nsw i64 %44, 1
  %60 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %43, label %63, !llvm.loop !81

63:                                               ; preds = %58, %35, %16
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 %31
  store ptr %65, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_save_aptr(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_save_hptr(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_dowantarray() local_unnamed_addr #2

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: cold nounwind uwtable
define internal fastcc void @opmask_add(ptr noundef %0) unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = tail call fastcc i32 @verify_opset(ptr noundef %0, i32 noundef 1), !range !72
  %4 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34) #6
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !54
  store i64 %15, ptr %2, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  br label %20

18:                                               ; preds = %7
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20, %56
  %25 = phi i64 [ %58, %56 ], [ 0, %20 ]
  %26 = phi i32 [ %57, %56 ], [ 0, %20 ]
  %27 = getelementptr inbounds i8, ptr %21, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !43
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
  %42 = load ptr, ptr @PL_op_mask, align 8, !tbaa !35
  %43 = add nsw i64 %38, 1
  %44 = getelementptr inbounds i8, ptr %42, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = trunc i32 %41 to i8
  %47 = and i8 %28, %46
  %48 = or i8 %45, %47
  store i8 %48, ptr %44, align 1, !tbaa !43
  %49 = icmp ult i32 %39, 7
  %50 = load i32, ptr @PL_maxo, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %43, %51
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %37, label %54, !llvm.loop !82

54:                                               ; preds = %37
  %55 = trunc i64 %43 to i32
  br label %56

56:                                               ; preds = %54, %30, %35
  %57 = phi i32 [ %36, %35 ], [ %26, %30 ], [ %55, %54 ]
  %58 = add nuw nsw i64 %25, 1
  %59 = icmp eq i64 %58, %22
  br i1 %59, label %60, label %24, !llvm.loop !83

60:                                               ; preds = %56, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @verify_opset(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !48
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
  %17 = load ptr, ptr %0, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !54
  %20 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
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
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, ptr noundef %25) #6
  br label %29

29:                                               ; preds = %28, %23
  %30 = xor i1 %24, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @new_opset(ptr noundef %0) unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @verify_opset(ptr noundef nonnull %0, i32 noundef 1), !range !72
  %5 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #6
  br label %19

6:                                                ; preds = %1
  %7 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %8 = tail call ptr @Perl_newSV(i64 noundef %7) #6
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %12 = add nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 %12, i1 false)
  %13 = load ptr, ptr %8, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  store i64 %11, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = and i32 %16, 1610547455
  %18 = or disjoint i32 %17, 17408
  store i32 %18, ptr %15, align 4, !tbaa !48
  br label %19

19:                                               ; preds = %6, %3
  %20 = phi ptr [ %5, %3 ], [ %8, %6 ]
  ret ptr %20
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_get_op_descs() local_unnamed_addr #2

declare ptr @Perl_get_op_names() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_op_bitspec(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !47
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr @Perl_hv_common_key_len(ptr noundef %3, ptr noundef %0, i32 noundef %4, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !48
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %36, label %19

19:                                               ; preds = %2, %7
  %20 = load i8, ptr %0, align 1, !tbaa !43
  %21 = icmp eq i8 %20, 58
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef nonnull %0) #6
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i8, ptr %0, align 1, !tbaa !43
  %25 = icmp eq i8 %24, 33
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #6
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i8, ptr %0, align 1, !tbaa !43
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !39
  %32 = and i32 %31, 16388
  %33 = icmp eq i32 %32, 16388
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45, ptr noundef nonnull %0) #6
  br label %35

35:                                               ; preds = %34, %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, ptr noundef nonnull %0) #6
  br label %36

36:                                               ; preds = %7, %35
  %37 = load ptr, ptr %5, align 8, !tbaa !35
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_opset_bits(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !34 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 2097408
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !43
  br label %19

17:                                               ; preds = %10
  %18 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %1, i32 noundef 2) #6
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %16, %13 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  %22 = ashr i32 %21, 3
  %23 = and i32 %21, 7
  %24 = load i32, ptr @PL_maxo, align 4, !tbaa !39
  %25 = icmp sle i32 %24, %21
  %26 = icmp slt i32 %21, 0
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %3, i32 noundef %21) #6
  br label %29

29:                                               ; preds = %28, %19
  %30 = icmp eq i32 %2, 0
  %31 = shl nuw nsw i32 1, %23
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = trunc i32 %31 to i8
  br i1 %30, label %38, label %36

36:                                               ; preds = %29
  %37 = or i8 %34, %35
  store i8 %37, ptr %33, align 1, !tbaa !43
  br label %88

38:                                               ; preds = %29
  %39 = xor i8 %35, -1
  %40 = and i8 %34, %39
  store i8 %40, ptr %33, align 1, !tbaa !43
  br label %88

41:                                               ; preds = %4
  %42 = and i32 %7, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %86, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %1, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !54
  %48 = load i64, ptr @my_cxt.2, align 8, !tbaa !44
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %51 = and i32 %7, 2098176
  %52 = icmp eq i32 %51, 1024
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  store i64 %47, ptr %5, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  br label %58

56:                                               ; preds = %50
  %57 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #6
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi ptr [ %55, %53 ], [ %57, %56 ]
  %60 = icmp eq i32 %2, 0
  %61 = load i64, ptr %5, align 8, !tbaa !57
  %62 = add i64 %61, -1
  store i64 %62, ptr %5, align 8, !tbaa !57
  %63 = icmp eq i64 %61, 0
  br i1 %60, label %65, label %64

64:                                               ; preds = %58
  br i1 %63, label %85, label %66

65:                                               ; preds = %58
  br i1 %63, label %85, label %75

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %73, %66 ], [ %62, %64 ]
  %68 = getelementptr inbounds i8, ptr %59, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !43
  %70 = getelementptr inbounds i8, ptr %0, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !43
  %72 = or i8 %71, %69
  store i8 %72, ptr %70, align 1, !tbaa !43
  %73 = add i64 %67, -1
  store i64 %73, ptr %5, align 8, !tbaa !57
  %74 = icmp eq i64 %67, 0
  br i1 %74, label %85, label %66, !llvm.loop !84

75:                                               ; preds = %65, %75
  %76 = phi i64 [ %83, %75 ], [ %62, %65 ]
  %77 = getelementptr inbounds i8, ptr %59, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !43
  %79 = xor i8 %78, -1
  %80 = getelementptr inbounds i8, ptr %0, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !43
  %82 = and i8 %81, %79
  store i8 %82, ptr %80, align 1, !tbaa !43
  %83 = add i64 %76, -1
  store i64 %83, ptr %5, align 8, !tbaa !57
  %84 = icmp eq i64 %76, 0
  br i1 %84, label %85, label %75, !llvm.loop !85

85:                                               ; preds = %66, %75, %64, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %88

86:                                               ; preds = %44, %41
  %87 = and i32 %7, 255
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %3, i32 noundef %87) #6
  br label %88

88:                                               ; preds = %36, %38, %85, %86
  ret void
}

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @put_op_bitspec(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 {
  %4 = tail call fastcc i32 @verify_opset(ptr noundef %2, i32 noundef 1), !range !72
  %5 = load ptr, ptr @my_cxt.0, align 8, !tbaa !47
  %6 = trunc i64 %1 to i32
  %7 = tail call ptr @Perl_hv_common_key_len(ptr noundef %5, ptr noundef %0, i32 noundef %6, i32 noundef 48, ptr noundef null, i32 noundef 0) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !48
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58, ptr noundef %0) #6
  br label %20

20:                                               ; preds = %3, %19
  %21 = load ptr, ptr %7, align 8, !tbaa !35
  tail call void @Perl_sv_setsv_flags(ptr noundef %21, ptr noundef %2, i32 noundef 2) #6
  %22 = load ptr, ptr %7, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = or i32 %24, 134217728
  store i32 %25, ptr %23, align 4, !tbaa !48
  ret void
}

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"cv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!43 = !{!37, !37, i64 0}
!44 = !{!45, !46, i64 16}
!45 = !{!"", !36, i64 0, !36, i64 8, !46, i64 16, !40, i64 24}
!46 = !{!"long", !37, i64 0}
!47 = !{!45, !36, i64 0}
!48 = !{!49, !40, i64 12}
!49 = !{!"sv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!49, !36, i64 0}
!54 = !{!55, !46, i64 16}
!55 = !{!"xpv", !36, i64 0, !37, i64 8, !46, i64 16, !37, i64 24}
!56 = !{!45, !36, i64 8}
!57 = !{!46, !46, i64 0}
!58 = !{!59, !40, i64 12}
!59 = !{!"hv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!60 = !{!59, !36, i64 0}
!61 = !{!62, !46, i64 24}
!62 = !{!"xpvhv", !36, i64 0, !37, i64 8, !46, i64 16, !46, i64 24}
!63 = !{!64, !40, i64 28}
!64 = !{!"xpvhv_aux", !37, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!65 = !{!49, !40, i64 8}
!66 = !{!67, !36, i64 32}
!67 = !{!"gp", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !40, i64 67, !36, i64 72}
!68 = !{!69, !37, i64 34}
!69 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35}
!70 = !{!69, !37, i64 35}
!71 = !{!69, !46, i64 24}
!72 = !{i32 0, i32 2}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = distinct !{!77, !51, !52}
!78 = distinct !{!78, !51, !52}
!79 = distinct !{!79, !51, !52}
!80 = distinct !{!80, !51, !52}
!81 = distinct !{!81, !51, !52}
!82 = distinct !{!82, !51, !52}
!83 = distinct !{!83, !51, !52}
!84 = distinct !{!84, !51, !52}
!85 = distinct !{!85, !51, !52}
