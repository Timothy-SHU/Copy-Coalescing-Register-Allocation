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
@.str.3 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@PerlIO_scalar = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.3, i64 48, i32 3, ptr @PerlIOScalar_pushed, ptr @PerlIOScalar_popped, ptr @PerlIOScalar_open, ptr @PerlIOBase_binmode, ptr @PerlIOScalar_arg, ptr @PerlIOScalar_fileno, ptr @PerlIOScalar_dup, ptr @PerlIOScalar_read, ptr null, ptr @PerlIOScalar_write, ptr @PerlIOScalar_seek, ptr @PerlIOScalar_tell, ptr @PerlIOScalar_close, ptr @PerlIOScalar_flush, ptr @PerlIOScalar_fill, ptr @PerlIOBase_eof, ptr @PerlIOBase_error, ptr @PerlIOBase_clearerr, ptr @PerlIOBase_setlinebuf, ptr @PerlIOScalar_get_base, ptr @PerlIOScalar_bufsiz, ptr @PerlIOScalar_get_ptr, ptr @PerlIOScalar_get_cnt, ptr @PerlIOScalar_set_ptrcnt }, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"ext/PerlIO-scalar/scalar.c\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOScalar_pushed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !34 {
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = icmp eq ptr %2, null
  br i1 %6, label %88, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = and i32 %9, 65280
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 8
  %14 = or i1 %11, %13
  %15 = and i32 %9, 16777471
  %16 = icmp eq i32 %15, 16777226
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %88

18:                                               ; preds = %7
  %19 = and i32 %9, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %70, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !39
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
  %34 = load i8, ptr %1, align 1, !tbaa !42
  %35 = icmp eq i8 %34, 114
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 8) #9
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull @PL_no_modify) #9
  br label %39

39:                                               ; preds = %38, %36
  %40 = tail call ptr @__errno_location() #10
  store i32 22, ptr %40, align 4, !tbaa !43
  br label %182

41:                                               ; preds = %33, %28, %21
  %42 = icmp eq ptr %23, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !44
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %41, %43
  %48 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %23, ptr %48, align 8, !tbaa !45
  %49 = and i32 %25, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @Perl_mg_get(ptr noundef %23) #9
  br label %53

53:                                               ; preds = %47, %51
  %54 = load ptr, ptr %48, align 8, !tbaa !45
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !39
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = and i32 %56, 64256
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %56, 255
  %63 = icmp eq i32 %62, 8
  %64 = or i1 %61, %63
  %65 = and i32 %56, 16777471
  %66 = icmp eq i32 %65, 16777226
  %67 = or i1 %66, %64
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %54, ptr noundef null, i32 noundef 32) #9
  br label %91

70:                                               ; preds = %18
  %71 = and i32 %9, 2098176
  %72 = icmp eq i32 %71, 1024
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !42
  br label %78

76:                                               ; preds = %70
  %77 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef null, i32 noundef 2) #9
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi ptr [ %75, %73 ], [ %77, %76 ]
  %80 = tail call ptr @Perl_get_sv(ptr noundef %79, i32 noundef 3) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !44
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !44
  br label %86

86:                                               ; preds = %78, %82
  %87 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %80, ptr %87, align 8, !tbaa !45
  br label %91

88:                                               ; preds = %7, %4
  %89 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.1, i64 noundef 0) #9
  %90 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  store ptr %89, ptr %90, align 8, !tbaa !45
  br label %91

91:                                               ; preds = %59, %86, %68, %53, %88
  %92 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !39
  %96 = and i32 %95, 255
  %97 = icmp ugt i32 %96, 2
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  tail call void @Perl_sv_upgrade(ptr noundef %93, i32 noundef 3) #9
  br label %99

