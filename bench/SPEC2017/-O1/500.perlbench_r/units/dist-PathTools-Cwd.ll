; ModuleID = 'dist/PathTools/Cwd.c'
source_filename = "dist/PathTools/Cwd.c"
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
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.6 }
%union.anon.6 = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"dist/PathTools/Cwd.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Cwd::CLONE\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Cwd::fastcwd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Cwd::getcwd\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cwd::abs_path\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"File::Spec::Unix::canonpath\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"File::Spec::Unix::_fn_canonpath\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"File::Spec::Unix::catdir\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"File::Spec::Unix::_fn_catdir\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"File::Spec::Unix::catfile\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"File::Spec::Unix::_fn_catfile\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@my_cxt.0 = internal unnamed_addr global ptr null, align 8
@my_cxt.1 = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"pathsv=Nullsv\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"self, path= &PL_sv_undef, ...\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"self, ...\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"canonpath\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"File::Spec::Unix\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"catdir\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Cwd(ptr noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Cwd_CLONE) #8
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Cwd_getcwd) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !47
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Cwd_getcwd) #8
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !47
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Cwd_abs_path) #8
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_File__Spec__Unix_canonpath) #8
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_File__Spec__Unix__fn_canonpath) #8
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_File__Spec__Unix_catdir) #8
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_File__Spec__Unix__fn_catdir) #8
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_File__Spec__Unix_catfile) #8
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_File__Spec__Unix__fn_catfile) #8
  %17 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #8
  store ptr %17, ptr @my_cxt.0, align 8, !tbaa !48
  %18 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #8
  store ptr %18, ptr @my_cxt.1, align 8, !tbaa !50
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Cwd_CLONE(ptr nocapture readnone %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %3 = getelementptr inbounds i32, ptr %2, i64 -1
  store ptr %3, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = load i32, ptr %2, align 4, !tbaa !53
  %5 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #8
  store ptr %5, ptr @my_cxt.0, align 8, !tbaa !48
  %6 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #8
  store ptr %6, ptr @my_cxt.1, align 8, !tbaa !50
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %8 = sext i32 %4 to i64
  %9 = getelementptr ptr, ptr %7, i64 %8
  store ptr %9, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Cwd_getcwd(ptr noundef %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !54
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr @PL_curpad, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  br label %28

26:                                               ; preds = %1
  %27 = tail call ptr @Perl_sv_newmortal() #8
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %25, %20 ], [ %27, %26 ]
  %30 = icmp eq i32 %14, 1
  %31 = and i64 %11, 34359738360
  %32 = icmp ne i64 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #8
  br label %35

35:                                               ; preds = %34, %28
  %36 = tail call i32 @Perl_getcwd_sv(ptr noundef %29) #8
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %38 = getelementptr ptr, ptr %37, i64 %7
  %39 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = and i32 %40, 4194304
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i32 @Perl_mg_set(ptr noundef %29) #8
  br label %45

45:                                               ; preds = %35, %43
  %46 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %29, ptr %46, align 8, !tbaa !52
  %47 = load i8, ptr @PL_tainting, align 1, !tbaa !60, !range !62, !noundef !63
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @Perl_sv_magic(ptr noundef %29, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %50

50:                                               ; preds = %45, %49
  store ptr %46, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Cwd_abs_path(ptr noundef %0) #0 !prof !51 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %8 = load i32, ptr %6, align 4, !tbaa !53
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 3
  %17 = trunc i64 %16 to i32
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  br label %20

20:                                               ; preds = %1, %19
  %21 = icmp slt i32 %17, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  br label %27

27:                                               ; preds = %20, %22
  %28 = phi ptr [ %26, %22 ], [ null, %20 ]
  %29 = load ptr, ptr @PL_op, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 6
  %31 = load i8, ptr %30, align 1, !tbaa !54
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr @PL_curpad, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  br label %42

40:                                               ; preds = %27
  %41 = tail call ptr @Perl_sv_newmortal() #8
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %39, %34 ], [ %41, %40 ]
  %44 = icmp eq ptr %28, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = and i32 %47, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  br label %55

53:                                               ; preds = %45
  %54 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %28, ptr noundef null, i32 noundef 2) #8
  br label %55

