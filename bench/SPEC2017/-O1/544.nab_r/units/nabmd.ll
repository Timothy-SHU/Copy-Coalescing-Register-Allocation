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

; Function Attrs: cold noreturn nounwind uwtable
define dso_local noundef i32 @CG_exit(i32 noundef %0) local_unnamed_addr #0 !prof !53 {
  tail call void @exit(i32 noundef 1) #11
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !54 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = load ptr, ptr @stdout, align 8, !tbaa !59
  store ptr %5, ptr @nabout, align 8, !tbaa !59
  %6 = call i32 @mpiinit(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @mytaskid, ptr noundef nonnull @numtasks) #12
  %7 = load i32, ptr %3, align 4, !tbaa !55
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %17, !prof !61

9:                                                ; preds = %2
  %10 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !59
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %13)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !59
  %16 = call i32 @fflush(ptr noundef %15)
  br label %17

17:                                               ; preds = %2, %9, %12
  %18 = phi i32 [ -1, %12 ], [ -1, %9 ], [ 0, %2 ]
  %19 = call i32 @mpierror(i32 noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21, !prof !62

21:                                               ; preds = %17
  %22 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !59
  %27 = call i32 @fflush(ptr noundef %26)
  br label %28

28:                                               ; preds = %24, %21
  call void @exit(i32 noundef 1) #11
  unreachable

29:                                               ; preds = %17
  %30 = getelementptr inbounds ptr, ptr %1, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = call i64 @strtol(ptr nocapture noundef nonnull %31, ptr noundef null, i32 noundef 10) #12
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %4, align 4, !tbaa !55
  %34 = call i32 @setseed(ptr noundef nonnull %4) #12
  %35 = load i32, ptr %3, align 4, !tbaa !55
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %44, !prof !62

37:                                               ; preds = %29
  %38 = getelementptr inbounds ptr, ptr %1, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = call i64 @strtol(ptr nocapture noundef nonnull %39, ptr noundef null, i32 noundef 10) #12
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %41, 1
  %43 = select i1 %42, i32 1000, i32 %41, !prof !61
  br label %44

44:                                               ; preds = %37, %29
  %45 = phi i32 [ %43, %37 ], [ 1000, %29 ]
  %46 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53, !prof !62

48:                                               ; preds = %44
  %49 = getelementptr inbounds ptr, ptr %1, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = load i32, ptr %4, align 4, !tbaa !55
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %50, i32 noundef %51)
  br label %53

53:                                               ; preds = %48, %44
  store i8 0, ptr @filename, align 16, !tbaa !63
  %54 = getelementptr inbounds ptr, ptr %1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %55) #12
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %58 = getelementptr inbounds i8, ptr @filename, i64 %57
  store i16 47, ptr %58, align 1
  %59 = load ptr, ptr %54, align 8, !tbaa !59
  %60 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %59) #12
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %62 = getelementptr inbounds i8, ptr @filename, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %62, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  %63 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67, !prof !62

65:                                               ; preds = %53
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @filename)
  br label %67

67:                                               ; preds = %65, %53
  %68 = call ptr @getpdb(ptr noundef nonnull @filename, ptr noundef null) #12
  store ptr %68, ptr @m, align 8, !tbaa !59
  store i8 0, ptr @filename, align 16, !tbaa !63
  %69 = load ptr, ptr %54, align 8, !tbaa !59
  %70 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %69) #12
  %71 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %72 = getelementptr inbounds i8, ptr @filename, i64 %71
  store i16 47, ptr %72, align 1
  %73 = load ptr, ptr %54, align 8, !tbaa !59
  %74 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @filename, ptr noundef nonnull dereferenceable(1) %73) #12
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @filename)
  %76 = getelementptr inbounds i8, ptr @filename, i64 %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %76, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %77 = call i32 @readparm(ptr noundef %68, ptr noundef nonnull @filename) #12
  %78 = load ptr, ptr @m, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct.molecule_t, ptr %78, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !64
  %81 = getelementptr inbounds %struct.parm, ptr %80, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !66
  %83 = mul nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = call ptr @vector(i64 noundef 0, i64 noundef %84) #12
  store ptr %85, ptr @m_xyz, align 8, !tbaa !59
  %86 = load ptr, ptr @m, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.molecule_t, ptr %86, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !64
  %89 = getelementptr inbounds %struct.parm, ptr %88, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !66
  %91 = mul nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = call ptr @vector(i64 noundef 0, i64 noundef %92) #12
  store ptr %93, ptr @f_xyz, align 8, !tbaa !59
  %94 = load ptr, ptr @m, align 8, !tbaa !59
  %95 = getelementptr inbounds %struct.molecule_t, ptr %94, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !64
  %97 = getelementptr inbounds %struct.parm, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !66
  %99 = mul nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = call ptr @vector(i64 noundef 0, i64 noundef %100) #12
  store ptr %101, ptr @v_xyz, align 8, !tbaa !59
  %102 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %103 = call i32 @setxyz_from_mol(ptr noundef nonnull @m, ptr noundef null, ptr noundef %102) #12
  store i32 1, ptr @gb, align 4, !tbaa !55
  %104 = load ptr, ptr @m, align 8, !tbaa !59
  %105 = call i32 @mme_init(ptr noundef %104, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #12
  %106 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %107 = load ptr, ptr @f_xyz, align 8, !tbaa !59
  %108 = call double @mme(ptr noundef %106, ptr noundef %107, ptr noundef nonnull @zero) #12
  %109 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113, !prof !62

111:                                              ; preds = %67
  %112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %108)
  br label %113