99:                                               ; preds = %98, %91
  %100 = tail call i64 @PerlIOBase_pushed(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef %3) #9
  %101 = load ptr, ptr %92, align 8, !tbaa !45
  %102 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !39
  %104 = and i32 %103, 65280
  %105 = icmp ne i32 %104, 0
  %106 = and i32 %103, 255
  %107 = icmp eq i32 %106, 8
  %108 = or i1 %105, %107
  %109 = and i32 %103, 16777471
  %110 = icmp eq i32 %109, 16777226
  %111 = or i1 %110, %108
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load ptr, ptr %0, align 8, !tbaa !35
  %114 = getelementptr inbounds %struct._PerlIO, ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !49
  %116 = and i32 %115, 4096
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %112, %99
  tail call void @Perl_sv_force_normal_flags(ptr noundef %101, i32 noundef 0) #9
  %119 = load ptr, ptr %92, align 8, !tbaa !45
  %120 = load ptr, ptr %119, align 8, !tbaa !50
  %121 = getelementptr inbounds %struct.xpv, ptr %120, i64 0, i32 2
  store i64 0, ptr %121, align 8, !tbaa !51
  %122 = getelementptr inbounds %struct.sv, ptr %119, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !39
  %124 = and i32 %123, 1024
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.sv, ptr %119, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !42
  store i8 0, ptr %128, align 1, !tbaa !42
  br label %129

129:                                              ; preds = %118, %126, %112
  %130 = load ptr, ptr %92, align 8, !tbaa !45
  %131 = getelementptr inbounds %struct.sv, ptr %130, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !39
  %133 = and i32 %132, 536870912
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %152, label %135

135:                                              ; preds = %129
  %136 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %130, i1 noundef zeroext true) #9
  br i1 %136, label %152, label %137

137:                                              ; preds = %135
  %138 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #9
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #9
  br label %140

140:                                              ; preds = %139, %137
  %141 = tail call ptr @__errno_location() #10
  store i32 22, ptr %141, align 4, !tbaa !43
  %142 = load ptr, ptr %92, align 8, !tbaa !45
  %143 = icmp eq ptr %142, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.sv, ptr %142, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !44
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = add i32 %146, -1
  store i32 %149, ptr %145, align 8, !tbaa !44
  br label %151

150:                                              ; preds = %144
  tail call void @Perl_sv_free2(ptr noundef nonnull %142, i32 noundef %146) #9
  br label %151

151:                                              ; preds = %140, %148, %150
  store ptr null, ptr %92, align 8, !tbaa !45
  br label %182

152:                                              ; preds = %135, %129
  %153 = load ptr, ptr %0, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct._PerlIO, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !49
  %156 = and i32 %155, 8192
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %92, align 8, !tbaa !45
  %160 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !39
  %162 = and i32 %161, 65280
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %161, 255
  %165 = icmp eq i32 %164, 8
  %166 = or i1 %163, %165
  %167 = and i32 %161, 16777471
  %168 = icmp eq i32 %167, 16777226
  %169 = or i1 %168, %166
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = tail call i64 @Perl_sv_len(ptr noundef %159) #9
  br label %172

172:                                              ; preds = %152, %170, %158
  %173 = phi i64 [ %171, %170 ], [ 0, %158 ], [ 0, %152 ]
  %174 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %173, ptr %174, align 8, !tbaa !53
  %175 = load ptr, ptr %92, align 8, !tbaa !45
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !39
  %178 = and i32 %177, 4194304
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %172
  %181 = tail call i32 @Perl_mg_set(ptr noundef %175) #9
  br label %182

