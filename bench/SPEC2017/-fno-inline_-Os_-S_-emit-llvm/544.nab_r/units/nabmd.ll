; ModuleID = 'nabmd.c'
source_filename = "nabmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cg_emsg_lineno = dso_local local_unnamed_addr global i32 1, align 4
@cg_nfname = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@stdout = external local_unnamed_addr global ptr, align 8
@nabout = dso_local local_unnamed_addr global ptr null, align 8
@mytaskid = internal global i32 0, align 4
@numtasks = internal global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Usage: %s <directory> <PRNG seed> <MD step count>\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"nabmd %s %d\0A\0A\00", align 1
@filename = internal global [256 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [5 x i8] c".pdb\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Reading .pdb file (%s)\0A\00", align 1
@m = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c".prm\00", align 1
@m_xyz = internal unnamed_addr global ptr null, align 8
@f_xyz = internal unnamed_addr global ptr null, align 8
@v_xyz = internal unnamed_addr global ptr null, align 8
@gb = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"::ZZZZ\00", align 1
@dummy = internal global [3 x double] zeroinitializer, align 16
@zero = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Initial energy is %f0\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\0A...Done, md returns %d\0A\00", align 1
@str = private unnamed_addr constant [59 x i8] c"Starting molecular dynamics with Born solvation energy...\0A\00", align 1
@str.12 = private unnamed_addr constant [65 x i8] c"Starting molecular dynamics with in vaccuo non-bonded energy...\0A\00", align 1
@str.13 = private unnamed_addr constant [19 x i8] c"Error in mpierror!\00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local noundef i32 @CG_exit(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @exit(i32 noundef 1) #11
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  store ptr %5, ptr @nabout, align 8, !tbaa !9
  %6 = call i32 @mpiinit(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @mytaskid, ptr noundef nonnull @numtasks) #13
  %7 = load i32, ptr %3, align 4, !tbaa !5
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !9
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %13) #14
  %15 = load ptr, ptr @stdout, align 8, !tbaa !9
  %16 = call i32 @fflush(ptr noundef %15) #14
  br label %17

17:                                               ; preds = %2, %9, %12
  %18 = phi i32 [ -1, %12 ], [ -1, %9 ], [ 0, %2 ]
  %19 = call i32 @mpierror(i32 noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !9
  %27 = call i32 @fflush(ptr noundef %26) #14
  br label %28

28:                                               ; preds = %24, %21
  call void @exit(i32 noundef 1) #11
  unreachable

29:                                               ; preds = %17
  %30 = getelementptr inbounds ptr, ptr %1, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = call i32 @atoi(ptr nocapture noundef %31) #15
  store i32 %32, ptr %4, align 4, !tbaa !5
  %33 = call i32 @setseed(ptr noundef nonnull %4) #13
  %34 = load i32, ptr %3, align 4, !tbaa !5
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = getelementptr inbounds ptr, ptr %1, i64 3
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = call i32 @atoi(ptr nocapture noundef %38) #15
  %40 = icmp slt i32 %39, 1
  %41 = select i1 %40, i32 1000, i32 %39
  br label %42

42:                                               ; preds = %36, %29
  %43 = phi i32 [ %41, %36 ], [ 1000, %29 ]
  %44 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %1, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = load i32, ptr %4, align 4, !tbaa !5
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %48, i32 noundef %49) #14
  %51 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ %52, %46 ], [ false, %42 ]
  store i8 0, ptr @filename, align 16, !tbaa !11
  %55 = getelementptr inbounds ptr, ptr %1, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %56) #13
  %58 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %59 = getelementptr inbounds i8, ptr @filename, i64 %58
  store i16 47, ptr %59, align 1
  %60 = load ptr, ptr %55, align 8, !tbaa !9
  %61 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %60) #13
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %63 = getelementptr inbounds i8, ptr @filename, i64 %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %63, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  br i1 %54, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @filename) #14
  br label %66

66:                                               ; preds = %64, %53
  %67 = call ptr @getpdb(ptr noundef nonnull @filename, ptr noundef null) #13
  store ptr %67, ptr @m, align 8, !tbaa !9
  store i8 0, ptr @filename, align 16, !tbaa !11
  %68 = load ptr, ptr %55, align 8, !tbaa !9
  %69 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %68) #13
  %70 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %71 = getelementptr inbounds i8, ptr @filename, i64 %70
  store i16 47, ptr %71, align 1
  %72 = load ptr, ptr %55, align 8, !tbaa !9
  %73 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %72) #13
  %74 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %75 = getelementptr inbounds i8, ptr @filename, i64 %74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %75, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %76 = call i32 @readparm(ptr noundef %67, ptr noundef nonnull @filename) #13
  %77 = load ptr, ptr @m, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.molecule_t, ptr %77, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.parm, ptr %79, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !14
  %82 = mul nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = call ptr @vector(i64 noundef 0, i64 noundef %83) #13
  store ptr %84, ptr @m_xyz, align 8, !tbaa !9
  %85 = load ptr, ptr @m, align 8, !tbaa !9
  %86 = getelementptr inbounds %struct.molecule_t, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !12
  %88 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !14
  %90 = mul nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = call ptr @vector(i64 noundef 0, i64 noundef %91) #13
  store ptr %92, ptr @f_xyz, align 8, !tbaa !9
  %93 = load ptr, ptr @m, align 8, !tbaa !9
  %94 = getelementptr inbounds %struct.molecule_t, ptr %93, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !12
  %96 = getelementptr inbounds %struct.parm, ptr %95, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !14
  %98 = mul nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = call ptr @vector(i64 noundef 0, i64 noundef %99) #13
  store ptr %100, ptr @v_xyz, align 8, !tbaa !9
  %101 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %102 = call i32 @setxyz_from_mol(ptr noundef nonnull @m, ptr noundef null, ptr noundef %101) #13
  store i32 1, ptr @gb, align 4, !tbaa !5
  %103 = load ptr, ptr @m, align 8, !tbaa !9
  %104 = call i32 @mme_init(ptr noundef %103, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #13
  %105 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %106 = load ptr, ptr @f_xyz, align 8, !tbaa !9
  %107 = call double @mme(ptr noundef %105, ptr noundef %106, ptr noundef nonnull @zero) #13
  %108 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %66
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %107) #14
  %112 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %116