55:                                               ; preds = %42, %50, %53
  %56 = phi ptr [ %52, %50 ], [ %54, %53 ], [ @.str.15, %42 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #8
  %57 = tail call ptr @__errno_location() #9
  %58 = load i8, ptr %56, align 1, !tbaa !47
  %59 = icmp eq i8 %58, 47
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  store i8 47, ptr %4, align 16, !tbaa !47
  %61 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 0, ptr %61, align 1, !tbaa !47
  %62 = getelementptr inbounds i8, ptr %56, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !47
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %148, label %72

65:                                               ; preds = %55
  %66 = call ptr @getcwd(ptr noundef nonnull %4, i64 noundef 4096) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.15, i64 noundef 4096) #8
  br label %156

70:                                               ; preds = %65
  %71 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #10
  br label %72

72:                                               ; preds = %60, %70
  %73 = phi ptr [ %56, %70 ], [ %62, %60 ]
  %74 = phi i64 [ %71, %70 ], [ 1, %60 ]
  %75 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %2, ptr noundef nonnull %73, i64 noundef 4096) #8
  %76 = icmp ugt i64 %75, 4095
  %77 = icmp ugt i64 %74, 4095
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = getelementptr i8, ptr %4, i64 -1
  %81 = icmp eq i64 %75, 0
  br i1 %81, label %139, label %82

82:                                               ; preds = %79
  %83 = ptrtoint ptr %2 to i64
  %84 = ptrtoint ptr %4 to i64
  br label %86

85:                                               ; preds = %72
  store i32 36, ptr %57, align 4, !tbaa !53
  br label %156

86:                                               ; preds = %82, %121
  %87 = phi i64 [ %75, %82 ], [ %99, %121 ]
  %88 = phi i64 [ %74, %82 ], [ %122, %121 ]
  %89 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #10
  %90 = icmp eq ptr %89, null
  %91 = getelementptr inbounds i8, ptr %2, i64 %87
  %92 = select i1 %90, ptr %91, ptr %89
  %93 = ptrtoint ptr %92 to i64
  %94 = sub i64 %93, %83
  %95 = icmp ugt i64 %94, 4095
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 36, ptr %57, align 4, !tbaa !53
  br label %156

97:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 16 %2, i64 %94, i1 false)
  %98 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %94
  store i8 0, ptr %98, align 1, !tbaa !47
  %99 = sub i64 %87, %94
  br i1 %90, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds i8, ptr %89, i64 1
  %102 = add i64 %99, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %101, i64 %102, i1 false)
  br label %103

103:                                              ; preds = %100, %97
  %104 = getelementptr i8, ptr %4, i64 %88
  %105 = getelementptr i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !47
  %107 = icmp eq i8 %106, 47
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = add i64 %88, 1
  %110 = icmp ugt i64 %109, 4095
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 36, ptr %57, align 4, !tbaa !53
  br label %156

112:                                              ; preds = %108
  store i8 47, ptr %104, align 1, !tbaa !47
  %113 = getelementptr inbounds i8, ptr %4, i64 %109
  store i8 0, ptr %113, align 1, !tbaa !47
  br label %114

114:                                              ; preds = %112, %103
  %115 = phi i64 [ %109, %112 ], [ %88, %103 ]
  %116 = load i8, ptr %3, align 16, !tbaa !47
  %117 = icmp eq i8 %116, 0
  %118 = load i16, ptr %3, align 16
  %119 = icmp eq i16 %118, 46
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %127, %129, %114, %135
  %122 = phi i64 [ %115, %114 ], [ %136, %135 ], [ %134, %129 ], [ %115, %127 ]
  %123 = icmp eq i64 %99, 0
  br i1 %123, label %139, label %86, !llvm.loop !64

124:                                              ; preds = %114
  %125 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %3, ptr noundef nonnull dereferenceable(3) @.str.16, i64 3)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = icmp ugt i64 %115, 1
  br i1 %128, label %129, label %121