113:                                              ; preds = %111, %67
  %114 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118, !prof !62

116:                                              ; preds = %113
  %117 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %118

118:                                              ; preds = %116, %113
  %119 = load ptr, ptr @m, align 8, !tbaa !59
  %120 = getelementptr inbounds %struct.molecule_t, ptr %119, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !64
  %122 = getelementptr inbounds %struct.parm, ptr %121, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !66
  %124 = mul nsw i32 %123, 3
  %125 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %126 = load ptr, ptr @f_xyz, align 8, !tbaa !59
  %127 = load ptr, ptr @v_xyz, align 8, !tbaa !59
  %128 = call i32 @md(i32 noundef %124, i32 noundef %45, ptr noundef %125, ptr noundef %126, ptr noundef %127, ptr noundef nonnull @mme) #12
  %129 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133, !prof !62

131:                                              ; preds = %118
  %132 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %128)
  br label %133

133:                                              ; preds = %131, %118
  store i32 0, ptr @gb, align 4, !tbaa !55
  %134 = load ptr, ptr @m, align 8, !tbaa !59
  %135 = call i32 @mme_init(ptr noundef %134, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @dummy, ptr noundef null) #12
  %136 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %137 = load ptr, ptr @f_xyz, align 8, !tbaa !59
  %138 = call double @mme(ptr noundef %136, ptr noundef %137, ptr noundef nonnull @zero) #12
  %139 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143, !prof !62

141:                                              ; preds = %133
  %142 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %138)
  br label %143

143:                                              ; preds = %141, %133
  %144 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148, !prof !62

146:                                              ; preds = %143
  %147 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %148

148:                                              ; preds = %146, %143
  %149 = load ptr, ptr @m, align 8, !tbaa !59
  %150 = getelementptr inbounds %struct.molecule_t, ptr %149, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !64
  %152 = getelementptr inbounds %struct.parm, ptr %151, i64 0, i32 4
  %153 = load i32, ptr %152, align 8, !tbaa !66
  %154 = mul nsw i32 %153, 3
  %155 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %156 = load ptr, ptr @f_xyz, align 8, !tbaa !59
  %157 = load ptr, ptr @v_xyz, align 8, !tbaa !59
  %158 = call i32 @md(i32 noundef %154, i32 noundef %45, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef nonnull @mme) #12
  %159 = load i32, ptr @mytaskid, align 4, !tbaa !55
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163, !prof !62

161:                                              ; preds = %148
  %162 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %158)
  br label %163

