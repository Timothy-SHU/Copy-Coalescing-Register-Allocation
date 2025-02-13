; ModuleID = 'ext/PerlIO-scalar/scalar.c'
source_filename = "ext/PerlIO-scalar/scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._PerlIO_funcs = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.PerlIOScalar = type { %struct._PerlIO, ptr, i64 }
%struct._PerlIO = type { ptr, ptr, i32, i32, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PL_no_modify = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@code_point_warning = internal constant [82 x i8] c"Strings with code points over 0xFF may not be mapped into in-memory file handles\0A\00", align 16
@.str.2 = private unnamed_addr constant [22 x i8] c"Offset outside string\00", align 1
@PerlIO_scalar = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.3, i64 48, i32 3, ptr @PerlIOScalar_pushed, ptr @PerlIOScalar_popped, ptr @PerlIOScalar_open, ptr @PerlIOBase_binmode, ptr @PerlIOScalar_arg, ptr @PerlIOScalar_fileno, ptr @PerlIOScalar_dup, ptr @PerlIOScalar_read, ptr null, ptr @PerlIOScalar_write, ptr @PerlIOScalar_seek, ptr @PerlIOScalar_tell, ptr @PerlIOScalar_close, ptr @PerlIOScalar_flush, ptr @PerlIOScalar_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOScalar_get_base, ptr @PerlIOScalar_bufsiz, ptr @PerlIOScalar_get_ptr, ptr @PerlIOScalar_get_cnt, ptr @PerlIOScalar_set_ptrcnt }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ext/PerlIO-scalar/scalar.c\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOScalar_pushed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !35 {
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = icmp eq ptr %2, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = and i32 %9, 65280
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 8
  %14 = or i1 %11, %13
  %15 = and i32 %9, 16777471
  %16 = icmp eq i32 %15, 16777226
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %82

18:                                               ; preds = %7
  %19 = and i32 %9, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = and i32 %25, 134283264
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %21
  %29 = and i32 %25, 268435456
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne ptr %1, null
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8, ptr %1, align 1, !tbaa !43
  %35 = icmp eq i8 %34, 114
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 8) #10
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @PL_no_modify) #10
  br label %39

39:                                               ; preds = %38, %36
  %40 = tail call ptr @__errno_location() #11
  store i32 22, ptr %40, align 4, !tbaa !44
  br label %169

41:                                               ; preds = %33, %28, %21
  %42 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %23) #12
  %43 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %23, ptr %43, align 8, !tbaa !45
  %44 = load i32, ptr %24, align 4, !tbaa !40
  %45 = and i32 %44, 2097152
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @Perl_mg_get(ptr noundef nonnull %23) #10
  %49 = load ptr, ptr %43, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !40
  br label %52

52:                                               ; preds = %41, %47
  %53 = phi i32 [ %44, %41 ], [ %51, %47 ]
  %54 = phi ptr [ %23, %41 ], [ %49, %47 ]
  %55 = and i32 %53, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = and i32 %53, 64256
  %59 = icmp ne i32 %58, 0
  %60 = and i32 %53, 255
  %61 = icmp eq i32 %60, 8
  %62 = or i1 %59, %61
  %63 = and i32 %53, 16777471
  %64 = icmp eq i32 %63, 16777226
  %65 = or i1 %64, %62
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %54, ptr noundef null, i32 noundef 32) #10
  %68 = load ptr, ptr %43, align 8, !tbaa !45
  br label %85

69:                                               ; preds = %18
  %70 = and i32 %9, 2098176
  %71 = icmp eq i32 %70, 1024
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  br label %77

75:                                               ; preds = %69
  %76 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef null, i32 noundef 2) #10
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi ptr [ %74, %72 ], [ %76, %75 ]
  %79 = tail call ptr @Perl_get_sv(ptr noundef %78, i32 noundef 3) #10
  %80 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %79) #12
  %81 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %79, ptr %81, align 8, !tbaa !45
  br label %85