129:                                              ; preds = %127
  %130 = getelementptr i8, ptr %80, i64 %115
  store i8 0, ptr %130, align 1, !tbaa !47
  %131 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 47) #10
  %132 = getelementptr inbounds i8, ptr %131, i64 1
  store i8 0, ptr %132, align 1, !tbaa !47
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %133, %84
  br label %121

135:                                              ; preds = %124
  %136 = call i64 @Perl_my_strlcat(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 4096) #8
  %137 = icmp ugt i64 %136, 4095
  br i1 %137, label %138, label %121

138:                                              ; preds = %135
  store i32 36, ptr %57, align 4, !tbaa !53
  br label %156

139:                                              ; preds = %121, %79
  %140 = phi i64 [ %74, %79 ], [ %122, %121 ]
  %141 = icmp ugt i64 %140, 1
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = getelementptr i8, ptr %4, i64 %140
  %144 = getelementptr i8, ptr %143, i64 -1
  %145 = load i8, ptr %144, align 1, !tbaa !47
  %146 = icmp eq i8 %145, 47
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i8 0, ptr %144, align 1, !tbaa !47
  br label %148

148:                                              ; preds = %60, %139, %142, %147
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #8
  call void @Perl_sv_setpv_mg(ptr noundef %43, ptr noundef nonnull %4) #8
  %149 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !58
  %151 = and i32 %150, 1610547455
  %152 = or disjoint i32 %151, 17408
  store i32 %152, ptr %149, align 4, !tbaa !58
  %153 = load i8, ptr @PL_tainting, align 1, !tbaa !60, !range !62, !noundef !63
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  call void @Perl_sv_magic(ptr noundef %43, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %157

156:                                              ; preds = %68, %138, %111, %96, %85
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #8
  call void @Perl_sv_setsv_flags(ptr noundef %43, ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #8
  br label %157

157:                                              ; preds = %155, %148, %156
  %158 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %159 = sext i32 %10 to i64
  %160 = getelementptr inbounds ptr, ptr %158, i64 %159
  store ptr %43, ptr %160, align 8, !tbaa !52
  %161 = load i8, ptr @PL_tainting, align 1, !tbaa !60, !range !62, !noundef !63
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  call void @Perl_sv_magic(ptr noundef %43, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %164

164:                                              ; preds = %157, %163
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  store ptr %160, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix_canonpath(ptr noundef %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = icmp slt i32 %13, 2
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %20 = getelementptr ptr, ptr %19, i64 %7
  %21 = getelementptr ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  br label %23

23:                                               ; preds = %16, %18
  %24 = phi ptr [ %22, %18 ], [ @PL_sv_undef, %16 ]
  %25 = add nsw i32 %5, 1
  %26 = sext i32 %25 to i64
  %27 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %24)
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef %27) #8
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  store ptr %28, ptr %30, align 8, !tbaa !52
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 %26
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix__fn_canonpath(ptr nocapture readnone %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %1, %16
  %21 = phi ptr [ %19, %16 ], [ @PL_sv_undef, %1 ]
  %22 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %21)
  %23 = tail call ptr @Perl_sv_2mortal(ptr noundef %22) #8
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %25 = sext i32 %7 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr %23, ptr %26, align 8, !tbaa !52
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix_catdir(ptr noundef %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = load ptr, ptr @PL_stack_max, align 8, !tbaa !52
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %10
  %25 = ashr exact i64 %24, 3
  %26 = shl i64 %12, 29
  %27 = add i64 %26, 4294967296
  %28 = ashr i64 %27, 32
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %28) #8
  br label %32

32:                                               ; preds = %17, %30
  %33 = phi ptr [ %31, %30 ], [ %2, %17 ]
  %34 = load ptr, ptr @my_cxt.0, align 8, !tbaa !48
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %36 = add nsw i32 %7, %14
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  store ptr %34, ptr %38, align 8, !tbaa !52
  %39 = tail call ptr @Perl_sv_newmortal() #8
  %40 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 %19
  %43 = getelementptr inbounds ptr, ptr %41, i64 %37
  tail call void @Perl_do_join(ptr noundef %39, ptr noundef %40, ptr noundef %42, ptr noundef %43) #8
  %44 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %32
  %49 = load ptr, ptr %21, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !68
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %55, ptr noundef nonnull dereferenceable(16) @.str.20, i64 16)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %39)
  br label %93