116:                                              ; preds = %66, %114, %110
  %117 = load ptr, ptr @m, align 8, !tbaa !9
  %118 = getelementptr inbounds %struct.molecule_t, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !12
  %120 = getelementptr inbounds %struct.parm, ptr %119, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !14
  %122 = mul nsw i32 %121, 3
  %123 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %124 = load ptr, ptr @f_xyz, align 8, !tbaa !9
  %125 = load ptr, ptr @v_xyz, align 8, !tbaa !9
  %126 = call i32 @md(i32 noundef %122, i32 noundef %43, ptr noundef %123, ptr noundef %124, ptr noundef %125, ptr noundef nonnull @mme) #13
  %127 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %126) #14
  br label %131

131:                                              ; preds = %129, %116
  store i32 0, ptr @gb, align 4, !tbaa !5
  %132 = load ptr, ptr @m, align 8, !tbaa !9
  %133 = call i32 @mme_init(ptr noundef %132, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #13
  %134 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %135 = load ptr, ptr @f_xyz, align 8, !tbaa !9
  %136 = call double @mme(ptr noundef %134, ptr noundef %135, ptr noundef nonnull @zero) #13
  %137 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %136) #14
  %141 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %145

145:                                              ; preds = %131, %143, %139
  %146 = load ptr, ptr @m, align 8, !tbaa !9
  %147 = getelementptr inbounds %struct.molecule_t, ptr %146, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !12
  %149 = getelementptr inbounds %struct.parm, ptr %148, i64 0, i32 4
  %150 = load i32, ptr %149, align 8, !tbaa !14
  %151 = mul nsw i32 %150, 3
  %152 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %153 = load ptr, ptr @f_xyz, align 8, !tbaa !9
  %154 = load ptr, ptr @v_xyz, align 8, !tbaa !9
  %155 = call i32 @md(i32 noundef %151, i32 noundef %43, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef nonnull @mme) #13
  %156 = load i32, ptr @mytaskid, align 4, !tbaa !5
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %155) #14
  br label %160

160:                                              ; preds = %158, %145
  %161 = load ptr, ptr @m_xyz, align 8, !tbaa !9
  %162 = load ptr, ptr @m, align 8, !tbaa !9
  %163 = getelementptr inbounds %struct.molecule_t, ptr %162, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !12
  %165 = getelementptr inbounds %struct.parm, ptr %164, i64 0, i32 4
  %166 = load i32, ptr %165, align 8, !tbaa !14
  %167 = mul nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  call void @free_vector(ptr noundef %161, i64 noundef 0, i64 noundef %168) #13
  %169 = load ptr, ptr @f_xyz, align 8, !tbaa !9
  %170 = load ptr, ptr @m, align 8, !tbaa !9
  %171 = getelementptr inbounds %struct.molecule_t, ptr %170, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !12
  %173 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 4
  %174 = load i32, ptr %173, align 8, !tbaa !14
  %175 = mul nsw i32 %174, 3
  %176 = sext i32 %175 to i64
  call void @free_vector(ptr noundef %169, i64 noundef 0, i64 noundef %176) #13
  %177 = load ptr, ptr @v_xyz, align 8, !tbaa !9
  %178 = load ptr, ptr @m, align 8, !tbaa !9
  %179 = getelementptr inbounds %struct.molecule_t, ptr %178, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !12
  %181 = getelementptr inbounds %struct.parm, ptr %180, i64 0, i32 4
  %182 = load i32, ptr %181, align 8, !tbaa !14
  %183 = mul nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  call void @free_vector(ptr noundef %177, i64 noundef 0, i64 noundef %184) #13
  %185 = call i32 @mpifinalize() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @mpiinit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @mpierror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @setseed(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @getpdb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @readparm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @setxyz_from_mol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mme_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @mme(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @md(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mpifinalize() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 128}
!13 = !{!"molecule_t", !7, i64 0, !6, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !10, i64 128}
!14 = !{!15, !6, i64 96}
!15 = !{!"parm", !7, i64 0, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !7, i64 376, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !10, i64 544, !10, i64 552, !10, i64 560, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !10, i64 712}
!16 = !{!"double", !7, i64 0}