82:                                               ; preds = %7, %4
  %83 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.1, i64 noundef 0) #10
  %84 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %83, ptr %84, align 8, !tbaa !45
  br label %85

85:                                               ; preds = %57, %77, %66, %52, %82
  %86 = phi ptr [ %54, %57 ], [ %79, %77 ], [ %68, %66 ], [ %54, %52 ], [ %83, %82 ]
  %87 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %88 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !40
  %90 = and i32 %89, 255
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %86, i32 noundef 3) #10
  br label %93

93:                                               ; preds = %92, %85
  %94 = tail call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef %3) #10
  %95 = load ptr, ptr %87, align 8, !tbaa !45
  %96 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !40
  %98 = and i32 %97, 65280
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %97, 255
  %101 = icmp eq i32 %100, 8
  %102 = or i1 %99, %101
  %103 = and i32 %97, 16777471
  %104 = icmp eq i32 %103, 16777226
  %105 = or i1 %104, %102
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load ptr, ptr %0, align 8, !tbaa !36
  %108 = getelementptr inbounds %struct._PerlIO, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !49
  %110 = and i32 %109, 4096
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %93, %106
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %95, i32 noundef 0) #10
  %113 = load ptr, ptr %87, align 8, !tbaa !45
  %114 = load ptr, ptr %113, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.xpv, ptr %114, i64 0, i32 2
  store i64 0, ptr %115, align 8, !tbaa !51
  %116 = getelementptr inbounds %struct.sv, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !40
  %118 = and i32 %117, 1024
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.sv, ptr %113, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !43
  store i8 0, ptr %122, align 1, !tbaa !43
  %123 = load ptr, ptr %87, align 8, !tbaa !45
  %124 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !40
  br label %126

126:                                              ; preds = %112, %120, %106
  %127 = phi i32 [ %117, %112 ], [ %125, %120 ], [ %97, %106 ]
  %128 = phi ptr [ %113, %112 ], [ %123, %120 ], [ %95, %106 ]
  %129 = and i32 %127, 536870912
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %126
  %132 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %128, i1 noundef zeroext true) #10
  br i1 %132, label %139, label %133

133:                                              ; preds = %131
  %134 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #10
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #10
  br label %136

136:                                              ; preds = %135, %133
  %137 = tail call ptr @__errno_location() #11
  store i32 22, ptr %137, align 4, !tbaa !44
  %138 = load ptr, ptr %87, align 8, !tbaa !45
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %138) #12
  store ptr null, ptr %87, align 8, !tbaa !45
  br label %169

139:                                              ; preds = %131, %126
  %140 = load ptr, ptr %0, align 8, !tbaa !36
  %141 = getelementptr inbounds %struct._PerlIO, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !49
  %143 = and i32 %142, 8192
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %139
  %146 = load ptr, ptr %87, align 8, !tbaa !45
  %147 = getelementptr inbounds %struct.sv, ptr %146, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !40
  %149 = and i32 %148, 65280
  %150 = icmp ne i32 %149, 0
  %151 = and i32 %148, 255
  %152 = icmp eq i32 %151, 8
  %153 = or i1 %150, %152
  %154 = and i32 %148, 16777471
  %155 = icmp eq i32 %154, 16777226
  %156 = or i1 %155, %153
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = tail call i64 @Perl_sv_len(ptr noundef nonnull %146) #10
  br label %159

159:                                              ; preds = %139, %157, %145
  %160 = phi i64 [ %158, %157 ], [ 0, %145 ], [ 0, %139 ]
  %161 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %160, ptr %161, align 8, !tbaa !53
  %162 = load ptr, ptr %87, align 8, !tbaa !45
  %163 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !40
  %165 = and i32 %164, 4194304
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %159
  %168 = tail call i32 @Perl_mg_set(ptr noundef nonnull %162) #10
  br label %169