60:                                               ; preds = %48, %32, %53
  tail call void @Perl_push_scope() #8
  %61 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %62 = getelementptr inbounds i32, ptr %61, i64 1
  store ptr %62, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %63 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !52
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call ptr @Perl_markstack_grow() #8
  br label %67

67:                                               ; preds = %60, %65
  %68 = phi ptr [ %66, %65 ], [ %62, %60 ]
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %70 = ptrtoint ptr %33 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = lshr exact i64 %72, 3
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %68, align 4, !tbaa !53
  %75 = load ptr, ptr @PL_stack_max, align 8, !tbaa !52
  %76 = ptrtoint ptr %75 to i64
  %77 = sub i64 %76, %70
  %78 = icmp slt i64 %77, 16
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = tail call ptr @Perl_stack_grow(ptr noundef %33, ptr noundef %33, i64 noundef 2) #8
  br label %81

81:                                               ; preds = %67, %79
  %82 = phi ptr [ %80, %79 ], [ %33, %67 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  store ptr %21, ptr %83, align 8, !tbaa !52
  %84 = getelementptr inbounds ptr, ptr %82, i64 2
  store ptr %39, ptr %84, align 8, !tbaa !52
  store ptr %84, ptr @PL_stack_sp, align 8, !tbaa !52
  %85 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.19, i32 noundef 2) #8
  %86 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  tail call void @Perl_pop_scope() #8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !70
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !70
  br label %93

93:                                               ; preds = %89, %81, %58
  %94 = phi ptr [ %59, %58 ], [ %87, %81 ], [ %87, %89 ]
  %95 = tail call ptr @Perl_sv_2mortal(ptr noundef %94) #8
  %96 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %97 = getelementptr inbounds ptr, ptr %96, i64 %19
  store ptr %95, ptr %97, align 8, !tbaa !52
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %99 = getelementptr inbounds ptr, ptr %98, i64 %19
  store ptr %99, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix__fn_catdir(ptr nocapture readnone %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr @PL_stack_max, align 8, !tbaa !52
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %9
  %15 = ashr exact i64 %14, 3
  %16 = shl i64 %11, 29
  %17 = add i64 %16, 4294967296
  %18 = ashr i64 %17, 32
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %18) #8
  br label %22

22:                                               ; preds = %1, %20
  %23 = lshr exact i64 %11, 3
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %5, 1
  %26 = load ptr, ptr @my_cxt.0, align 8, !tbaa !48
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %28 = add nsw i32 %25, %24
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %26, ptr %30, align 8, !tbaa !52
  %31 = tail call ptr @Perl_sv_newmortal() #8
  %32 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 %7
  %35 = getelementptr inbounds ptr, ptr %33, i64 %29
  tail call void @Perl_do_join(ptr noundef %31, ptr noundef %32, ptr noundef %34, ptr noundef %35) #8
  %36 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %31)
  %37 = tail call ptr @Perl_sv_2mortal(ptr noundef %36) #8
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %39 = sext i32 %25 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %37, ptr %40, align 8, !tbaa !52
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix_catfile(ptr noundef %0) #0 !prof !51 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %6 = load i32, ptr %4, align 4, !tbaa !53
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !58
  %25 = and i32 %24, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %32, label %71

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %34, ptr noundef nonnull dereferenceable(16) @.str.20, i64 16)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  %38 = icmp eq i32 %15, 1
  br i1 %38, label %154, label %39

39:                                               ; preds = %37
  %40 = add i32 %6, %15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %19, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %43)
  %45 = icmp eq i32 %15, 2
  br i1 %45, label %154, label %46