182:                                              ; preds = %180, %172, %151, %39
  %183 = phi i64 [ -1, %39 ], [ -1, %151 ], [ %100, %172 ], [ %100, %180 ]
  ret i64 %183
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PerlIOBase_pushed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @Perl_sv_len(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOScalar_popped(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = add i32 %8, -1
  store i32 %11, ptr %7, align 8, !tbaa !44
  br label %13

12:                                               ; preds = %6
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %8) #9
  br label %13

13:                                               ; preds = %10, %12
  store ptr null, ptr %3, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %13, %1
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOScalar_close(ptr noundef %0) #0 !prof !34 {
  %2 = tail call i64 @PerlIOBase_close(ptr noundef %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = and i32 %5, -393217
  store i32 %6, ptr %4, align 8, !tbaa !49
  ret i64 %2
}

declare i64 @PerlIOBase_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_fileno(ptr nocapture readnone %0) #4 !prof !34 {
  ret i64 -1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOScalar_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %11 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !39
  %15 = and i32 %14, 2098176
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load ptr, ptr %12, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !51
  store i64 %20, ptr %4, align 8, !tbaa !54
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef %12, ptr noundef nonnull %4, i32 noundef 2) #9
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, ptr %4, align 8, !tbaa !54
  %25 = add i64 %24, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %28

26:                                               ; preds = %3
  %27 = tail call ptr @__errno_location() #10
  store i32 22, ptr %27, align 4, !tbaa !43
  br label %38

28:                                               ; preds = %3, %23, %6
  %29 = phi i64 [ %25, %23 ], [ %9, %6 ], [ %1, %3 ]
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call zeroext i1 @Perl_ckwarn(i32 noundef 8) #9
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.2) #9
  br label %34

34:                                               ; preds = %33, %31
  %35 = tail call ptr @__errno_location() #10
  store i32 22, ptr %35, align 4, !tbaa !43
  br label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %29, ptr %37, align 8, !tbaa !53
  br label %38

38:                                               ; preds = %36, %34, %26
  %39 = phi i64 [ -1, %26 ], [ -1, %34 ], [ 0, %36 ]
  ret i64 %39
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOScalar_tell(ptr nocapture noundef readonly %0) #5 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !53
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOScalar_read(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct._PerlIO, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = or i32 %9, 2048
  store i32 %13, ptr %8, align 8, !tbaa !49
  %14 = tail call ptr @__errno_location() #10
  store i32 9, ptr %14, align 4, !tbaa !43
  tail call void @Perl_PerlIO_save_errno(ptr noundef nonnull %0) #9
  br label %68

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.PerlIOScalar, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load ptr, ptr %17, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !51
  store i64 %25, ptr %4, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  br label %30

28:                                               ; preds = %15
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 2) #9
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load i32, ptr %18, align 4, !tbaa !39
  %33 = and i32 %32, 536870912
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %17, i1 noundef zeroext true) #9
  br i1 %36, label %37, label %49

37:                                               ; preds = %35
  %38 = load i32, ptr %18, align 4, !tbaa !39
  %39 = and i32 %38, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load ptr, ptr %17, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !51
  store i64 %44, ptr %4, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  br label %54

47:                                               ; preds = %37
  %48 = call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 0) #9
  br label %54

49:                                               ; preds = %35
  %50 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #9
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #9
  br label %52

52:                                               ; preds = %51, %49
  %53 = tail call ptr @__errno_location() #10
  store i32 22, ptr %53, align 4, !tbaa !43
  br label %66

54:                                               ; preds = %41, %47, %30
  %55 = phi ptr [ %31, %30 ], [ %46, %41 ], [ %48, %47 ]
  %56 = load i64, ptr %4, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.PerlIOScalar, ptr %7, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !53
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = sub i64 %56, %58
  %62 = call i64 @llvm.umin.i64(i64 %61, i64 %2)
  %63 = getelementptr inbounds i8, ptr %55, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %63, i64 %62, i1 false)
  %64 = load i64, ptr %57, align 8, !tbaa !53
  %65 = add nsw i64 %64, %62
  store i64 %65, ptr %57, align 8, !tbaa !53
  br label %66

66:                                               ; preds = %54, %60, %52
  %67 = phi i64 [ %62, %60 ], [ -1, %52 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %68

68:                                               ; preds = %3, %66, %12
  %69 = phi i64 [ %67, %66 ], [ 0, %12 ], [ 0, %3 ]
  ret i64 %69
}