169:                                              ; preds = %167, %159, %136, %39
  %170 = phi i64 [ -1, %39 ], [ -1, %136 ], [ %94, %159 ], [ %94, %167 ]
  ret i64 %170
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !35 !PGOFuncName !54 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !55
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @PerlIOBase_pushed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !55
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #10
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOScalar_popped(ptr nocapture noundef readonly %0) #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %6, %1
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOScalar_close(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i64 @PerlIOBase_close(ptr noundef %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = and i32 %5, -393217
  store i32 %6, ptr %4, align 8, !tbaa !49
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @PerlIOBase_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_fileno(ptr nocapture readnone %0) #5 !prof !35 {
  ret i64 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOScalar_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 !prof !35 {
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  switch i32 %2, label %26 [
    i32 0, label %28
    i32 1, label %6
    i32 2, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = add nsw i64 %8, %1
  br label %28

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %11 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = and i32 %14, 2098176
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %12, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  br label %22

20:                                               ; preds = %10
  %21 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %12, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %4, %20 ], [ %19, %17 ]
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = add i64 %24, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %28

26:                                               ; preds = %3
  %27 = tail call ptr @__errno_location() #11
  store i32 22, ptr %27, align 4, !tbaa !44
  br label %38

28:                                               ; preds = %3, %22, %6
  %29 = phi i64 [ %25, %22 ], [ %9, %6 ], [ %1, %3 ]
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call zeroext i1 @Perl_ckwarn(i32 noundef 8) #10
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.2) #10
  br label %34

34:                                               ; preds = %33, %31
  %35 = tail call ptr @__errno_location() #11
  store i32 22, ptr %35, align 4, !tbaa !44
  br label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %29, ptr %37, align 8, !tbaa !53
  br label %38

38:                                               ; preds = %36, %34, %26
  %39 = phi i64 [ -1, %26 ], [ -1, %34 ], [ 0, %36 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOScalar_tell(ptr nocapture noundef readonly %0) #6 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !53
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOScalar_read(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #0 !prof !35 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = or i32 %9, 2048
  store i32 %13, ptr %8, align 8, !tbaa !49
  %14 = tail call ptr @__errno_location() #11
  store i32 9, ptr %14, align 4, !tbaa !44
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #10
  br label %69

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.PerlIOScalar, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !40
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load ptr, ptr %17, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !51
  store i64 %25, ptr %4, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  br label %31

28:                                               ; preds = %15
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %4, i32 noundef 2) #10
  %30 = load i32, ptr %18, align 4, !tbaa !40
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i32 [ %19, %22 ], [ %30, %28 ]
  %33 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %34 = and i32 %32, 536870912
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %17, i1 noundef zeroext true) #10
  br i1 %37, label %38, label %50

38:                                               ; preds = %36
  %39 = load i32, ptr %18, align 4, !tbaa !40
  %40 = and i32 %39, 2098176
  %41 = icmp eq i32 %40, 1024
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load ptr, ptr %17, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !51
  store i64 %45, ptr %4, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  br label %55

48:                                               ; preds = %38
  %49 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %4, i32 noundef 0) #10
  br label %55

50:                                               ; preds = %36
  %51 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #10
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #10
  br label %53

53:                                               ; preds = %52, %50
  %54 = tail call ptr @__errno_location() #11
  store i32 22, ptr %54, align 4, !tbaa !44
  br label %67

55:                                               ; preds = %42, %48, %31
  %56 = phi ptr [ %33, %31 ], [ %47, %42 ], [ %49, %48 ]
  %57 = load i64, ptr %4, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.PerlIOScalar, ptr %7, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !53
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = sub i64 %57, %59
  %63 = call i64 @llvm.umin.i64(i64 %62, i64 %2)
  %64 = getelementptr inbounds i8, ptr %56, i64 %59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %64, i64 %63, i1 false)
  %65 = load i64, ptr %58, align 8, !tbaa !53
  %66 = add nsw i64 %65, %63
  store i64 %66, ptr %58, align 8, !tbaa !53
  br label %67