46:                                               ; preds = %39
  %47 = tail call ptr @Perl_sv_newmortal() #8
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #8
  %49 = load ptr, ptr @my_cxt.0, align 8, !tbaa !48
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 %41
  store ptr %49, ptr %51, align 8, !tbaa !52
  %52 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %54 = getelementptr inbounds ptr, ptr %53, i64 %20
  %55 = getelementptr inbounds ptr, ptr %53, i64 %41
  tail call void @Perl_do_join(ptr noundef %47, ptr noundef %52, ptr noundef %54, ptr noundef %55) #8
  %56 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %47)
  %57 = load ptr, ptr %56, align 8, !tbaa !67
  %58 = getelementptr inbounds %struct.xpv, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !68
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = getelementptr i8, ptr %63, i64 %59
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load i8, ptr %65, align 1, !tbaa !47
  %67 = icmp eq i8 %66, 47
  br i1 %67, label %70, label %68

68:                                               ; preds = %61, %46
  %69 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %56, ptr noundef %69, i32 noundef 2) #8
  br label %70

70:                                               ; preds = %68, %61
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %56, ptr noundef %44, i32 noundef 2) #8
  br label %154

71:                                               ; preds = %27, %18, %32
  tail call void @Perl_push_scope() #8
  %72 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %73 = getelementptr inbounds i32, ptr %72, i64 1
  store ptr %73, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %74 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !52
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = tail call ptr @Perl_markstack_grow() #8
  br label %78

78:                                               ; preds = %71, %76
  %79 = phi ptr [ %77, %76 ], [ %73, %71 ]
  %80 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %11, %81
  %83 = lshr exact i64 %82, 3
  %84 = trunc i64 %83 to i32
  store i32 %84, ptr %79, align 4, !tbaa !53
  %85 = load ptr, ptr @PL_stack_max, align 8, !tbaa !52
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %11
  %88 = icmp slt i64 %87, 16
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 2) #8
  br label %91

91:                                               ; preds = %78, %89
  %92 = phi ptr [ %90, %89 ], [ %3, %78 ]
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  store ptr %22, ptr %93, align 8, !tbaa !52
  %94 = icmp eq i32 %15, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %97 = add i32 %6, %15
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  br label %101

101:                                              ; preds = %91, %95
  %102 = phi ptr [ %100, %95 ], [ @PL_sv_undef, %91 ]
  %103 = getelementptr inbounds ptr, ptr %92, i64 2
  store ptr %102, ptr %103, align 8, !tbaa !52
  store ptr %103, ptr @PL_stack_sp, align 8, !tbaa !52
  %104 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.19, i32 noundef 2) #8
  %105 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %106 = load ptr, ptr %105, align 8, !tbaa !52
  tail call void @Perl_pop_scope() #8
  %107 = icmp slt i32 %15, 3
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = icmp eq ptr %106, null
  br i1 %109, label %154, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !70
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !70
  br label %154

114:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %115 = getelementptr inbounds ptr, ptr %105, i64 -2
  tail call void @Perl_push_scope() #8
  %116 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %117 = getelementptr inbounds i32, ptr %116, i64 1
  store ptr %117, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %118 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !52
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = tail call ptr @Perl_markstack_grow() #8
  br label %122

122:                                              ; preds = %114, %120
  %123 = phi ptr [ %121, %120 ], [ %117, %114 ]
  store i32 %6, ptr %123, align 4, !tbaa !53
  store ptr %115, ptr @PL_stack_sp, align 8, !tbaa !52
  %124 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.21, i32 noundef 2) #8
  %125 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  tail call void @Perl_pop_scope() #8
  %127 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !58
  %129 = and i32 %128, 2098176
  %130 = icmp eq i32 %129, 1024
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load ptr, ptr %126, align 8, !tbaa !67
  %133 = getelementptr inbounds %struct.xpv, ptr %132, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !68
  store i64 %134, ptr %2, align 8, !tbaa !71
  %135 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !47
  br label %139