163:                                              ; preds = %161, %148
  %164 = load ptr, ptr @m_xyz, align 8, !tbaa !59
  %165 = load ptr, ptr @m, align 8, !tbaa !59
  %166 = getelementptr inbounds %struct.molecule_t, ptr %165, i64 0, i32 6
  %167 = load ptr, ptr %166, align 8, !tbaa !64
  %168 = getelementptr inbounds %struct.parm, ptr %167, i64 0, i32 4
  %169 = load i32, ptr %168, align 8, !tbaa !66
  %170 = mul nsw i32 %169, 3
  %171 = sext i32 %170 to i64
  call void @free_vector(ptr noundef %164, i64 noundef 0, i64 noundef %171) #12
  %172 = load ptr, ptr @f_xyz, align 8, !tbaa !59
  %173 = load ptr, ptr @m, align 8, !tbaa !59
  %174 = getelementptr inbounds %struct.molecule_t, ptr %173, i64 0, i32 6
  %175 = load ptr, ptr %174, align 8, !tbaa !64
  %176 = getelementptr inbounds %struct.parm, ptr %175, i64 0, i32 4
  %177 = load i32, ptr %176, align 8, !tbaa !66
  %178 = mul nsw i32 %177, 3
  %179 = sext i32 %178 to i64
  call void @free_vector(ptr noundef %172, i64 noundef 0, i64 noundef %179) #12
  %180 = load ptr, ptr @v_xyz, align 8, !tbaa !59
  %181 = load ptr, ptr @m, align 8, !tbaa !59
  %182 = getelementptr inbounds %struct.molecule_t, ptr %181, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !64
  %184 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 4
  %185 = load i32, ptr %184, align 8, !tbaa !66
  %186 = mul nsw i32 %185, 3
  %187 = sext i32 %186 to i64
  call void @free_vector(ptr noundef %180, i64 noundef 0, i64 noundef %187) #12
  %188 = call i32 @mpifinalize() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @mpiinit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @mpierror(i32 noundef) local_unnamed_addr #4

declare i32 @setseed(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare ptr @getpdb(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @readparm(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @setxyz_from_mol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mme_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @mme(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @md(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @mpifinalize() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @main, ptr @mpiinit, i64 1}
!36 = !{ptr @main, ptr @mpierror, i64 1}
!37 = !{ptr @main, ptr @strtol, i64 2}
!38 = !{ptr @main, ptr @setseed, i64 1}
!39 = !{ptr @main, ptr @printf, i64 6}
!40 = !{ptr @main, ptr @strcat, i64 4}
!41 = !{ptr @main, ptr @strlen, i64 4}
!42 = !{ptr @main, ptr @getpdb, i64 1}
!43 = !{ptr @main, ptr @readparm, i64 1}
!44 = !{ptr @main, ptr @vector, i64 3}
!45 = !{ptr @main, ptr @setxyz_from_mol, i64 1}
!46 = !{ptr @main, ptr @mme_init, i64 2}
!47 = !{ptr @main, ptr @mme, i64 2}
!48 = !{ptr @main, ptr @puts, i64 2}
!49 = !{ptr @main, ptr @md, i64 2}
!50 = !{ptr @main, ptr @free_vector, i64 3}
!51 = !{ptr @main, ptr @mpifinalize, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!"function_entry_count", i64 1}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !57, i64 0}
!61 = !{!"branch_weights", i32 0, i32 1}
!62 = !{!"branch_weights", i32 1, i32 0}
!63 = !{!57, !57, i64 0}
!64 = !{!65, !60, i64 128}
!65 = !{!"molecule_t", !57, i64 0, !56, i64 96, !60, i64 104, !56, i64 112, !56, i64 116, !56, i64 120, !60, i64 128}
!66 = !{!67, !56, i64 96}
!67 = !{!"parm", !57, i64 0, !56, i64 84, !56, i64 88, !56, i64 92, !56, i64 96, !56, i64 100, !56, i64 104, !56, i64 108, !56, i64 112, !56, i64 116, !56, i64 120, !56, i64 124, !56, i64 128, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !60, i64 216, !60, i64 224, !60, i64 232, !60, i64 240, !60, i64 248, !60, i64 256, !60, i64 264, !60, i64 272, !60, i64 280, !60, i64 288, !60, i64 296, !60, i64 304, !60, i64 312, !60, i64 320, !60, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360, !60, i64 368, !57, i64 376, !68, i64 400, !68, i64 408, !68, i64 416, !68, i64 424, !68, i64 432, !60, i64 440, !60, i64 448, !60, i64 456, !60, i64 464, !60, i64 472, !60, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !60, i64 528, !60, i64 536, !60, i64 544, !60, i64 552, !60, i64 560, !60, i64 568, !60, i64 576, !60, i64 584, !60, i64 592, !60, i64 600, !60, i64 608, !60, i64 616, !60, i64 624, !60, i64 632, !60, i64 640, !60, i64 648, !60, i64 656, !60, i64 664, !60, i64 672, !60, i64 680, !60, i64 688, !60, i64 696, !60, i64 704, !60, i64 712}
!68 = !{!"double", !57, i64 0}