declare void @Perl_PerlIO_save_errno(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOScalar_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %160, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @Perl_mg_get(ptr noundef %11) #9
  br label %18

18:                                               ; preds = %9, %16
  %19 = load i32, ptr %12, align 4, !tbaa !39
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @Perl_sv_force_normal_flags(ptr noundef %11, i32 noundef 0) #9
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, ptr %12, align 4, !tbaa !39
  %25 = and i32 %24, 65280
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 255
  %28 = icmp eq i32 %27, 8
  %29 = or i1 %26, %28
  %30 = and i32 %24, 16777471
  %31 = icmp eq i32 %30, 16777226
  %32 = or i1 %31, %29
  %33 = and i32 %24, 430018304
  %34 = icmp ne i32 %33, 1024
  %35 = and i1 %34, %32
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %11, ptr noundef null, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %23, %36
  %39 = load i32, ptr %12, align 4, !tbaa !39
  %40 = and i32 %39, 536870912
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %11, i1 noundef zeroext true) #9
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #9
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @code_point_warning) #9
  br label %47

47:                                               ; preds = %46, %44
  %48 = tail call ptr @__errno_location() #10
  store i32 22, ptr %48, align 4, !tbaa !43
  br label %160

49:                                               ; preds = %42, %38
  %50 = load ptr, ptr %0, align 8, !tbaa !35
  %51 = getelementptr inbounds %struct._PerlIO, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !49
  %53 = and i32 %52, 8192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %12, align 4, !tbaa !39
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load ptr, ptr %11, align 8, !tbaa !50
  %61 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !42
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !51
  %65 = add i64 %2, 1
  %66 = add i64 %65, %64
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59, %55
  %69 = load ptr, ptr %11, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.xpv, ptr %69, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !51
  %72 = add i64 %2, 1
  %73 = add i64 %72, %71
  %74 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %73) #9
  br label %78

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !42
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi ptr [ %74, %68 ], [ %77, %75 ]
  %80 = load ptr, ptr %11, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.xpv, ptr %80, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !51
  %83 = add i64 %82, %2
  %84 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  store i64 %83, ptr %84, align 8, !tbaa !53
  br label %141

85:                                               ; preds = %49
  %86 = load ptr, ptr %11, align 8, !tbaa !50
  %87 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !51
  %89 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !53
  %91 = icmp ugt i64 %90, %88
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load i32, ptr %12, align 4, !tbaa !39
  %94 = and i32 %93, 268435456
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !42
  %99 = add i64 %2, 1
  %100 = add i64 %99, %90
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %92
  %103 = add i64 %2, 1
  %104 = add i64 %103, %90
  %105 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %104) #9
  br label %109

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %105, %102 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !42
  %113 = getelementptr inbounds i8, ptr %112, i64 %88
  %114 = load i64, ptr %89, align 8, !tbaa !53
  %115 = sub i64 %114, %88
  tail call void @llvm.memset.p0.i64(ptr align 1 %113, i8 0, i64 %115, i1 false)
  br label %137

116:                                              ; preds = %85
  %117 = add i64 %90, %2
  %118 = icmp ult i64 %117, %88
  br i1 %118, label %134, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %12, align 4, !tbaa !39
  %121 = and i32 %120, 268435456
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 3
  %125 = load i64, ptr %124, align 8, !tbaa !42
  %126 = add i64 %117, 1
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123, %119
  %129 = add i64 %117, 1
  %130 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %11, i64 noundef %129) #9
  br label %137

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !42
  br label %137

134:                                              ; preds = %116
  %135 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !42
  br label %137

137:                                              ; preds = %128, %131, %134, %109
  %138 = phi ptr [ %110, %109 ], [ %136, %134 ], [ %130, %128 ], [ %133, %131 ]
  %139 = load i64, ptr %89, align 8, !tbaa !53
  %140 = add i64 %139, %2
  store i64 %140, ptr %89, align 8, !tbaa !53
  br label %141