137:                                              ; preds = %122
  %138 = call ptr @Perl_sv_2pv_flags(ptr noundef %126, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi ptr [ %136, %131 ], [ %138, %137 ]
  %141 = load i64, ptr %2, align 8, !tbaa !71
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = add i64 %141, -1
  %145 = getelementptr inbounds i8, ptr %140, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !47
  %147 = icmp ne i8 %146, 47
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i1 [ true, %139 ], [ %147, %143 ]
  %150 = call ptr @Perl_newSVsv(ptr noundef %126) #8
  br i1 %149, label %151, label %153

151:                                              ; preds = %148
  %152 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  call void @Perl_sv_catsv_flags(ptr noundef %150, ptr noundef %152, i32 noundef 2) #8
  br label %153

153:                                              ; preds = %151, %148
  call void @Perl_sv_catsv_flags(ptr noundef %150, ptr noundef %106, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %154

154:                                              ; preds = %110, %108, %153, %70, %39, %37
  %155 = phi ptr [ @PL_sv_undef, %37 ], [ %56, %70 ], [ %44, %39 ], [ %150, %153 ], [ %106, %108 ], [ %106, %110 ]
  %156 = call ptr @Perl_sv_2mortal(ptr noundef %155) #8
  %157 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %158 = getelementptr inbounds ptr, ptr %157, i64 %20
  store ptr %156, ptr %158, align 8, !tbaa !52
  %159 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %160 = getelementptr inbounds ptr, ptr %159, i64 %20
  store ptr %160, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Spec__Unix__fn_catfile(ptr nocapture readnone %0) #0 !prof !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !52
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !52
  %5 = load i32, ptr %3, align 4, !tbaa !53
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %1
  %16 = add i32 %5, %13
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %19)
  %21 = icmp eq i32 %13, 1
  br i1 %21, label %47, label %22

22:                                               ; preds = %15
  %23 = tail call ptr @Perl_sv_newmortal() #8
  %24 = tail call ptr @Perl_sv_2mortal(ptr noundef %20) #8
  %25 = load ptr, ptr @my_cxt.0, align 8, !tbaa !48
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 %17
  store ptr %25, ptr %27, align 8, !tbaa !52
  %28 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %30 = getelementptr inbounds ptr, ptr %29, i64 %7
  %31 = getelementptr inbounds ptr, ptr %29, i64 %17
  tail call void @Perl_do_join(ptr noundef %23, ptr noundef %28, ptr noundef %30, ptr noundef %31) #8
  %32 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %23)
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !68
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr i8, ptr %39, i64 %35
  %41 = getelementptr i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp eq i8 %42, 47
  br i1 %43, label %46, label %44

44:                                               ; preds = %37, %22
  %45 = load ptr, ptr @my_cxt.1, align 8, !tbaa !50
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %32, ptr noundef %45, i32 noundef 2) #8
  br label %46

46:                                               ; preds = %44, %37
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %32, ptr noundef %20, i32 noundef 2) #8
  br label %47