67:                                               ; preds = %55, %61, %53
  %68 = phi i64 [ %63, %61 ], [ -1, %53 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %69

69:                                               ; preds = %3, %67, %12
  %70 = phi i64 [ %68, %67 ], [ 0, %12 ], [ 0, %3 ]
  ret i64 %70
}

; Function Attrs: optsize
declare void @Perl_PerlIO_save_errno(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOScalar_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %171, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @Perl_mg_get(ptr noundef nonnull %11) #10
  %18 = load i32, ptr %12, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi i32 [ %13, %9 ], [ %18, %16 ]
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %11, i32 noundef 0) #10
  %24 = load i32, ptr %12, align 4, !tbaa !40
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ %20, %19 ]
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  %35 = and i32 %26, 430018304
  %36 = icmp ne i32 %35, 1024
  %37 = and i1 %36, %34
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %11, ptr noundef null, i32 noundef 0) #10
  %40 = load i32, ptr %12, align 4, !tbaa !40
  br label %41

41:                                               ; preds = %25, %38
  %42 = phi i32 [ %26, %25 ], [ %40, %38 ]
  %43 = and i32 %42, 536870912
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %11, i1 noundef zeroext true) #10
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #10
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #10
  br label %50

50:                                               ; preds = %49, %47
  %51 = tail call ptr @__errno_location() #11
  store i32 22, ptr %51, align 4, !tbaa !44
  br label %171

52:                                               ; preds = %45, %41
  %53 = load ptr, ptr %0, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct._PerlIO, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !49
  %56 = and i32 %55, 8192
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %12, align 4, !tbaa !40
  %60 = and i32 %59, 268435456
  %61 = icmp eq i32 %60, 0
  %62 = load ptr, ptr %11, align 8, !tbaa !50
  br i1 %61, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !51
  %66 = add i64 %2, 1
  %67 = add i64 %66, %65
  br label %76

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !43
  %71 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !51
  %73 = add i64 %2, 1
  %74 = add i64 %73, %72
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %63, %68
  %77 = phi i64 [ %67, %63 ], [ %74, %68 ]
  %78 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %77) #10
  %79 = load ptr, ptr %11, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !51
  br label %85

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i64 [ %81, %76 ], [ %72, %82 ]
  %87 = phi ptr [ %78, %76 ], [ %84, %82 ]
  %88 = add i64 %86, %2
  %89 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  store i64 %88, ptr %89, align 8, !tbaa !53
  br label %152

90:                                               ; preds = %52
  %91 = load ptr, ptr %11, align 8, !tbaa !50
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !51
  %94 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !53
  %96 = icmp ugt i64 %95, %93
  br i1 %96, label %97, label %125

97:                                               ; preds = %90
  %98 = load i32, ptr %12, align 4, !tbaa !40
  %99 = and i32 %98, 268435456
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = add i64 %2, 1
  %103 = add i64 %102, %95
  br label %110

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 3
  %106 = load i64, ptr %105, align 8, !tbaa !43
  %107 = add i64 %2, 1
  %108 = add i64 %107, %95
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101, %104
  %111 = phi i64 [ %103, %101 ], [ %108, %104 ]
  %112 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %111) #10
  %113 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = load i64, ptr %94, align 8, !tbaa !53
  br label %119

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !43
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i64 [ %115, %110 ], [ %95, %116 ]
  %121 = phi ptr [ %114, %110 ], [ %118, %116 ]
  %122 = phi ptr [ %112, %110 ], [ %118, %116 ]
  %123 = getelementptr inbounds i8, ptr %121, i64 %93
  %124 = sub i64 %120, %93
  tail call void @llvm.memset.p0.i64(ptr align 1 %123, i8 0, i64 %124, i1 false)
  br label %148