141:                                              ; preds = %137, %78
  %142 = phi i64 [ %82, %78 ], [ %139, %137 ]
  %143 = phi ptr [ %79, %78 ], [ %138, %137 ]
  %144 = getelementptr inbounds i8, ptr %143, i64 %142
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %144, ptr align 1 %1, i64 %2, i1 false)
  %145 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !53
  %147 = load ptr, ptr %11, align 8, !tbaa !50
  %148 = getelementptr inbounds %struct.xpv, ptr %147, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !51
  %150 = icmp ugt i64 %146, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  store i64 %146, ptr %148, align 8, !tbaa !51
  %152 = getelementptr inbounds i8, ptr %143, i64 %146
  store i8 0, ptr %152, align 1, !tbaa !42
  br label %153

153:                                              ; preds = %151, %141
  %154 = load i32, ptr %12, align 4, !tbaa !39
  %155 = or i32 %154, 17408
  store i32 %155, ptr %12, align 4, !tbaa !39
  %156 = and i32 %154, 4194304
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = tail call i32 @Perl_mg_set(ptr noundef nonnull %11) #9
  br label %160

160:                                              ; preds = %3, %47, %153, %158
  %161 = phi i64 [ 0, %47 ], [ %2, %153 ], [ %2, %158 ], [ 0, %3 ]
  ret i64 %161
}

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_fill(ptr nocapture readnone %0) #4 !prof !34 {
  ret i64 -1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @PerlIOScalar_flush(ptr nocapture readnone %0) #4 !prof !34 {
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOScalar_get_base(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @Perl_mg_get(ptr noundef %9) #9
  br label %16

16:                                               ; preds = %7, %14
  %17 = load ptr, ptr %8, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  br label %27

25:                                               ; preds = %16
  %26 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef null, i32 noundef 2) #9
  br label %27

27:                                               ; preds = %1, %22, %25
  %28 = phi ptr [ %24, %22 ], [ %26, %25 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOScalar_get_ptr(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @PerlIOScalar_get_base(ptr noundef nonnull %0)
  %9 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOScalar_get_cnt(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %9 = getelementptr inbounds %struct.PerlIOScalar, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load ptr, ptr %10, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !51
  store i64 %18, ptr %2, align 8, !tbaa !54
  br label %21

19:                                               ; preds = %8
  %20 = call ptr @Perl_sv_2pv_flags(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #9
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, ptr %2, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.PerlIOScalar, ptr %3, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = icmp sgt i64 %22, %24
  %26 = sub i64 %22, %24
  %27 = select i1 %25, i64 %26, i64 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %28

28:                                               ; preds = %1, %21
  %29 = phi i64 [ %27, %21 ], [ 0, %1 ]
  ret i64 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOScalar_bufsiz(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOScalar, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @Perl_mg_get(ptr noundef %9) #9
  br label %16

16:                                               ; preds = %7, %14
  %17 = load ptr, ptr %8, align 8, !tbaa !45
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !51
  br label %21

21:                                               ; preds = %1, %16
  %22 = phi i64 [ %20, %16 ], [ 0, %1 ]
  ret i64 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOScalar_set_ptrcnt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i64 noundef %2) #0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load ptr, ptr %7, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !51
  store i64 %15, ptr %4, align 8, !tbaa !54
  br label %18

16:                                               ; preds = %3
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 2) #9
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, ptr %4, align 8, !tbaa !54
  %20 = sub i64 %19, %2
  %21 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  store i64 %20, ptr %21, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOScalar_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 %4, i32 %5, i32 %6, ptr noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) #0 !prof !34 {
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %9, align 8, !tbaa !35
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #9
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = and i32 %19, 3072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %7, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call ptr @PerlIO_allocate() #9
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %7, %22 ], [ %25, %24 ]
  %28 = tail call ptr @PerlIO_push(ptr noundef %27, ptr noundef %0, ptr noundef %3, ptr noundef %17) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct._PerlIO, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = or i32 %33, 2097152
  store i32 %34, ptr %32, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %16, %26, %30
  %36 = phi ptr [ %28, %30 ], [ %28, %26 ], [ null, %16 ]
  ret ptr %36
}

