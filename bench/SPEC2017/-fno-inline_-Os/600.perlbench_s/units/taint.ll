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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_taint_proper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load i8, ptr @PL_tainted, align 1, !tbaa !36, !range !40, !noundef !41
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @PL_no_security, ptr %0
  %8 = tail call i32 @getuid() #6
  %9 = tail call i32 @geteuid() #6
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i8, ptr @PL_taint_warn, align 1, !range !40
  br label %21

13:                                               ; preds = %5
  %14 = tail call i32 @getgid() #6
  %15 = tail call i32 @getegid() #6
  %16 = icmp eq i32 %14, %15
  %17 = load i8, ptr @PL_taint_warn, align 1, !range !40
  br i1 %16, label %18, label %21

18:                                               ; preds = %13
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %19, ptr @.str.3, ptr @.str.2
  br label %21

21:                                               ; preds = %11, %18, %13
  %22 = phi i8 [ %12, %11 ], [ %17, %13 ], [ %17, %18 ]
  %23 = phi ptr [ @.str, %11 ], [ @.str.1, %13 ], [ %20, %18 ]
  %24 = load i8, ptr @PL_unsafe, align 1, !tbaa !36, !range !40, !noundef !41
  %25 = icmp eq i8 %24, 0
  %26 = icmp eq i8 %22, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 39, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %23) #6
  br label %30

29:                                               ; preds = %21
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %23) #6
  br label %30

30:                                               ; preds = %28, %29, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_taint_env() local_unnamed_addr #0 !prof !35 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_envgv, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %191, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.gp, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @Perl_mg_find(ptr noundef nonnull %8, i32 noundef 69) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load ptr, ptr @PL_envgv, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %18, %10, %4
  %23 = phi ptr [ %21, %18 ], [ %6, %10 ], [ %6, %4 ]
  %24 = phi ptr [ %19, %18 ], [ %2, %10 ], [ %2, %4 ]
  %25 = load i8, ptr @PL_tainted, align 1, !tbaa !36, !range !40, !noundef !41
  %26 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %24, ptr %27
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.xpvgv, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 2
  store i8 1, ptr @PL_tainted, align 1, !tbaa !36
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(4) @.str.6) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  br label %38

37:                                               ; preds = %22
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.10, ptr noundef nonnull %33) #8
  br label %38

38:                                               ; preds = %37, %36
  store i8 %25, ptr @PL_tainted, align 1, !tbaa !36
  br label %39

39:                                               ; preds = %38, %15
  %40 = load ptr, ptr @PL_envgv, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %40, i32 noundef 12) #6
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  br label %52

52:                                               ; preds = %39, %46
  %53 = phi ptr [ %51, %46 ], [ %44, %39 ]
  %54 = tail call ptr @Perl_hv_common(ptr noundef %53, ptr noundef null, ptr noundef nonnull @.str.11, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !42
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !53
  %62 = and i32 %61, 14680064
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %57) #6
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  store i8 1, ptr @PL_tainted, align 1, !tbaa !36
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #8
  br label %67

67:                                               ; preds = %66, %64, %59
  %68 = load ptr, ptr %54, align 8, !tbaa !42
  %69 = tail call ptr @Perl_mg_find(ptr noundef %68, i32 noundef 101) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.magic, ptr %69, i64 0, i32 4
  %73 = load i8, ptr %72, align 1, !tbaa !55
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i8 1, ptr @PL_tainted, align 1, !tbaa !36
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #8
  br label %77

77:                                               ; preds = %67, %71, %76, %56, %52
  %78 = load ptr, ptr @PL_envgv, align 8, !tbaa !42
  %79 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.gp, ptr %80, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %78, i32 noundef 12) #6
  %86 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = getelementptr inbounds %struct.gp, ptr %87, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  br label %90

90:                                               ; preds = %77, %84
  %91 = phi ptr [ %89, %84 ], [ %82, %77 ]
  %92 = tail call ptr @Perl_hv_common(ptr noundef %91, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %154, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !42
  %96 = icmp eq ptr %95, null
  br i1 %96, label %154, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !53
  %100 = and i32 %99, 14680064
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %154, label %102

102:                                              ; preds = %97
  %103 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %95) #6
  br i1 %103, label %104, label %154

104:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  %105 = load i8, ptr @PL_tainted, align 1, !tbaa !36, !range !40, !noundef !41
  %106 = load ptr, ptr %92, align 8, !tbaa !42
  %107 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !53
  %109 = and i32 %108, 2098176
  %110 = icmp eq i32 %109, 1024
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load ptr, ptr %106, align 8, !tbaa !59
  %113 = getelementptr inbounds %struct.xpv, ptr %112, i64 0, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !60
  store i64 %114, ptr %1, align 8, !tbaa !62
  %115 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  br label %120

117:                                              ; preds = %104
  %118 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %106, ptr noundef nonnull %1, i32 noundef 34) #6
  %119 = load i64, ptr %1, align 8, !tbaa !62
  br label %120