125:                                              ; preds = %90
  %126 = add i64 %95, %2
  %127 = icmp ult i64 %126, %93
  br i1 %127, label %145, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %12, align 4, !tbaa !40
  %130 = and i32 %129, 268435456
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = add i64 %126, 1
  br label %139

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 3
  %136 = load i64, ptr %135, align 8, !tbaa !43
  %137 = add i64 %126, 1
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132, %134
  %140 = phi i64 [ %133, %132 ], [ %137, %134 ]
  %141 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %140) #10
  br label %148

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !43
  br label %148

145:                                              ; preds = %125
  %146 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !43
  br label %148

148:                                              ; preds = %139, %142, %145, %119
  %149 = phi ptr [ %122, %119 ], [ %147, %145 ], [ %141, %139 ], [ %144, %142 ]
  %150 = load i64, ptr %94, align 8, !tbaa !53
  %151 = add i64 %150, %2
  store i64 %151, ptr %94, align 8, !tbaa !53
  br label %152

152:                                              ; preds = %148, %85
  %153 = phi i64 [ %86, %85 ], [ %150, %148 ]
  %154 = phi ptr [ %87, %85 ], [ %149, %148 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 %153
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %155, ptr align 1 %1, i64 %2, i1 false)
  %156 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !53
  %158 = load ptr, ptr %11, align 8, !tbaa !50
  %159 = getelementptr inbounds %struct.xpv, ptr %158, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !51
  %161 = icmp ugt i64 %157, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  store i64 %157, ptr %159, align 8, !tbaa !51
  %163 = getelementptr inbounds i8, ptr %154, i64 %157
  store i8 0, ptr %163, align 1, !tbaa !43
  br label %164

164:                                              ; preds = %162, %152
  %165 = load i32, ptr %12, align 4, !tbaa !40
  %166 = or i32 %165, 17408
  store i32 %166, ptr %12, align 4, !tbaa !40
  %167 = and i32 %165, 4194304
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = tail call i32 @Perl_mg_set(ptr noundef nonnull %11) #10
  br label %171

171:                                              ; preds = %3, %50, %164, %169
  %172 = phi i64 [ 0, %50 ], [ %2, %164 ], [ %2, %169 ], [ 0, %3 ]
  ret i64 %172
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_fill(ptr nocapture readnone %0) #5 !prof !35 {
  ret i64 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_flush(ptr nocapture readnone %0) #5 !prof !35 {
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOScalar_get_base(ptr nocapture noundef readonly %0) #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @Perl_mg_get(ptr noundef nonnull %9) #10
  %16 = load ptr, ptr %8, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %7, %14
  %20 = phi i32 [ %11, %7 ], [ %18, %14 ]
  %21 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %22 = and i32 %20, 2098176
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %29

27:                                               ; preds = %19
  %28 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef null, i32 noundef 2) #10
  br label %29

29:                                               ; preds = %1, %24, %27
  %30 = phi ptr [ %26, %24 ], [ %28, %27 ], [ null, %1 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOScalar_get_ptr(ptr nocapture noundef readonly %0) #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @PerlIOScalar_get_base(ptr noundef nonnull %0) #12
  %9 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOScalar_get_cnt(ptr nocapture noundef readonly %0) #0 !prof !35 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %9 = getelementptr inbounds %struct.PerlIOScalar, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr %10, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  br label %20

18:                                               ; preds = %8
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %2, %18 ], [ %17, %15 ]
  %22 = load i64, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.PerlIOScalar, ptr %3, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = icmp sgt i64 %22, %24
  %26 = sub i64 %22, %24
  %27 = select i1 %25, i64 %26, i64 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %28