47:                                               ; preds = %46, %15, %1
  %48 = phi ptr [ @PL_sv_undef, %1 ], [ %32, %46 ], [ %20, %15 ]
  %49 = add nsw i32 %5, 1
  %50 = tail call ptr @Perl_sv_2mortal(ptr noundef %48) #8
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  store ptr %50, ptr %53, align 8, !tbaa !52
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !52
  %55 = getelementptr inbounds ptr, ptr %54, i64 %52
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !52
  ret void
}

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_getcwd_sv(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpv_mg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @Perl_my_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @THX_unix_canonpath(ptr noundef %0) unnamed_addr #0 !prof !51 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_get(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %1, %7
  %10 = load i32, ptr %3, align 4, !tbaa !58
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %152

19:                                               ; preds = %9
  %20 = and i32 %10, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !68
  store i64 %25, ptr %2, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  br label %30

28:                                               ; preds = %19
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #8
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load i64, ptr %2, align 8, !tbaa !71
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #8
  br label %152

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %31, i64 %32
  %38 = call ptr @Perl_newSV(i64 noundef %32) #8
  %39 = load i32, ptr %3, align 4, !tbaa !58
  %40 = and i32 %39, 536870912
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = or i32 %44, 536870912
  store i32 %45, ptr %43, align 4, !tbaa !58
  br label %46

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = load i8, ptr %31, align 1, !tbaa !47
  switch i8 %49, label %95 [
    i8 47, label %50
    i8 46, label %76
  ]

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 47, ptr %48, align 1, !tbaa !47
  br label %52

52:                                               ; preds = %56, %50
  %53 = phi ptr [ %31, %50 ], [ %57, %56 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !47
  switch i8 %55, label %95 [
    i8 47, label %56
    i8 46, label %58
  ]

56:                                               ; preds = %52, %62, %65, %73, %70
  %57 = phi ptr [ %54, %52 ], [ %54, %70 ], [ %54, %73 ], [ %59, %65 ], [ %59, %62 ]
  br label %52, !llvm.loop !72

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %53, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !47
  %61 = icmp eq i8 %60, 46
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %53, i64 3
  %64 = icmp eq ptr %63, %37
  br i1 %64, label %56, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %63, align 1, !tbaa !47
  %67 = icmp eq i8 %66, 47
  br i1 %67, label %56, label %68

68:                                               ; preds = %65, %58
  %69 = icmp eq i8 %55, 46
  br i1 %69, label %70, label %95

70:                                               ; preds = %68
  %71 = getelementptr inbounds i8, ptr %53, i64 2
  %72 = icmp eq ptr %71, %37
  br i1 %72, label %56, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 1, !tbaa !47
  %75 = icmp eq i8 %74, 47
  br i1 %75, label %56, label %95

76:                                               ; preds = %46
  %77 = getelementptr inbounds i8, ptr %31, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !47
  %79 = icmp eq i8 %78, 47
  br i1 %79, label %80, label %95

80:                                               ; preds = %76, %87
  %81 = phi ptr [ %85, %87 ], [ %31, %76 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %82, %80 ], [ %85, %83 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !47
  switch i8 %86, label %91 [
    i8 47, label %83
    i8 46, label %87
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %84, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !47
  %90 = icmp eq i8 %89, 47
  br i1 %90, label %80, label %91, !llvm.loop !73

91:                                               ; preds = %87, %83
  %92 = icmp eq ptr %85, %37
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 46, ptr %48, align 1, !tbaa !47
  br label %95

95:                                               ; preds = %73, %68, %52, %46, %76, %93, %91
  %96 = phi ptr [ %85, %93 ], [ %85, %91 ], [ %31, %76 ], [ %31, %46 ], [ %54, %52 ], [ %54, %68 ], [ %54, %73 ]
  %97 = phi ptr [ %94, %93 ], [ %48, %91 ], [ %48, %76 ], [ %48, %46 ], [ %51, %52 ], [ %51, %68 ], [ %51, %73 ]
  %98 = icmp eq ptr %96, %37
  br i1 %98, label %141, label %99

99:                                               ; preds = %95
  %100 = ptrtoint ptr %37 to i64
  %101 = ptrtoint ptr %96 to i64
  %102 = sub i64 %100, %101
  %103 = call ptr @memchr(ptr noundef nonnull %96, i32 noundef 47, i64 noundef %102) #10
  %104 = icmp eq ptr %103, null
  %105 = select i1 %104, ptr %37, ptr %103
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %106, %101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr nonnull align 1 %96, i64 %107, i1 false)
  %108 = getelementptr inbounds i8, ptr %97, i64 %107
  %109 = icmp eq ptr %105, %37
  br i1 %109, label %141, label %110

110:                                              ; preds = %99, %130
  %111 = phi ptr [ %139, %130 ], [ %108, %99 ]
  %112 = phi ptr [ %136, %130 ], [ %105, %99 ]
  br label %113

113:                                              ; preds = %118, %110
  %114 = phi ptr [ %112, %110 ], [ %119, %118 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !47
  %117 = icmp eq i8 %116, 47
  br i1 %117, label %118, label %120

118:                                              ; preds = %113, %127
  %119 = phi ptr [ %115, %113 ], [ %125, %127 ]
  br label %113, !llvm.loop !74

120:                                              ; preds = %113
  %121 = icmp eq ptr %115, %37
  br i1 %121, label %141, label %122

122:                                              ; preds = %120
  %123 = icmp eq i8 %116, 46
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = getelementptr inbounds i8, ptr %114, i64 2
  %126 = icmp eq ptr %125, %37
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = load i8, ptr %125, align 1, !tbaa !47
  %129 = icmp eq i8 %128, 47
  br i1 %129, label %118, label %130

130:                                              ; preds = %127, %122
  %131 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 47, ptr %111, align 1, !tbaa !47
  %132 = ptrtoint ptr %115 to i64
  %133 = sub i64 %100, %132
  %134 = call ptr @memchr(ptr noundef nonnull %115, i32 noundef 47, i64 noundef %133) #10
  %135 = icmp eq ptr %134, null
  %136 = select i1 %135, ptr %37, ptr %134
  %137 = ptrtoint ptr %136 to i64
  %138 = sub i64 %137, %132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr nonnull align 1 %115, i64 %138, i1 false)
  %139 = getelementptr inbounds i8, ptr %131, i64 %138
  %140 = icmp eq ptr %136, %37
  br i1 %140, label %141, label %110, !llvm.loop !75

141:                                              ; preds = %130, %124, %120, %99, %95
  %142 = phi ptr [ %97, %95 ], [ %108, %99 ], [ %111, %120 ], [ %111, %124 ], [ %139, %130 ]
  store i8 0, ptr %142, align 1, !tbaa !47
  %143 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !58
  %145 = or i32 %144, 17408
  store i32 %145, ptr %143, align 4, !tbaa !58
  %146 = load ptr, ptr %47, align 8, !tbaa !47
  %147 = ptrtoint ptr %142 to i64
  %148 = ptrtoint ptr %146 to i64
  %149 = sub i64 %147, %148
  %150 = load ptr, ptr %38, align 8, !tbaa !67
  %151 = getelementptr inbounds %struct.xpv, ptr %150, i64 0, i32 2
  store i64 %149, ptr %151, align 8, !tbaa !68
  br label %152

152:                                              ; preds = %9, %141, %34
  %153 = phi ptr [ %35, %34 ], [ %38, %141 ], [ @PL_sv_undef, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret ptr %153
}

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @boot_Cwd, ptr @Perl_xs_handshake, i64 1}
!36 = !{ptr @boot_Cwd, ptr @Perl_newXS_deffile, i64 10}
!37 = !{ptr @boot_Cwd, ptr @Perl_newSVpvn, i64 2}
!38 = !{ptr @boot_Cwd, ptr @Perl_xs_boot_epilog, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !43, i64 0}
!42 = !{!"cv", !43, i64 0, !46, i64 8, !46, i64 12, !44, i64 16}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!44, !44, i64 0}
!48 = !{!49, !43, i64 0}
!49 = !{!"", !43, i64 0, !43, i64 8}
!50 = !{!49, !43, i64 8}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !46, i64 0}
!54 = !{!55, !44, i64 35}
!55 = !{!"op", !43, i64 0, !43, i64 8, !43, i64 16, !56, i64 24, !46, i64 32, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !44, i64 34, !44, i64 35}
!56 = !{!"long", !44, i64 0}
!57 = !{!55, !56, i64 24}
!58 = !{!59, !46, i64 12}
!59 = !{!"sv", !43, i64 0, !46, i64 8, !46, i64 12, !44, i64 16}
!60 = !{!61, !61, i64 0}
!61 = !{!"_Bool", !44, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!59, !43, i64 0}
!68 = !{!69, !56, i64 16}
!69 = !{!"xpv", !43, i64 0, !44, i64 8, !56, i64 16, !44, i64 24}
!70 = !{!59, !46, i64 8}
!71 = !{!56, !56, i64 0}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !65, !66}
!74 = distinct !{!74, !66}
!75 = distinct !{!75, !66}