120:                                              ; preds = %117, %111
  %121 = phi i64 [ %119, %117 ], [ %114, %111 ]
  %122 = phi ptr [ %118, %117 ], [ %116, %111 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 %121
  store i8 %105, ptr @PL_tainted, align 1, !tbaa !36
  %124 = icmp sgt i64 %121, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i8, ptr %122, align 1, !tbaa !44
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !63
  %130 = and i32 %129, 16385
  %131 = icmp eq i32 %130, 16385
  %132 = zext i1 %131 to i64
  %133 = getelementptr inbounds i8, ptr %122, i64 %132
  br label %134

134:                                              ; preds = %125, %120
  %135 = phi ptr [ %122, %120 ], [ %133, %125 ]
  %136 = icmp ult ptr %135, %123
  br i1 %136, label %137, label %153

137:                                              ; preds = %134, %149
  %138 = phi ptr [ %150, %149 ], [ %135, %134 ]
  %139 = load i8, ptr %138, align 1, !tbaa !44
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !63
  %143 = and i32 %142, 16385
  %144 = icmp eq i32 %143, 16385
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = sext i8 %139 to i32
  %147 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.16, i32 %146, i64 5)
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %137, %145
  %150 = getelementptr inbounds i8, ptr %138, i64 1
  %151 = icmp ult ptr %150, %123
  br i1 %151, label %137, label %153, !llvm.loop !64

152:                                              ; preds = %145
  store i8 1, ptr @PL_tainted, align 1, !tbaa !36
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #8
  br label %153

153:                                              ; preds = %149, %134, %152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  br label %154

154:                                              ; preds = %153, %102, %97, %94, %90
  br label %155

155:                                              ; preds = %154, %187
  %156 = phi ptr [ %189, %187 ], [ @.str.4, %154 ]
  %157 = phi ptr [ %188, %187 ], [ @Perl_taint_env.misc_env, %154 ]
  %158 = load ptr, ptr @PL_envgv, align 8, !tbaa !42
  %159 = getelementptr inbounds %struct.gv, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !45
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %158, i32 noundef 12) #6
  %166 = getelementptr inbounds %struct.gv, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !44
  %168 = getelementptr inbounds %struct.gp, ptr %167, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !45
  br label %170

170:                                              ; preds = %155, %164
  %171 = phi ptr [ %169, %164 ], [ %162, %155 ]
  %172 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %156) #7
  %173 = trunc i64 %172 to i32
  %174 = call ptr @Perl_hv_common_key_len(ptr noundef %171, ptr noundef nonnull %156, i32 noundef %173, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %175 = icmp eq ptr %174, null
  br i1 %175, label %187, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr %174, align 8, !tbaa !42
  %178 = icmp eq ptr %177, @PL_sv_undef
  br i1 %178, label %187, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !53
  %182 = and i32 %181, 14680064
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = call zeroext i1 @Perl_sv_tainted(ptr noundef %177) #6
  br i1 %185, label %186, label %187

186:                                              ; preds = %184
  store i8 1, ptr @PL_tainted, align 1, !tbaa !36
  call void @Perl_taint_proper(ptr noundef nonnull @.str.17, ptr noundef nonnull %156) #8
  br label %187

187:                                              ; preds = %186, %184, %179, %176, %170
  %188 = getelementptr inbounds ptr, ptr %157, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !42
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %155, !llvm.loop !66

191:                                              ; preds = %187, %0
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!37 = !{!"_Bool", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!38, !38, i64 0}
!45 = !{!46, !43, i64 32}
!46 = !{!"gp", !43, i64 0, !43, i64 8, !43, i64 16, !47, i64 24, !47, i64 28, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !47, i64 64, !47, i64 67, !43, i64 72}
!47 = !{!"int", !38, i64 0}
!48 = !{!49, !47, i64 12}
!49 = !{!"hv", !43, i64 0, !47, i64 8, !47, i64 12, !38, i64 16}
!50 = !{!46, !43, i64 56}
!51 = !{!52, !43, i64 0}
!52 = !{!"gv", !43, i64 0, !47, i64 8, !47, i64 12, !38, i64 16}
!53 = !{!54, !47, i64 12}
!54 = !{!"sv", !43, i64 0, !47, i64 8, !47, i64 12, !38, i64 16}
!55 = !{!56, !38, i64 19}
!56 = !{!"magic", !43, i64 0, !43, i64 8, !57, i64 16, !38, i64 18, !38, i64 19, !58, i64 24, !43, i64 32, !43, i64 40}
!57 = !{!"short", !38, i64 0}
!58 = !{!"long", !38, i64 0}
!59 = !{!54, !43, i64 0}
!60 = !{!61, !58, i64 16}
!61 = !{!"xpv", !43, i64 0, !38, i64 8, !58, i64 16, !38, i64 24}
!62 = !{!58, !58, i64 0}
!63 = !{!47, !47, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{!66, !65}