28:                                               ; preds = %1, %20
  %29 = phi i64 [ %27, %20 ], [ 0, %1 ]
  ret i64 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOScalar_bufsiz(ptr nocapture noundef readonly %0) #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @Perl_mg_get(ptr noundef nonnull %9) #10
  %16 = load ptr, ptr %8, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %9, %7 ], [ %16, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %1, %17
  %23 = phi i64 [ %21, %17 ], [ 0, %1 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOScalar_set_ptrcnt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i64 noundef %2) #0 !prof !35 {
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load ptr, ptr %7, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  br label %17

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %4, %15 ], [ %14, %12 ]
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = sub i64 %19, %2
  %21 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %20, ptr %21, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOScalar_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 %4, i32 %5, i32 %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #0 !prof !35 {
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %9, align 8, !tbaa !36
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #10
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !40
  %20 = and i32 %19, 3072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %7, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call ptr @PerlIO_allocate() #10
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %7, %22 ], [ %25, %24 ]
  %28 = tail call ptr @PerlIO_push(ptr noundef %27, ptr noundef %0, ptr noundef %3, ptr noundef nonnull %17) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct._PerlIO, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = or i32 %33, 2097152
  store i32 %34, ptr %32, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %16, %26, %30
  %36 = phi ptr [ %28, %30 ], [ null, %26 ], [ null, %16 ]
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @PerlIO_arg_fetch(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_allocate() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOScalar_arg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @PerlIO_sv_dup(ptr noundef %6, ptr noundef %1) #10
  br label %18

11:                                               ; preds = %3
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_newSVsv(ptr noundef %6) #10
  br label %18

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %6) #12
  br label %18

18:                                               ; preds = %14, %16, %9
  %19 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %6, %16 ]
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %19) #10
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @PerlIO_sv_dup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOScalar_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !35 {
  %5 = load ptr, ptr %1, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.1, i64 noundef 0) #10
  store ptr %8, ptr %6, align 8, !tbaa !45
  %9 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !45
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %12) #12
  store ptr %7, ptr %6, align 8, !tbaa !45
  br label %25

13:                                               ; preds = %4
  %14 = load ptr, ptr %9, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.PerlIOScalar, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %16) #12
  %17 = load ptr, ptr %6, align 8, !tbaa !45
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %17) #12
  store ptr %7, ptr %6, align 8, !tbaa !45
  %18 = tail call ptr @PerlIOScalar_arg(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #12
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %20) #12
  store ptr %20, ptr %15, align 8, !tbaa !45
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %18) #12
  %22 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.PerlIOScalar, ptr %14, i64 0, i32 2
  store i64 %23, ptr %24, align 8, !tbaa !53
  br label %25

25:                                               ; preds = %11, %13
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @PerlIOBase_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @PerlIOBase_binmode(ptr noundef) #2

; Function Attrs: optsize
declare i64 @PerlIOBase_eof(ptr noundef) #2

; Function Attrs: optsize
declare i64 @PerlIOBase_error(ptr noundef) #2

; Function Attrs: optsize
declare void @PerlIOBase_clearerr(ptr noundef) #2

; Function Attrs: optsize
declare void @PerlIOBase_setlinebuf(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_PerlIO__scalar(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_scalar) #10
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #10
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PerlIO_define_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !42, i64 12}
!41 = !{!"sv", !37, i64 0, !42, i64 8, !42, i64 12, !38, i64 16}
!42 = !{!"int", !38, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !37, i64 32}
!46 = !{!"", !47, i64 0, !37, i64 32, !48, i64 40}
!47 = !{!"_PerlIO", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20, !37, i64 24}
!48 = !{!"long", !38, i64 0}
!49 = !{!47, !42, i64 16}
!50 = !{!41, !37, i64 0}
!51 = !{!52, !48, i64 16}
!52 = !{!"xpv", !37, i64 0, !38, i64 8, !48, i64 16, !38, i64 24}
!53 = !{!46, !48, i64 40}
!54 = !{!"scalar.c:S_SvREFCNT_inc"}
!55 = !{!41, !42, i64 8}
!56 = !{!"scalar.c:S_SvREFCNT_dec"}
!57 = !{!48, !48, i64 0}
