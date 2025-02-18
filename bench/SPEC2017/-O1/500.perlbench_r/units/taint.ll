; ModuleID = 'taint.c'
source_filename = "taint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.3 }
%union.anon.3 = type { i64 }

@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_no_security = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c" while running setuid\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" while running setgid\00", align 1
@PL_taint_warn = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" while running with -t switch\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" while running with -T switch\00", align 1
@PL_unsafe = external local_unnamed_addr global i8, align 1
@Perl_taint_env.misc_env = internal unnamed_addr constant [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"BASH_ENV\00", align 1
@PL_envgv = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"%%ENV is aliased to %s%s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"another variable\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%%ENV is aliased to %%%s%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"$ENV{PATH}\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Insecure directory in %s%s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"-_.+\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Insecure $ENV{%s}%s\00", align 1
@PL_sv_undef = external global %struct.sv, align 8

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_taint_proper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i8, ptr @PL_tainted, align 1, !tbaa !35, !range !39, !noundef !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @PL_no_security, ptr %0
  %8 = tail call i32 @getuid() #6
  %9 = tail call i32 @geteuid() #6
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = tail call i32 @getgid() #6
  %13 = tail call i32 @getegid() #6
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8, ptr @PL_taint_warn, align 1, !tbaa !35, !range !39, !noundef !40
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr @.str.3, ptr @.str.2
  br label %19

19:                                               ; preds = %15, %11, %5
  %20 = phi ptr [ @.str, %5 ], [ @.str.1, %11 ], [ %18, %15 ]
  %21 = load i8, ptr @PL_unsafe, align 1, !tbaa !35, !range !39, !noundef !40
  %22 = icmp eq i8 %21, 0
  %23 = load i8, ptr @PL_taint_warn, align 1, !range !39
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 39, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %20) #6
  br label %28

27:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %20) #6
  br label %28

28:                                               ; preds = %26, %27, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_taint_env() local_unnamed_addr #0 !prof !34 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_envgv, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %187, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.gp, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @Perl_mg_find(ptr noundef nonnull %8, i32 noundef 69) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15, %10, %4
  %19 = load i8, ptr @PL_tainted, align 1, !tbaa !35, !range !39, !noundef !40
  %20 = load ptr, ptr @PL_envgv, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %20, ptr %24
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.xpvgv, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2
  store i8 1, ptr @PL_tainted, align 1, !tbaa !35
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.6) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
  br label %35

34:                                               ; preds = %18
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.10, ptr noundef nonnull %30)
  br label %35

35:                                               ; preds = %34, %33
  store i8 %19, ptr @PL_tainted, align 1, !tbaa !35
  br label %36

36:                                               ; preds = %35, %15
  %37 = load ptr, ptr @PL_envgv, align 8, !tbaa !41
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = tail call ptr @Perl_gv_add_by_type(ptr noundef %37, i32 noundef 12) #6
  %45 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  br label %49

49:                                               ; preds = %36, %43
  %50 = phi ptr [ %48, %43 ], [ %41, %36 ]
  %51 = tail call ptr @Perl_hv_common(ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.11, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !52
  %59 = and i32 %58, 14680064
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %54) #6
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i8 1, ptr @PL_tainted, align 1, !tbaa !35
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
  br label %64

64:                                               ; preds = %63, %61, %56
  %65 = load ptr, ptr %51, align 8, !tbaa !41
  %66 = tail call ptr @Perl_mg_find(ptr noundef %65, i32 noundef 101) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.magic, ptr %66, i64 0, i32 4
  %70 = load i8, ptr %69, align 1, !tbaa !54
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i8 1, ptr @PL_tainted, align 1, !tbaa !35
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13)
  br label %74

74:                                               ; preds = %64, %68, %73, %53, %49
  %75 = load ptr, ptr @PL_envgv, align 8, !tbaa !41
  %76 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.gp, ptr %77, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = tail call ptr @Perl_gv_add_by_type(ptr noundef %75, i32 noundef 12) #6
  %83 = getelementptr inbounds %struct.gv, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.gp, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ %79, %74 ]
  %89 = tail call ptr @Perl_hv_common(ptr noundef %88, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %150, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %89, align 8, !tbaa !41
  %93 = icmp eq ptr %92, null
  br i1 %93, label %150, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !52
  %97 = and i32 %96, 14680064
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %150, label %99

99:                                               ; preds = %94
  %100 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %92) #6
  br i1 %100, label %101, label %150

101:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  %102 = load i8, ptr @PL_tainted, align 1, !tbaa !35, !range !39, !noundef !40
  %103 = load ptr, ptr %89, align 8, !tbaa !41
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !52
  %106 = and i32 %105, 2098176
  %107 = icmp eq i32 %106, 1024
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load ptr, ptr %103, align 8, !tbaa !58
  %110 = getelementptr inbounds %struct.xpv, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !59
  store i64 %111, ptr %1, align 8, !tbaa !61
  %112 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !43
  br label %116