declare ptr @PerlIO_arg_fetch(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PerlIO_allocate() local_unnamed_addr #2

declare ptr @PerlIO_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOScalar_arg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.PerlIOScalar, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @PerlIO_sv_dup(ptr noundef %6, ptr noundef %1) #9
  br label %22

11:                                               ; preds = %3
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_newSVsv(ptr noundef %6) #9
  br label %22

16:                                               ; preds = %11
  %17 = icmp eq ptr %6, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %18, %16, %14, %9
  %23 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %6, %16 ], [ %6, %18 ]
  %24 = tail call ptr @Perl_newRV_noinc(ptr noundef %23) #9
  ret ptr %24
}

declare ptr @PerlIO_sv_dup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOScalar_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.1, i64 noundef 0) #9
  store ptr %8, ptr %6, align 8, !tbaa !45
  %9 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.PerlIOScalar, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = add i32 %18, -1
  store i32 %21, ptr %17, align 8, !tbaa !44
  br label %23

22:                                               ; preds = %16
  tail call void @Perl_sv_free2(ptr noundef nonnull %14, i32 noundef %18) #9
  br label %23

23:                                               ; preds = %22, %20, %11, %4
  %24 = phi ptr [ null, %4 ], [ %12, %11 ], [ %12, %20 ], [ %12, %22 ]
  %25 = load ptr, ptr %6, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !44
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = add i32 %29, -1
  store i32 %32, ptr %28, align 8, !tbaa !44
  br label %34

33:                                               ; preds = %27
  tail call void @Perl_sv_free2(ptr noundef nonnull %25, i32 noundef %29) #9
  br label %34

34:                                               ; preds = %23, %31, %33
  store ptr %7, ptr %6, align 8, !tbaa !45
  br i1 %10, label %58, label %35

35:                                               ; preds = %34
  %36 = tail call ptr @PerlIOScalar_arg(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !44
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !44
  br label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.PerlIOScalar, ptr %24, i64 0, i32 1
  store ptr %38, ptr %45, align 8, !tbaa !45
  %46 = icmp eq ptr %36, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !44
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = add i32 %49, -1
  store i32 %52, ptr %48, align 8, !tbaa !44
  br label %54

53:                                               ; preds = %47
  tail call void @Perl_sv_free2(ptr noundef nonnull %36, i32 noundef %49) #9
  br label %54

54:                                               ; preds = %44, %51, %53
  %55 = getelementptr inbounds %struct.PerlIOScalar, ptr %5, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.PerlIOScalar, ptr %24, i64 0, i32 2
  store i64 %56, ptr %57, align 8, !tbaa !53
  br label %58

58:                                               ; preds = %54, %34
  ret ptr %9
}

declare ptr @PerlIOBase_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PerlIOBase_binmode(ptr noundef) #2

declare i64 @PerlIOBase_eof(ptr noundef) #2

declare i64 @PerlIOBase_error(ptr noundef) #2

declare void @PerlIOBase_clearerr(ptr noundef) #2

declare void @PerlIOBase_setlinebuf(ptr noundef) #2

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_PerlIO__scalar(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_scalar) #9
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #9
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @PerlIO_define_layer(ptr noundef) local_unnamed_addr #2

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!39 = !{!40, !41, i64 12}
!40 = !{!"sv", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!41 = !{!"int", !37, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!41, !41, i64 0}
!44 = !{!40, !41, i64 8}
!45 = !{!46, !36, i64 32}
!46 = !{!"", !47, i64 0, !36, i64 32, !48, i64 40}
!47 = !{!"_PerlIO", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24}
!48 = !{!"long", !37, i64 0}
!49 = !{!47, !41, i64 16}
!50 = !{!40, !36, i64 0}
!51 = !{!52, !48, i64 16}
!52 = !{!"xpv", !36, i64 0, !37, i64 8, !48, i64 16, !37, i64 24}
!53 = !{!46, !48, i64 40}
!54 = !{!48, !48, i64 0}