114:                                              ; preds = %101
  %115 = call ptr @Perl_sv_2pv_flags(ptr noundef %103, ptr noundef nonnull %1, i32 noundef 34) #6
  br label %116

116:                                              ; preds = %114, %108
  %117 = phi ptr [ %113, %108 ], [ %115, %114 ]
  %118 = load i64, ptr %1, align 8, !tbaa !61
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  store i8 %102, ptr @PL_tainted, align 1, !tbaa !35
  %120 = icmp sgt i64 %118, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i8, ptr %117, align 1, !tbaa !43
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !62
  %126 = and i32 %125, 16385
  %127 = icmp eq i32 %126, 16385
  %128 = zext i1 %127 to i64
  %129 = getelementptr inbounds i8, ptr %117, i64 %128
  br label %130

130:                                              ; preds = %121, %116
  %131 = phi ptr [ %117, %116 ], [ %129, %121 ]
  %132 = icmp ult ptr %131, %119
  br i1 %132, label %133, label %149

133:                                              ; preds = %130, %145
  %134 = phi ptr [ %146, %145 ], [ %131, %130 ]
  %135 = load i8, ptr %134, align 1, !tbaa !43
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !62
  %139 = and i32 %138, 16385
  %140 = icmp eq i32 %139, 16385
  br i1 %140, label %145, label %141

141:                                              ; preds = %133
  %142 = sext i8 %135 to i32
  %143 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.16, i32 %142, i64 5)
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %133, %141
  %146 = getelementptr inbounds i8, ptr %134, i64 1
  %147 = icmp ult ptr %146, %119
  br i1 %147, label %133, label %149, !llvm.loop !63

148:                                              ; preds = %141
  store i8 1, ptr @PL_tainted, align 1, !tbaa !35
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  br label %149

149:                                              ; preds = %145, %130, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  br label %150

150:                                              ; preds = %149, %99, %94, %91, %87
  br label %151

151:                                              ; preds = %150, %183
  %152 = phi ptr [ %185, %183 ], [ @.str.4, %150 ]
  %153 = phi ptr [ %184, %183 ], [ @Perl_taint_env.misc_env, %150 ]
  %154 = load ptr, ptr @PL_envgv, align 8, !tbaa !41
  %155 = getelementptr inbounds %struct.gv, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !43
  %157 = getelementptr inbounds %struct.gp, ptr %156, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = call ptr @Perl_gv_add_by_type(ptr noundef %154, i32 noundef 12) #6
  %162 = getelementptr inbounds %struct.gv, ptr %161, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !43
  %164 = getelementptr inbounds %struct.gp, ptr %163, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !44
  br label %166

166:                                              ; preds = %151, %160
  %167 = phi ptr [ %165, %160 ], [ %158, %151 ]
  %168 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %152) #7
  %169 = trunc i64 %168 to i32
  %170 = call ptr @Perl_hv_common_key_len(ptr noundef %167, ptr noundef nonnull %152, i32 noundef %169, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %171 = icmp eq ptr %170, null
  br i1 %171, label %183, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %170, align 8, !tbaa !41
  %174 = icmp eq ptr %173, @PL_sv_undef
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !52
  %178 = and i32 %177, 14680064
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = call zeroext i1 @Perl_sv_tainted(ptr noundef %173) #6
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  store i8 1, ptr @PL_tainted, align 1, !tbaa !35
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef nonnull %152)
  br label %183

183:                                              ; preds = %182, %180, %175, %172, %166
  %184 = getelementptr inbounds ptr, ptr %153, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !41
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %151, !llvm.loop !66

187:                                              ; preds = %183, %0
  ret void
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
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
!36 = !{!"_Bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !37, i64 0}
!43 = !{!37, !37, i64 0}
!44 = !{!45, !42, i64 32}
!45 = !{!"gp", !42, i64 0, !42, i64 8, !42, i64 16, !46, i64 24, !46, i64 28, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !46, i64 64, !46, i64 67, !42, i64 72}
!46 = !{!"int", !37, i64 0}
!47 = !{!48, !46, i64 12}
!48 = !{!"hv", !42, i64 0, !46, i64 8, !46, i64 12, !37, i64 16}
!49 = !{!45, !42, i64 56}
!50 = !{!51, !42, i64 0}
!51 = !{!"gv", !42, i64 0, !46, i64 8, !46, i64 12, !37, i64 16}
!52 = !{!53, !46, i64 12}
!53 = !{!"sv", !42, i64 0, !46, i64 8, !46, i64 12, !37, i64 16}
!54 = !{!55, !37, i64 19}
!55 = !{!"magic", !42, i64 0, !42, i64 8, !56, i64 16, !37, i64 18, !37, i64 19, !57, i64 24, !42, i64 32, !42, i64 40}
!56 = !{!"short", !37, i64 0}
!57 = !{!"long", !37, i64 0}
!58 = !{!53, !42, i64 0}
!59 = !{!60, !57, i64 16}
!60 = !{!"xpv", !42, i64 0, !37, i64 8, !57, i64 16, !37, i64 24}
!61 = !{!57, !57, i64 0}
!62 = !{!46, !46, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
