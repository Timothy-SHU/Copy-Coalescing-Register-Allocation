; ModuleID = 'sff.c'
source_filename = "sff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ntpr = dso_local local_unnamed_addr global i32 100, align 4
@gb = dso_local local_unnamed_addr global i32 0, align 4
@blocksize = dso_local local_unnamed_addr global i32 8, align 4
@ntpr_md = dso_local local_unnamed_addr global i32 100, align 4
@dim = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"getx: can't open file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%6d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%20.15f%20.15f%20.15f\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%20.15f%20.15f%20.15f%20.15f\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"getxv: can't open file %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d %lf\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"no velocities were found\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%6d%15.5f\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%12.7f%12.7f%12.7f%12.7f%12.7f%12.7f\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"%12.7f%12.7f%12.7f\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\0AFirst derivative timing summary:\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"   constraints %10.2f\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"   bonds       %10.2f\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"   angles      %10.2f\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"   torsions    %10.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"   pairlist    %10.2f\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"   nonbonds    %10.2f\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"   gen. Born   %10.2f\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"   mme         %10.2f\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"   Total       %10.2f\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"   reduction   %10.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"   molec. dyn. %10.2f\0A\0A\00", align 1
@mme_init.nold = internal unnamed_addr global i32 0, align 4
@prm = internal unnamed_addr global ptr null, align 8
@x0 = internal unnamed_addr global ptr null, align 8
@binposfp = internal unnamed_addr global ptr null, align 8
@frozen = internal unnamed_addr global ptr null, align 8
@constrained = internal unnamed_addr global ptr null, align 8
@nconstrained = internal unnamed_addr global i32 0, align 4
@.str.52 = private unnamed_addr constant [26 x i8] c"constrained all %d atoms\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"constrained %d atoms using expression %s\0A\00", align 1
@gbalpha = internal unnamed_addr global double 0.000000e+00, align 8
@gbbeta = internal unnamed_addr global double 0.000000e+00, align 8
@gbgamma = internal unnamed_addr global double 0.000000e+00, align 8
@pairlistnp = internal unnamed_addr global ptr null, align 8
@upairsnp = internal unnamed_addr global ptr null, align 8
@lpairsnp = internal unnamed_addr global ptr null, align 8
@.str.54 = private unnamed_addr constant [48 x i8] c"Error allocating pairlistnp array in mme_init!\0A\00", align 1
@pairlist2np = internal unnamed_addr global ptr null, align 8
@upairs2np = internal unnamed_addr global ptr null, align 8
@lpairs2np = internal unnamed_addr global ptr null, align 8
@.str.55 = private unnamed_addr constant [49 x i8] c"Error allocating pairlist2np array in mme_init!\0A\00", align 1
@pairlist = internal unnamed_addr global ptr null, align 8
@nb_pairs = internal unnamed_addr global i32 -1, align 4
@upairs = internal unnamed_addr global ptr null, align 8
@lpairs = internal unnamed_addr global ptr null, align 8
@.str.56 = private unnamed_addr constant [46 x i8] c"Error allocating pairlist array in mme_init!\0A\00", align 1
@nfrozen = internal unnamed_addr global i32 0, align 4
@.str.57 = private unnamed_addr constant [56 x i8] c"freezing %d atoms using expression %s for moving atoms\0A\00", align 1
@N14pearlist = internal unnamed_addr global ptr null, align 8
@.str.58 = private unnamed_addr constant [49 x i8] c"Error allocating N14pearlist array in mme_init!\0A\00", align 1
@IexclAt = internal unnamed_addr global ptr null, align 8
@.str.59 = private unnamed_addr constant [45 x i8] c"Error allocating IexclAt array in mme_init!\0A\00", align 1
@tdiagd = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdiag = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tlevel = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tnewton = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tcholesky = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tconjgrad = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdgeev = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmetwo = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmeone = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@chknm = internal unnamed_addr global ptr null, align 8
@.str.60 = private unnamed_addr constant [18 x i8] c"\09checkpoint:  %s\0A\00", align 1
@md.xold = internal unnamed_addr global ptr null, align 8
@md.accel = internal unnamed_addr global ptr null, align 8
@md.minv = internal unnamed_addr global ptr null, align 8
@md.nold = internal unnamed_addr global i32 0, align 4
@.str.61 = private unnamed_addr constant [35 x i8] c"unable to allocate space for minv\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"unable to allocate space for xold\0A\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"unable to allocate space for accel\0A\00", align 1
@max_step = internal unnamed_addr global i32 -1, align 4
@t = internal unnamed_addr global double 0.000000e+00, align 8
@tnmode = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@mme34.grad = internal unnamed_addr global ptr null, align 8
@.str.65 = private unnamed_addr constant [21 x i8] c"      iter    Total\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"ff:%6d %9.2f\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"     bond:  %15.9f\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"    angle:  %15.9f\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c" dihedral:  %15.9f\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"    enb14:  %15.9f\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"    eel14:  %15.9f\0A\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"      enb:  %15.9f\0A\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"      eel:  %15.9f\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"      egb:  %15.9f\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"    econs:  %15.9f\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"    esurf:  %15.9f\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"    Total:  %15.9f\0A\00", align 1
@egb.reff = internal unnamed_addr global ptr null, align 8
@egb.sumdeijda = internal unnamed_addr global ptr null, align 8
@egb.psi = internal unnamed_addr global ptr null, align 8
@egb.reqack = internal unnamed_addr global ptr null, align 8
@egb.iexw = internal unnamed_addr global ptr null, align 8
@.str.80 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 1, taskid = %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 3, taskid = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 5, taskid = %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"bad value for Pn: %d %d %d %d %8.3f\0A\00", align 1
@.str.85 = private unnamed_addr constant [51 x i8] c"NULL pair list entry in nbond loop 1, taskid = %d\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @seconds() local_unnamed_addr #0 !prof !72 {
  ret double 1.000000e-01
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @myroc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !72 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = sdiv i32 %0, %1
  %8 = srem i32 %7, %2
  %9 = icmp eq i32 %8, %3
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %4, %6
  %12 = phi i32 [ %10, %6 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @get_nr_debug() local_unnamed_addr #0 !prof !72 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_blocksize() local_unnamed_addr #1 !prof !73 {
  %1 = load i32, ptr @blocksize, align 4, !tbaa !74
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @get_mytaskid() local_unnamed_addr #2 !prof !78 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @get_numtasks() local_unnamed_addr #0 !prof !72 {
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @mpierror(i32 noundef %0) local_unnamed_addr #3 !prof !79 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4, !prof !80

3:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #24
  unreachable

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @reducerror(i32 noundef %0) local_unnamed_addr #6 !prof !81 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4, !prof !82

3:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #24
  unreachable

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @mpifinalize() local_unnamed_addr #0 !prof !79 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mpiinit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 !prof !79 {
  store i32 0, ptr %2, align 4, !tbaa !74
  store i32 1, ptr %3, align 4, !tbaa !74
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @getxyz(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !prof !72 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @getxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @getxyzw(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !72 {
  %5 = alloca [82 x i8], align 16
  %6 = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #25
  %7 = load ptr, ptr %0, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1, !tbaa !85
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr @stdin, align 8, !tbaa !83
  br label %29

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdin, align 8, !tbaa !83
  br label %29

19:                                               ; preds = %14
  %20 = tail call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !83
  %24 = load ptr, ptr %0, align 8, !tbaa !83
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %24) #27
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ null, %22 ], [ %20, %19 ]
  br i1 %21, label %28, label %29

28:                                               ; preds = %26
  tail call void @exit(i32 noundef 1) #24
  unreachable

29:                                               ; preds = %26, %17, %12
  %30 = phi ptr [ %18, %17 ], [ %13, %12 ], [ %27, %26 ]
  %31 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #25
  %32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %1) #25
  %33 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #25
  %34 = load i32, ptr %1, align 4, !tbaa !74
  %35 = mul nsw i32 %34, %3
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %29
  %38 = getelementptr inbounds [21 x i8], ptr %6, i64 0, i64 20
  %39 = add nsw i32 %3, -1
  br label %40

40:                                               ; preds = %37, %59
  %41 = phi i64 [ 0, %37 ], [ %60, %59 ]
  %42 = trunc i64 %41 to i32
  %43 = srem i32 %42, %3
  %44 = mul nsw i32 %43, 20
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %5, i64 %45
  %47 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %46, i64 noundef 20) #25
  store i8 0, ptr %38, align 4, !tbaa !85
  %48 = call double @strtod(ptr nocapture noundef nonnull %6, ptr noundef null) #25
  %49 = getelementptr inbounds double, ptr %2, i64 %41
  store double %48, ptr %49, align 8, !tbaa !86
  %50 = icmp eq i32 %43, %39
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, ptr %1, align 4, !tbaa !74
  %53 = mul nsw i32 %52, %3
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %41, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #25
  br label %59

59:                                               ; preds = %40, %51, %57
  %60 = add nuw nsw i64 %41, 1
  %61 = load i32, ptr %1, align 4, !tbaa !74
  %62 = mul nsw i32 %61, %3
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %40, label %65, !llvm.loop !88

65:                                               ; preds = %59, %29
  %66 = load ptr, ptr @stdin, align 8, !tbaa !83
  %67 = icmp eq ptr %30, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @fclose(ptr noundef %30)
  br label %70

70:                                               ; preds = %68, %65
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %5) #25
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putxyz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 !prof !72 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @putxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putxyzw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !72 {
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !83
  br label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef %5, ptr noundef nonnull @.str.4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !83
  %15 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %14) #25
  br label %16

16:                                               ; preds = %10, %13, %8
  %17 = phi ptr [ null, %13 ], [ %11, %10 ], [ %9, %8 ]
  %18 = phi i1 [ false, %13 ], [ true, %10 ], [ true, %8 ]
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4, !tbaa !74
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %20)
  %22 = load i32, ptr %1, align 4, !tbaa !74
  %23 = mul nsw i32 %22, %3
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = icmp eq i32 %3, 3
  %27 = sext i32 %3 to i64
  br label %28

28:                                               ; preds = %25, %42
  %29 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !86
  %32 = getelementptr double, ptr %30, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !86
  %34 = getelementptr double, ptr %30, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !86
  br i1 %26, label %36, label %38

36:                                               ; preds = %28
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, double noundef %31, double noundef %33, double noundef %35)
  br label %42

38:                                               ; preds = %28
  %39 = getelementptr double, ptr %30, i64 3
  %40 = load double, ptr %39, align 8, !tbaa !86
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.8, double noundef %31, double noundef %33, double noundef %35, double noundef %40)
  br label %42

42:                                               ; preds = %36, %38
  %43 = add i64 %29, %27
  %44 = load i32, ptr %1, align 4, !tbaa !74
  %45 = mul nsw i32 %44, %3
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %28, label %48, !llvm.loop !91

48:                                               ; preds = %42, %19
  %49 = load ptr, ptr @stdout, align 8, !tbaa !83
  %50 = icmp eq ptr %17, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @fclose(ptr noundef %17)
  br label %53

53:                                               ; preds = %51, %48
  br i1 %18, label %55, label %54

54:                                               ; preds = %16, %53
  tail call void @exit(i32 noundef 1) #24
  unreachable

55:                                               ; preds = %53
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @strindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !72 {
  %3 = load i8, ptr %0, align 1, !tbaa !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !85
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %5, %33
  %9 = phi i64 [ 0, %5 ], [ %34, %33 ]
  br i1 %7, label %10, label %28

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !85
  %13 = icmp eq i8 %12, %6
  br i1 %13, label %19, label %28

14:                                               ; preds = %19
  %15 = add nuw i64 %21, 1
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !85
  %18 = icmp eq i8 %17, %24
  br i1 %18, label %19, label %26, !llvm.loop !92

19:                                               ; preds = %10, %14
  %20 = phi i64 [ %22, %14 ], [ 0, %10 ]
  %21 = phi i64 [ %15, %14 ], [ %9, %10 ]
  %22 = add nuw i64 %20, 1
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !85
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %14, label %28, !llvm.loop !92

26:                                               ; preds = %14
  %27 = trunc i64 %22 to i32
  br label %28

28:                                               ; preds = %19, %10, %26, %8
  %29 = phi i32 [ 0, %8 ], [ %27, %26 ], [ 0, %10 ], [ 1, %19 ]
  %30 = phi i1 [ %7, %8 ], [ %25, %26 ], [ %7, %10 ], [ %25, %19 ]
  %31 = icmp eq i32 %29, 0
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = add nuw i64 %9, 1
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !85
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %8, !llvm.loop !93

38:                                               ; preds = %28
  %39 = trunc i64 %9 to i32
  br label %40

40:                                               ; preds = %38, %33, %2
  %41 = phi i32 [ -1, %2 ], [ %39, %38 ], [ -1, %33 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

declare ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @getxv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 !prof !72 {
  %6 = alloca [82 x i8], align 16
  %7 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %7) #25
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1, !tbaa !85
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stdin, align 8, !tbaa !83
  br label %30

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdin, align 8, !tbaa !83
  br label %30

20:                                               ; preds = %15
  %21 = tail call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.1)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !83
  %25 = load ptr, ptr %0, align 8, !tbaa !83
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %25) #27
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ null, %23 ], [ %21, %20 ]
  br i1 %22, label %29, label %30

29:                                               ; preds = %27
  tail call void @exit(i32 noundef 1) #24
  unreachable

30:                                               ; preds = %27, %18, %13
  %31 = phi ptr [ %19, %18 ], [ %14, %13 ], [ %28, %27 ]
  %32 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  %33 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  store double 0.000000e+00, ptr %2, align 8, !tbaa !86
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %2) #25
  %35 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  %36 = load i32, ptr %1, align 4, !tbaa !74
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %40

40:                                               ; preds = %38, %59
  %41 = phi i64 [ 0, %38 ], [ %60, %59 ]
  %42 = trunc i64 %41 to i32
  %43 = urem i32 %42, 6
  %44 = mul nuw nsw i32 %43, 12
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %6, i64 %45
  %47 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %46, i64 noundef 12) #25
  store i8 0, ptr %39, align 1, !tbaa !85
  %48 = call double @strtod(ptr nocapture noundef nonnull %7, ptr noundef null) #25
  %49 = getelementptr inbounds double, ptr %3, i64 %41
  store double %48, ptr %49, align 8, !tbaa !86
  %50 = icmp eq i32 %43, 5
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, ptr %1, align 4, !tbaa !74
  %53 = mul nsw i32 %52, 3
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %41, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  br label %59

59:                                               ; preds = %40, %51, %57
  %60 = add nuw nsw i64 %41, 1
  %61 = load i32, ptr %1, align 4, !tbaa !74
  %62 = mul nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %40, label %65, !llvm.loop !94

65:                                               ; preds = %59, %30
  %66 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  %67 = icmp eq ptr %66, null
  %68 = load i32, ptr %1, align 4, !tbaa !74
  %69 = icmp sgt i32 %68, 0
  br i1 %67, label %73, label %70

70:                                               ; preds = %65
  br i1 %69, label %71, label %101

71:                                               ; preds = %70
  %72 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %79

73:                                               ; preds = %65
  br i1 %69, label %74, label %98

74:                                               ; preds = %73
  %75 = mul i32 %68, 3
  %76 = call i32 @llvm.smax.i32(i32 %75, i32 1)
  %77 = zext nneg i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %78, i1 false), !tbaa !86
  br label %98

79:                                               ; preds = %71, %92
  %80 = phi i64 [ 0, %71 ], [ %93, %92 ]
  %81 = trunc i64 %80 to i32
  %82 = urem i32 %81, 6
  %83 = mul nuw nsw i32 %82, 12
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %6, i64 %84
  %86 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %85, i64 noundef 12) #25
  store i8 0, ptr %72, align 1, !tbaa !85
  %87 = call double @strtod(ptr nocapture noundef nonnull %7, ptr noundef null) #25
  %88 = getelementptr inbounds double, ptr %4, i64 %80
  store double %87, ptr %88, align 8, !tbaa !86
  %89 = icmp eq i32 %82, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #25
  br label %92

92:                                               ; preds = %79, %90
  %93 = add nuw nsw i64 %80, 1
  %94 = load i32, ptr %1, align 4, !tbaa !74
  %95 = mul nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %79, label %101, !llvm.loop !95

98:                                               ; preds = %74, %73
  %99 = load ptr, ptr @nabout, align 8, !tbaa !83
  %100 = call i64 @fwrite(ptr nonnull @.str.11, i64 25, i64 1, ptr %99)
  br label %101

101:                                              ; preds = %92, %70, %98
  %102 = load ptr, ptr @stdin, align 8, !tbaa !83
  %103 = icmp eq ptr %31, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call i32 @fclose(ptr noundef %31)
  br label %106

106:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %6) #25
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putxv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #3 !prof !72 {
  %7 = load ptr, ptr %0, align 8, !tbaa !83
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr @stdout, align 8, !tbaa !83
  br label %18

12:                                               ; preds = %6
  %13 = tail call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str.4)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !83
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %16) #25
  br label %18

18:                                               ; preds = %12, %15, %10
  %19 = phi ptr [ null, %15 ], [ %13, %12 ], [ %11, %10 ]
  %20 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %10 ]
  br i1 %20, label %21, label %100

21:                                               ; preds = %18
  %22 = load ptr, ptr %1, align 8, !tbaa !83
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef %22)
  %24 = load i32, ptr %2, align 4, !tbaa !74
  %25 = load double, ptr %3, align 8, !tbaa !86
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %24, double noundef %25)
  %27 = load i32, ptr %2, align 4, !tbaa !74
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = mul nsw i32 %27, 3
  br label %36

31:                                               ; preds = %59, %21
  %32 = load i32, ptr %2, align 4, !tbaa !74
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = mul nsw i32 %32, 3
  br label %65

36:                                               ; preds = %29, %59
  %37 = phi i64 [ 0, %29 ], [ %60, %59 ]
  %38 = phi i32 [ %30, %29 ], [ %62, %59 ]
  %39 = add nuw nsw i64 %37, 3
  %40 = sext i32 %38 to i64
  %41 = icmp slt i64 %39, %40
  %42 = getelementptr inbounds double, ptr %4, i64 %37
  %43 = load double, ptr %42, align 8, !tbaa !86
  %44 = or disjoint i64 %37, 1
  %45 = getelementptr inbounds double, ptr %4, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !86
  %47 = getelementptr double, ptr %42, i64 2
  %48 = load double, ptr %47, align 8, !tbaa !86
  br i1 %41, label %49, label %57

49:                                               ; preds = %36
  %50 = getelementptr inbounds double, ptr %4, i64 %39
  %51 = load double, ptr %50, align 8, !tbaa !86
  %52 = getelementptr double, ptr %42, i64 4
  %53 = load double, ptr %52, align 8, !tbaa !86
  %54 = getelementptr double, ptr %42, i64 5
  %55 = load double, ptr %54, align 8, !tbaa !86
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %43, double noundef %46, double noundef %48, double noundef %51, double noundef %53, double noundef %55)
  br label %59

57:                                               ; preds = %36
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %43, double noundef %46, double noundef %48)
  br label %59

59:                                               ; preds = %49, %57
  %60 = add nuw i64 %37, 6
  %61 = load i32, ptr %2, align 4, !tbaa !74
  %62 = mul nsw i32 %61, 3
  %63 = trunc i64 %60 to i32
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %36, label %31, !llvm.loop !96

65:                                               ; preds = %34, %88
  %66 = phi i64 [ 0, %34 ], [ %89, %88 ]
  %67 = phi i32 [ %35, %34 ], [ %91, %88 ]
  %68 = add nuw nsw i64 %66, 3
  %69 = sext i32 %67 to i64
  %70 = icmp slt i64 %68, %69
  %71 = getelementptr inbounds double, ptr %5, i64 %66
  %72 = load double, ptr %71, align 8, !tbaa !86
  %73 = or disjoint i64 %66, 1
  %74 = getelementptr inbounds double, ptr %5, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !86
  %76 = getelementptr double, ptr %71, i64 2
  %77 = load double, ptr %76, align 8, !tbaa !86
  br i1 %70, label %78, label %86

78:                                               ; preds = %65
  %79 = getelementptr inbounds double, ptr %5, i64 %68
  %80 = load double, ptr %79, align 8, !tbaa !86
  %81 = getelementptr double, ptr %71, i64 4
  %82 = load double, ptr %81, align 8, !tbaa !86
  %83 = getelementptr double, ptr %71, i64 5
  %84 = load double, ptr %83, align 8, !tbaa !86
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %72, double noundef %75, double noundef %77, double noundef %80, double noundef %82, double noundef %84)
  br label %88

86:                                               ; preds = %65
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %72, double noundef %75, double noundef %77)
  br label %88

88:                                               ; preds = %78, %86
  %89 = add nuw i64 %66, 6
  %90 = load i32, ptr %2, align 4, !tbaa !74
  %91 = mul nsw i32 %90, 3
  %92 = trunc i64 %89 to i32
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %65, label %94, !llvm.loop !97

94:                                               ; preds = %88, %31
  %95 = load ptr, ptr @stdout, align 8, !tbaa !83
  %96 = icmp eq ptr %19, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @fclose(ptr noundef %19)
  br label %99

99:                                               ; preds = %97, %94
  br i1 %20, label %101, label %100

100:                                              ; preds = %18, %99
  tail call void @exit(i32 noundef 1) #24
  unreachable

101:                                              ; preds = %99
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @checkpoint(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !72 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %1, ptr %5, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ %3, %4 ]
  %11 = add nuw nsw i32 %9, 1
  %12 = udiv i32 %10, 10
  %13 = icmp ult i32 %10, 10
  br i1 %13, label %14, label %8, !llvm.loop !98

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %9, 2
  %16 = zext nneg i32 %15 to i64
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #28
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %3) #25
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %20 = trunc i64 %19 to i32
  %21 = load i8, ptr %0, align 1, !tbaa !85
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %14, %50
  %24 = phi i64 [ %51, %50 ], [ 0, %14 ]
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !85
  %27 = icmp eq i8 %26, 37
  br i1 %27, label %33, label %45

28:                                               ; preds = %33
  %29 = add nuw i64 %35, 1
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !85
  %32 = icmp eq i8 %31, %38
  br i1 %32, label %33, label %40, !llvm.loop !92

33:                                               ; preds = %23, %28
  %34 = phi i64 [ %36, %28 ], [ 0, %23 ]
  %35 = phi i64 [ %29, %28 ], [ %24, %23 ]
  %36 = add nuw nsw i64 %34, 1
  %37 = getelementptr inbounds i8, ptr @.str.3, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !85
  %39 = icmp eq i64 %36, 2
  br i1 %39, label %43, label %28, !llvm.loop !92

40:                                               ; preds = %28
  %41 = icmp ne i8 %38, 0
  %42 = trunc i64 %36 to i32
  br label %45

43:                                               ; preds = %33
  %44 = icmp ne i8 %38, 0
  br label %45

45:                                               ; preds = %43, %40, %23
  %46 = phi i32 [ %42, %40 ], [ 0, %23 ], [ 1, %43 ]
  %47 = phi i1 [ %41, %40 ], [ true, %23 ], [ %44, %43 ]
  %48 = icmp eq i32 %46, 0
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = add nuw i64 %24, 1
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !85
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %23, !llvm.loop !93

55:                                               ; preds = %45
  %56 = trunc i64 %24 to i32
  br label %57

57:                                               ; preds = %55, %50, %14
  %58 = phi i32 [ -1, %14 ], [ %56, %55 ], [ -1, %50 ]
  %59 = icmp slt i32 %58, 0
  %60 = add nsw i32 %11, %20
  br i1 %59, label %61, label %73

61:                                               ; preds = %57
  %62 = add nsw i32 %60, 1
  %63 = sext i32 %62 to i64
  %64 = tail call noalias ptr @malloc(i64 noundef %63) #28
  store ptr %64, ptr %6, align 8, !tbaa !83
  %65 = shl i64 %19, 32
  %66 = ashr exact i64 %65, 32
  %67 = tail call ptr @strncpy(ptr noundef %64, ptr noundef nonnull %0, i64 noundef %66) #25
  %68 = getelementptr inbounds i8, ptr %64, i64 %66
  %69 = zext nneg i32 %11 to i64
  %70 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %69) #25
  %71 = sext i32 %60 to i64
  %72 = getelementptr inbounds i8, ptr %64, i64 %71
  br label %94

73:                                               ; preds = %57
  %74 = add i32 %9, %20
  %75 = sext i32 %74 to i64
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #28
  store ptr %76, ptr %6, align 8, !tbaa !83
  %77 = zext nneg i32 %58 to i64
  %78 = tail call ptr @strncpy(ptr noundef %76, ptr noundef nonnull %0, i64 noundef %77) #25
  %79 = getelementptr inbounds i8, ptr %76, i64 %77
  %80 = zext nneg i32 %11 to i64
  %81 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %80) #25
  %82 = add nuw nsw i32 %58, %11
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %76, i64 %83
  %85 = getelementptr i8, ptr %0, i64 %77
  %86 = getelementptr i8, ptr %85, i64 2
  %87 = add i32 %20, -2
  %88 = sub i32 %87, %58
  %89 = sext i32 %88 to i64
  %90 = tail call ptr @strncpy(ptr noundef nonnull %84, ptr noundef %86, i64 noundef %89) #25
  %91 = sext i32 %60 to i64
  %92 = getelementptr i8, ptr %76, i64 %91
  %93 = getelementptr i8, ptr %92, i64 -2
  br label %94

94:                                               ; preds = %73, %61
  %95 = phi ptr [ %93, %73 ], [ %72, %61 ]
  store i8 0, ptr %95, align 1, !tbaa !85
  %96 = load i1, ptr @dim, align 4
  %97 = select i1 %96, i32 4, i32 3
  %98 = call i32 @putxyzw(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %97)
  %99 = load ptr, ptr %6, align 8, !tbaa !83
  tail call void @free(ptr noundef %99) #25
  tail call void @free(ptr noundef %17) #25
  br label %100

100:                                              ; preds = %4, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @mme_timer() local_unnamed_addr #15 !prof !72 {
  %1 = load ptr, ptr @nabout, align 8, !tbaa !83
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %1)
  %3 = load ptr, ptr @nabout, align 8, !tbaa !83
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, double noundef 0.000000e+00)
  %5 = load ptr, ptr @nabout, align 8, !tbaa !83
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, double noundef 0.000000e+00)
  %7 = load ptr, ptr @nabout, align 8, !tbaa !83
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.19, double noundef 0.000000e+00)
  %9 = load ptr, ptr @nabout, align 8, !tbaa !83
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.20, double noundef 0.000000e+00)
  %11 = load ptr, ptr @nabout, align 8, !tbaa !83
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.21, double noundef 0.000000e+00)
  %13 = load ptr, ptr @nabout, align 8, !tbaa !83
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.22, double noundef 0.000000e+00)
  %15 = load ptr, ptr @nabout, align 8, !tbaa !83
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.23, double noundef 0.000000e+00)
  %17 = load ptr, ptr @nabout, align 8, !tbaa !83
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.24, double noundef 0.000000e+00)
  %19 = load ptr, ptr @nabout, align 8, !tbaa !83
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.25, double noundef 0.000000e+00)
  %21 = load ptr, ptr @nabout, align 8, !tbaa !83
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.26, double noundef 0.000000e+00)
  %23 = load ptr, ptr @nabout, align 8, !tbaa !83
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.27, double noundef 0.000000e+00)
  %25 = load ptr, ptr @nabout, align 8, !tbaa !83
  %26 = tail call i32 @fflush(ptr noundef %25)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mme_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 !prof !99 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i1 false, ptr @dim, align 4
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  store ptr %8, ptr @prm, align 8, !tbaa !83
  store ptr %3, ptr @x0, align 8, !tbaa !83
  store ptr %4, ptr @binposfp, align 8, !tbaa !83
  %9 = load ptr, ptr @frozen, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.parm, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %9, i32 noundef 0, i32 noundef %11) #25
  %12 = load ptr, ptr @constrained, align 8, !tbaa !83
  %13 = load ptr, ptr @prm, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %12, i32 noundef 0, i32 noundef %15) #25
  %16 = load ptr, ptr @prm, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.parm, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !102
  %19 = tail call ptr @ivector(i32 noundef 0, i32 noundef %18) #25
  store ptr %19, ptr @frozen, align 8, !tbaa !83
  %20 = load ptr, ptr @prm, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.parm, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = tail call ptr @ivector(i32 noundef 0, i32 noundef %22) #25
  store ptr %23, ptr @constrained, align 8, !tbaa !83
  %24 = load ptr, ptr @binposfp, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !104

26:                                               ; preds = %5
  %27 = tail call i32 @writebinposhdr(ptr noundef nonnull %24) #25
  br label %28

28:                                               ; preds = %26, %5
  %29 = load ptr, ptr @constrained, align 8, !tbaa !83
  %30 = tail call i32 @set_cons_mask(ptr noundef %0, ptr noundef %2, ptr noundef %29) #25
  store i32 %30, ptr @nconstrained, align 4, !tbaa !74
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32, !prof !104

32:                                               ; preds = %28
  %33 = icmp eq ptr %2, null
  %34 = load ptr, ptr @nabout, align 8, !tbaa !83
  br i1 %33, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.52, i32 noundef %30)
  br label %39

37:                                               ; preds = %32
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.53, i32 noundef %30, ptr noundef nonnull %2)
  br label %39

39:                                               ; preds = %35, %37, %28
  %40 = load i32, ptr @gb, align 4, !tbaa !74
  switch i32 %40, label %46 [
    i32 2, label %42
    i32 5, label %41
  ], !prof !105

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %39, %41
  %43 = phi double [ 1.000000e+00, %41 ], [ 8.000000e-01, %39 ]
  %44 = phi double [ 8.000000e-01, %41 ], [ 0.000000e+00, %39 ]
  %45 = phi double [ 4.850000e+00, %41 ], [ 0x400745E353F7CED9, %39 ]
  store double %43, ptr @gbalpha, align 8, !tbaa !86
  store double %44, ptr @gbbeta, align 8, !tbaa !86
  store double %45, ptr @gbgamma, align 8, !tbaa !86
  br label %46

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr @pairlistnp, align 8, !tbaa !83
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49, !prof !106

49:                                               ; preds = %46
  %50 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %63, !prof !107

52:                                               ; preds = %49, %52
  %53 = phi i64 [ %57, %52 ], [ 0, %49 ]
  %54 = load ptr, ptr @pairlistnp, align 8, !tbaa !83
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  tail call void @free_ivector(ptr noundef %56, i32 noundef 0, i32 noundef 1) #25
  %57 = add nuw nsw i64 %53, 1
  %58 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %52, label %61, !prof !108, !llvm.loop !109

61:                                               ; preds = %52
  %62 = trunc i64 %57 to i32
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi i32 [ 0, %49 ], [ %62, %61 ]
  store i32 %64, ptr %6, align 4, !tbaa !74
  %65 = load ptr, ptr @pairlistnp, align 8, !tbaa !83
  tail call void @free(ptr noundef %65) #25
  br label %66

66:                                               ; preds = %63, %46
  %67 = load ptr, ptr @upairsnp, align 8, !tbaa !83
  %68 = load ptr, ptr @prm, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %67, i32 noundef 0, i32 noundef %70) #25
  %71 = load ptr, ptr @lpairsnp, align 8, !tbaa !83
  %72 = load ptr, ptr @prm, align 8, !tbaa !83
  %73 = getelementptr inbounds %struct.parm, ptr %72, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %71, i32 noundef 0, i32 noundef %74) #25
  %75 = load ptr, ptr @prm, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.parm, ptr %75, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !102
  %78 = tail call ptr @ivector(i32 noundef 0, i32 noundef %77) #25
  store ptr %78, ptr @upairsnp, align 8, !tbaa !83
  %79 = load ptr, ptr @prm, align 8, !tbaa !83
  %80 = getelementptr inbounds %struct.parm, ptr %79, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !102
  %82 = tail call ptr @ivector(i32 noundef 0, i32 noundef %81) #25
  store ptr %82, ptr @lpairsnp, align 8, !tbaa !83
  %83 = load ptr, ptr @prm, align 8, !tbaa !83
  %84 = getelementptr inbounds %struct.parm, ptr %83, i64 0, i32 4
  %85 = load i32, ptr %84, align 8, !tbaa !102
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 3
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #28
  store ptr %88, ptr @pairlistnp, align 8, !tbaa !83
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90, !prof !110

90:                                               ; preds = %66
  %91 = load i32, ptr %84, align 8, !tbaa !102
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %111, !prof !107

93:                                               ; preds = %90
  %94 = load ptr, ptr @upairsnp, align 8, !tbaa !83
  br label %100

95:                                               ; preds = %66
  %96 = load ptr, ptr @nabout, align 8, !tbaa !83
  %97 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 47, i64 1, ptr %96)
  %98 = load ptr, ptr @nabout, align 8, !tbaa !83
  %99 = tail call i32 @fflush(ptr noundef %98)
  tail call void @exit(i32 noundef 1) #24
  unreachable

100:                                              ; preds = %93, %100
  %101 = phi i64 [ 0, %93 ], [ %105, %100 ]
  %102 = getelementptr inbounds ptr, ptr %88, i64 %101
  store ptr null, ptr %102, align 8, !tbaa !83
  %103 = getelementptr inbounds i32, ptr %94, i64 %101
  store i32 0, ptr %103, align 4, !tbaa !74
  %104 = getelementptr inbounds i32, ptr %82, i64 %101
  store i32 0, ptr %104, align 4, !tbaa !74
  %105 = add nuw nsw i64 %101, 1
  %106 = load i32, ptr %84, align 8, !tbaa !102
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %100, label %109, !prof !108, !llvm.loop !111

109:                                              ; preds = %100
  %110 = trunc i64 %105 to i32
  br label %111

111:                                              ; preds = %109, %90
  %112 = phi i32 [ 0, %90 ], [ %110, %109 ]
  store i32 %112, ptr %6, align 4, !tbaa !74
  %113 = load ptr, ptr @pairlist2np, align 8, !tbaa !83
  %114 = icmp eq ptr %113, null
  br i1 %114, label %132, label %115, !prof !106

115:                                              ; preds = %111
  %116 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %129, !prof !107

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %123, %118 ], [ 0, %115 ]
  %120 = load ptr, ptr @pairlist2np, align 8, !tbaa !83
  %121 = getelementptr inbounds ptr, ptr %120, i64 %119
  %122 = load ptr, ptr %121, align 8, !tbaa !83
  tail call void @free_ivector(ptr noundef %122, i32 noundef 0, i32 noundef 1) #25
  %123 = add nuw nsw i64 %119, 1
  %124 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %118, label %127, !prof !108, !llvm.loop !112

127:                                              ; preds = %118
  %128 = trunc i64 %123 to i32
  br label %129

129:                                              ; preds = %127, %115
  %130 = phi i32 [ 0, %115 ], [ %128, %127 ]
  store i32 %130, ptr %6, align 4, !tbaa !74
  %131 = load ptr, ptr @pairlist2np, align 8, !tbaa !83
  tail call void @free(ptr noundef %131) #25
  br label %132

132:                                              ; preds = %129, %111
  %133 = load ptr, ptr @upairs2np, align 8, !tbaa !83
  %134 = load ptr, ptr @prm, align 8, !tbaa !83
  %135 = getelementptr inbounds %struct.parm, ptr %134, i64 0, i32 4
  %136 = load i32, ptr %135, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %133, i32 noundef 0, i32 noundef %136) #25
  %137 = load ptr, ptr @lpairs2np, align 8, !tbaa !83
  %138 = load ptr, ptr @prm, align 8, !tbaa !83
  %139 = getelementptr inbounds %struct.parm, ptr %138, i64 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %137, i32 noundef 0, i32 noundef %140) #25
  %141 = load ptr, ptr @prm, align 8, !tbaa !83
  %142 = getelementptr inbounds %struct.parm, ptr %141, i64 0, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !102
  %144 = tail call ptr @ivector(i32 noundef 0, i32 noundef %143) #25
  store ptr %144, ptr @upairs2np, align 8, !tbaa !83
  %145 = load ptr, ptr @prm, align 8, !tbaa !83
  %146 = getelementptr inbounds %struct.parm, ptr %145, i64 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !102
  %148 = tail call ptr @ivector(i32 noundef 0, i32 noundef %147) #25
  store ptr %148, ptr @lpairs2np, align 8, !tbaa !83
  %149 = load ptr, ptr @prm, align 8, !tbaa !83
  %150 = getelementptr inbounds %struct.parm, ptr %149, i64 0, i32 4
  %151 = load i32, ptr %150, align 8, !tbaa !102
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 3
  %154 = tail call noalias ptr @malloc(i64 noundef %153) #28
  store ptr %154, ptr @pairlist2np, align 8, !tbaa !83
  %155 = icmp eq ptr %154, null
  br i1 %155, label %161, label %156, !prof !110

156:                                              ; preds = %132
  %157 = load i32, ptr %150, align 8, !tbaa !102
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %177, !prof !107

159:                                              ; preds = %156
  %160 = load ptr, ptr @upairs2np, align 8, !tbaa !83
  br label %166

161:                                              ; preds = %132
  %162 = load ptr, ptr @nabout, align 8, !tbaa !83
  %163 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 48, i64 1, ptr %162)
  %164 = load ptr, ptr @nabout, align 8, !tbaa !83
  %165 = tail call i32 @fflush(ptr noundef %164)
  tail call void @exit(i32 noundef 1) #24
  unreachable

166:                                              ; preds = %159, %166
  %167 = phi i64 [ 0, %159 ], [ %171, %166 ]
  %168 = getelementptr inbounds ptr, ptr %154, i64 %167
  store ptr null, ptr %168, align 8, !tbaa !83
  %169 = getelementptr inbounds i32, ptr %160, i64 %167
  store i32 0, ptr %169, align 4, !tbaa !74
  %170 = getelementptr inbounds i32, ptr %148, i64 %167
  store i32 0, ptr %170, align 4, !tbaa !74
  %171 = add nuw nsw i64 %167, 1
  %172 = load i32, ptr %150, align 8, !tbaa !102
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %166, label %175, !prof !108, !llvm.loop !113

175:                                              ; preds = %166
  %176 = trunc i64 %171 to i32
  br label %177

177:                                              ; preds = %175, %156
  %178 = phi i32 [ 0, %156 ], [ %176, %175 ]
  store i32 %178, ptr %6, align 4, !tbaa !74
  %179 = load ptr, ptr @pairlist, align 8, !tbaa !83
  %180 = icmp eq ptr %179, null
  br i1 %180, label %198, label %181, !prof !106

181:                                              ; preds = %177
  %182 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %195, !prof !107

184:                                              ; preds = %181, %184
  %185 = phi i64 [ %189, %184 ], [ 0, %181 ]
  %186 = load ptr, ptr @pairlist, align 8, !tbaa !83
  %187 = getelementptr inbounds ptr, ptr %186, i64 %185
  %188 = load ptr, ptr %187, align 8, !tbaa !83
  tail call void @free_ivector(ptr noundef %188, i32 noundef 0, i32 noundef 1) #25
  %189 = add nuw nsw i64 %185, 1
  %190 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %189, %191
  br i1 %192, label %184, label %193, !prof !108, !llvm.loop !114

193:                                              ; preds = %184
  %194 = trunc i64 %189 to i32
  br label %195

195:                                              ; preds = %193, %181
  %196 = phi i32 [ 0, %181 ], [ %194, %193 ]
  store i32 %196, ptr %6, align 4, !tbaa !74
  %197 = load ptr, ptr @pairlist, align 8, !tbaa !83
  tail call void @free(ptr noundef %197) #25
  br label %198

198:                                              ; preds = %195, %177
  store i32 -1, ptr @nb_pairs, align 4, !tbaa !74
  %199 = load ptr, ptr @upairs, align 8, !tbaa !83
  %200 = load ptr, ptr @prm, align 8, !tbaa !83
  %201 = getelementptr inbounds %struct.parm, ptr %200, i64 0, i32 4
  %202 = load i32, ptr %201, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %199, i32 noundef 0, i32 noundef %202) #25
  %203 = load ptr, ptr @lpairs, align 8, !tbaa !83
  %204 = load ptr, ptr @prm, align 8, !tbaa !83
  %205 = getelementptr inbounds %struct.parm, ptr %204, i64 0, i32 4
  %206 = load i32, ptr %205, align 8, !tbaa !102
  tail call void @free_ivector(ptr noundef %203, i32 noundef 0, i32 noundef %206) #25
  %207 = load ptr, ptr @prm, align 8, !tbaa !83
  %208 = getelementptr inbounds %struct.parm, ptr %207, i64 0, i32 4
  %209 = load i32, ptr %208, align 8, !tbaa !102
  %210 = tail call ptr @ivector(i32 noundef 0, i32 noundef %209) #25
  store ptr %210, ptr @upairs, align 8, !tbaa !83
  %211 = load ptr, ptr @prm, align 8, !tbaa !83
  %212 = getelementptr inbounds %struct.parm, ptr %211, i64 0, i32 4
  %213 = load i32, ptr %212, align 8, !tbaa !102
  %214 = tail call ptr @ivector(i32 noundef 0, i32 noundef %213) #25
  store ptr %214, ptr @lpairs, align 8, !tbaa !83
  %215 = load ptr, ptr @prm, align 8, !tbaa !83
  %216 = getelementptr inbounds %struct.parm, ptr %215, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !102
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 3
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #28
  store ptr %220, ptr @pairlist, align 8, !tbaa !83
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222, !prof !110

222:                                              ; preds = %198
  %223 = load i32, ptr %216, align 8, !tbaa !102
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %243, !prof !107

225:                                              ; preds = %222
  %226 = load ptr, ptr @upairs, align 8, !tbaa !83
  br label %232

227:                                              ; preds = %198
  %228 = load ptr, ptr @nabout, align 8, !tbaa !83
  %229 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 45, i64 1, ptr %228)
  %230 = load ptr, ptr @nabout, align 8, !tbaa !83
  %231 = tail call i32 @fflush(ptr noundef %230)
  tail call void @exit(i32 noundef 1) #24
  unreachable

232:                                              ; preds = %225, %232
  %233 = phi i64 [ 0, %225 ], [ %237, %232 ]
  %234 = getelementptr inbounds ptr, ptr %220, i64 %233
  store ptr null, ptr %234, align 8, !tbaa !83
  %235 = getelementptr inbounds i32, ptr %226, i64 %233
  store i32 0, ptr %235, align 4, !tbaa !74
  %236 = getelementptr inbounds i32, ptr %214, i64 %233
  store i32 0, ptr %236, align 4, !tbaa !74
  %237 = add nuw nsw i64 %233, 1
  %238 = load i32, ptr %216, align 8, !tbaa !102
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %232, label %241, !prof !108, !llvm.loop !115

241:                                              ; preds = %232
  %242 = trunc i64 %237 to i32
  br label %243

243:                                              ; preds = %241, %222
  %244 = phi i32 [ 0, %222 ], [ %242, %241 ]
  store i32 %244, ptr %6, align 4, !tbaa !74
  %245 = load ptr, ptr @frozen, align 8, !tbaa !83
  %246 = tail call i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr noundef %245) #25
  store i32 %246, ptr @nfrozen, align 4, !tbaa !74
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248, !prof !104

248:                                              ; preds = %243
  %249 = load ptr, ptr @nabout, align 8, !tbaa !83
  %250 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %249, ptr noundef nonnull @.str.57, i32 noundef %246, ptr noundef %1)
  br label %251

251:                                              ; preds = %248, %243
  %252 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  %253 = icmp eq ptr %252, null
  br i1 %253, label %271, label %254, !prof !106

254:                                              ; preds = %251
  %255 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %268, !prof !107

257:                                              ; preds = %254, %257
  %258 = phi i64 [ %262, %257 ], [ 0, %254 ]
  %259 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  %260 = getelementptr inbounds ptr, ptr %259, i64 %258
  %261 = load ptr, ptr %260, align 8, !tbaa !83
  tail call void @free_ivector(ptr noundef %261, i32 noundef 0, i32 noundef 1) #25
  %262 = add nuw nsw i64 %258, 1
  %263 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %264 = sext i32 %263 to i64
  %265 = icmp slt i64 %262, %264
  br i1 %265, label %257, label %266, !prof !108, !llvm.loop !116

266:                                              ; preds = %257
  %267 = trunc i64 %262 to i32
  br label %268

268:                                              ; preds = %266, %254
  %269 = phi i32 [ 0, %254 ], [ %267, %266 ]
  store i32 %269, ptr %6, align 4, !tbaa !74
  %270 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  tail call void @free(ptr noundef %270) #25
  br label %271

271:                                              ; preds = %268, %251
  %272 = load ptr, ptr @prm, align 8, !tbaa !83
  %273 = getelementptr inbounds %struct.parm, ptr %272, i64 0, i32 4
  %274 = load i32, ptr %273, align 8, !tbaa !102
  %275 = sext i32 %274 to i64
  %276 = shl nsw i64 %275, 3
  %277 = tail call noalias ptr @malloc(i64 noundef %276) #28
  store ptr %277, ptr @N14pearlist, align 8, !tbaa !83
  %278 = icmp eq ptr %277, null
  br i1 %278, label %284, label %279, !prof !110

279:                                              ; preds = %271
  %280 = load ptr, ptr @prm, align 8, !tbaa !83
  %281 = getelementptr inbounds %struct.parm, ptr %280, i64 0, i32 4
  %282 = load i32, ptr %281, align 8, !tbaa !102
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %289, label %337, !prof !107

284:                                              ; preds = %271
  %285 = load ptr, ptr @nabout, align 8, !tbaa !83
  %286 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 48, i64 1, ptr %285)
  %287 = load ptr, ptr @nabout, align 8, !tbaa !83
  %288 = tail call i32 @fflush(ptr noundef %287)
  tail call void @exit(i32 noundef 1) #24
  unreachable

289:                                              ; preds = %279, %327
  %290 = phi i64 [ %329, %327 ], [ 0, %279 ]
  %291 = phi ptr [ %330, %327 ], [ %280, %279 ]
  %292 = phi i32 [ %328, %327 ], [ 0, %279 ]
  %293 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  %294 = getelementptr inbounds ptr, ptr %293, i64 %290
  store ptr null, ptr %294, align 8, !tbaa !83
  %295 = getelementptr inbounds %struct.parm, ptr %291, i64 0, i32 91
  %296 = load ptr, ptr %295, align 8, !tbaa !117
  %297 = getelementptr inbounds i32, ptr %296, i64 %290
  %298 = load i32, ptr %297, align 4, !tbaa !74
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %327, !prof !118

300:                                              ; preds = %289
  %301 = tail call ptr @ivector(i32 noundef 0, i32 noundef %298) #25
  %302 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  %303 = getelementptr inbounds ptr, ptr %302, i64 %290
  store ptr %301, ptr %303, align 8, !tbaa !83
  %304 = load ptr, ptr @prm, align 8, !tbaa !83
  %305 = getelementptr inbounds %struct.parm, ptr %304, i64 0, i32 91
  %306 = load ptr, ptr %305, align 8, !tbaa !117
  %307 = getelementptr inbounds i32, ptr %306, i64 %290
  %308 = load i32, ptr %307, align 4, !tbaa !74
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %324, !prof !119

310:                                              ; preds = %300
  %311 = getelementptr inbounds %struct.parm, ptr %304, i64 0, i32 92
  %312 = load ptr, ptr %311, align 8, !tbaa !120
  %313 = sext i32 %292 to i64
  %314 = getelementptr i32, ptr %312, i64 %313
  br label %315

315:                                              ; preds = %310, %315
  %316 = phi i64 [ 0, %310 ], [ %320, %315 ]
  %317 = getelementptr i32, ptr %314, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !74
  %319 = getelementptr inbounds i32, ptr %301, i64 %316
  store i32 %318, ptr %319, align 4, !tbaa !74
  %320 = add nuw nsw i64 %316, 1
  %321 = load i32, ptr %307, align 4, !tbaa !74
  %322 = sext i32 %321 to i64
  %323 = icmp slt i64 %320, %322
  br i1 %323, label %315, label %324, !prof !121, !llvm.loop !122

324:                                              ; preds = %315, %300
  %325 = phi i32 [ %308, %300 ], [ %321, %315 ]
  %326 = add nsw i32 %325, %292
  br label %327

327:                                              ; preds = %289, %324
  %328 = phi i32 [ %326, %324 ], [ %292, %289 ]
  %329 = add nuw nsw i64 %290, 1
  %330 = load ptr, ptr @prm, align 8, !tbaa !83
  %331 = getelementptr inbounds %struct.parm, ptr %330, i64 0, i32 4
  %332 = load i32, ptr %331, align 8, !tbaa !102
  %333 = sext i32 %332 to i64
  %334 = icmp slt i64 %329, %333
  br i1 %334, label %289, label %335, !prof !108, !llvm.loop !123

335:                                              ; preds = %327
  %336 = trunc i64 %329 to i32
  br label %337

337:                                              ; preds = %335, %279
  %338 = phi i32 [ 0, %279 ], [ %336, %335 ]
  store i32 %338, ptr %6, align 4, !tbaa !74
  %339 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %340 = icmp eq ptr %339, null
  br i1 %340, label %358, label %341, !prof !106

341:                                              ; preds = %337
  %342 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %355, !prof !107

344:                                              ; preds = %341, %344
  %345 = phi i64 [ %349, %344 ], [ 0, %341 ]
  %346 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %347 = getelementptr inbounds ptr, ptr %346, i64 %345
  %348 = load ptr, ptr %347, align 8, !tbaa !83
  tail call void @free_ivector(ptr noundef %348, i32 noundef 0, i32 noundef 1) #25
  %349 = add nuw nsw i64 %345, 1
  %350 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %351 = sext i32 %350 to i64
  %352 = icmp slt i64 %349, %351
  br i1 %352, label %344, label %353, !prof !108, !llvm.loop !124

353:                                              ; preds = %344
  %354 = trunc i64 %349 to i32
  br label %355

355:                                              ; preds = %353, %341
  %356 = phi i32 [ 0, %341 ], [ %354, %353 ]
  store i32 %356, ptr %6, align 4, !tbaa !74
  %357 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  tail call void @free(ptr noundef %357) #25
  br label %358

358:                                              ; preds = %355, %337
  %359 = load ptr, ptr @prm, align 8, !tbaa !83
  %360 = getelementptr inbounds %struct.parm, ptr %359, i64 0, i32 4
  %361 = load i32, ptr %360, align 8, !tbaa !102
  %362 = sext i32 %361 to i64
  %363 = shl nsw i64 %362, 3
  %364 = tail call noalias ptr @malloc(i64 noundef %363) #28
  store ptr %364, ptr @IexclAt, align 8, !tbaa !83
  %365 = icmp eq ptr %364, null
  br i1 %365, label %371, label %366, !prof !110

366:                                              ; preds = %358
  %367 = load ptr, ptr @prm, align 8, !tbaa !83
  %368 = getelementptr inbounds %struct.parm, ptr %367, i64 0, i32 4
  %369 = load i32, ptr %368, align 8, !tbaa !102
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %376, label %426, !prof !107

371:                                              ; preds = %358
  %372 = load ptr, ptr @nabout, align 8, !tbaa !83
  %373 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %372)
  %374 = load ptr, ptr @nabout, align 8, !tbaa !83
  %375 = tail call i32 @fflush(ptr noundef %374)
  tail call void @exit(i32 noundef 1) #24
  unreachable

376:                                              ; preds = %366, %411
  %377 = phi i64 [ %418, %411 ], [ 0, %366 ]
  %378 = phi ptr [ %419, %411 ], [ %367, %366 ]
  %379 = phi i32 [ %417, %411 ], [ 0, %366 ]
  %380 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %381 = getelementptr inbounds ptr, ptr %380, i64 %377
  store ptr null, ptr %381, align 8, !tbaa !83
  %382 = getelementptr inbounds %struct.parm, ptr %378, i64 0, i32 60
  %383 = load ptr, ptr %382, align 8, !tbaa !125
  %384 = getelementptr inbounds i32, ptr %383, i64 %377
  %385 = load i32, ptr %384, align 4, !tbaa !74
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %411, !prof !126

387:                                              ; preds = %376
  %388 = tail call ptr @ivector(i32 noundef 0, i32 noundef %385) #25
  %389 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %390 = getelementptr inbounds ptr, ptr %389, i64 %377
  store ptr %388, ptr %390, align 8, !tbaa !83
  %391 = load ptr, ptr @prm, align 8, !tbaa !83
  %392 = getelementptr inbounds %struct.parm, ptr %391, i64 0, i32 60
  %393 = load ptr, ptr %392, align 8, !tbaa !125
  %394 = getelementptr inbounds i32, ptr %393, i64 %377
  %395 = load i32, ptr %394, align 4, !tbaa !74
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %411, !prof !127

397:                                              ; preds = %387
  %398 = getelementptr inbounds %struct.parm, ptr %391, i64 0, i32 63
  %399 = load ptr, ptr %398, align 8, !tbaa !128
  %400 = sext i32 %379 to i64
  %401 = getelementptr i32, ptr %399, i64 %400
  br label %402

402:                                              ; preds = %397, %402
  %403 = phi i64 [ 0, %397 ], [ %407, %402 ]
  %404 = getelementptr i32, ptr %401, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !74
  %406 = getelementptr inbounds i32, ptr %388, i64 %403
  store i32 %405, ptr %406, align 4, !tbaa !74
  %407 = add nuw nsw i64 %403, 1
  %408 = load i32, ptr %394, align 4, !tbaa !74
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %402, label %411, !prof !129, !llvm.loop !130

411:                                              ; preds = %402, %387, %376
  %412 = load ptr, ptr @prm, align 8, !tbaa !83
  %413 = getelementptr inbounds %struct.parm, ptr %412, i64 0, i32 60
  %414 = load ptr, ptr %413, align 8, !tbaa !125
  %415 = getelementptr inbounds i32, ptr %414, i64 %377
  %416 = load i32, ptr %415, align 4, !tbaa !74
  %417 = add nsw i32 %416, %379
  %418 = add nuw nsw i64 %377, 1
  %419 = load ptr, ptr @prm, align 8, !tbaa !83
  %420 = getelementptr inbounds %struct.parm, ptr %419, i64 0, i32 4
  %421 = load i32, ptr %420, align 8, !tbaa !102
  %422 = sext i32 %421 to i64
  %423 = icmp slt i64 %418, %422
  br i1 %423, label %376, label %424, !prof !108, !llvm.loop !131

424:                                              ; preds = %411
  %425 = trunc i64 %418 to i32
  br label %426

426:                                              ; preds = %424, %366
  %427 = phi i32 [ 0, %366 ], [ %425, %424 ]
  %428 = phi i32 [ %369, %366 ], [ %421, %424 ]
  store i32 %427, ptr %6, align 4, !tbaa !74
  store double 0.000000e+00, ptr @tdiagd, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tdiag, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tlevel, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tnewton, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tcholesky, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tdgeev, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tmmetwo, align 8, !tbaa !86
  store double 0.000000e+00, ptr @tmmeone, align 8, !tbaa !86
  store i32 -3, ptr %6, align 4, !tbaa !74
  %429 = load i32, ptr @mme_init.nold, align 4, !tbaa !74
  %430 = icmp sgt i32 %428, %429
  br i1 %430, label %431, label %433, !prof !106

431:                                              ; preds = %426
  %432 = call fastcc double @mme34(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %6)
  br label %433

433:                                              ; preds = %431, %426
  %434 = load ptr, ptr @prm, align 8, !tbaa !83
  %435 = getelementptr inbounds %struct.parm, ptr %434, i64 0, i32 4
  %436 = load i32, ptr %435, align 8, !tbaa !102
  store i32 %436, ptr @mme_init.nold, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  ret i32 0
}

declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #11

declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #11

declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #16

declare i32 @writebinposhdr(ptr noundef) local_unnamed_addr #11

declare i32 @set_cons_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @set_belly_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc double @mme34(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !prof !132 !PGOFuncName !133 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #25
  %11 = load ptr, ptr @prm, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !102
  %14 = sext i32 %13 to i64
  %15 = load i32, ptr %2, align 4, !tbaa !74
  switch i32 %15, label %39 [
    i32 -3, label %16
    i32 0, label %34
  ], !prof !134

16:                                               ; preds = %3
  %17 = load ptr, ptr @lpairs, align 8, !tbaa !83
  %18 = load ptr, ptr @upairs, align 8, !tbaa !83
  %19 = load ptr, ptr @pairlist, align 8, !tbaa !83
  %20 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 52
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 51
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = call fastcc double @egb(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %0, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1)
  %28 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %440, label %30, !prof !138

30:                                               ; preds = %16
  %31 = load i1, ptr @dim, align 4
  %32 = select i1 %31, i64 4, i64 3, !prof !110
  %33 = mul nsw i64 %32, %14
  tail call void @free_vector(ptr noundef nonnull %28, i64 noundef 0, i64 noundef %33) #25
  store ptr null, ptr @mme34.grad, align 8, !tbaa !83
  br label %440

34:                                               ; preds = %3
  %35 = load ptr, ptr @nabout, align 8, !tbaa !83
  %36 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 20, i64 1, ptr %35)
  %37 = load ptr, ptr @nabout, align 8, !tbaa !83
  %38 = tail call i32 @fflush(ptr noundef %37)
  br label %39

39:                                               ; preds = %3, %34
  %40 = load i32, ptr %2, align 4, !tbaa !74
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43, !prof !139

42:                                               ; preds = %39
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !86
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr @chknm, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46, !prof !140

46:                                               ; preds = %43
  %47 = icmp sgt i32 %40, 0
  %48 = urem i32 %40, 10000
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr @prm, align 8, !tbaa !83
  %53 = getelementptr inbounds %struct.parm, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !102
  tail call void @checkpoint(ptr noundef nonnull %44, i32 noundef %54, ptr noundef %0, i32 noundef %40)
  br label %55

55:                                               ; preds = %51, %46, %43
  %56 = load i32, ptr @nb_pairs, align 4, !tbaa !74
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58, !prof !141

58:                                               ; preds = %55
  %59 = load i32, ptr %2, align 4, !tbaa !74
  %60 = icmp sgt i32 %59, 0
  %61 = urem i32 %59, 10
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %60, %62
  br i1 %63, label %64, label %75, !prof !142

64:                                               ; preds = %58, %55
  %65 = load ptr, ptr @lpairs, align 8, !tbaa !83
  %66 = load ptr, ptr @upairs, align 8, !tbaa !83
  %67 = load ptr, ptr @pairlist, align 8, !tbaa !83
  %68 = load ptr, ptr @prm, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !102
  %71 = load i1, ptr @dim, align 4
  %72 = select i1 %71, i32 4, i32 3, !prof !143
  %73 = load ptr, ptr @frozen, align 8, !tbaa !83
  %74 = tail call i32 @nblist(ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %0, i32 noundef 0, i32 noundef 1, double noundef 2.000000e+01, i32 noundef %70, i32 noundef %72, ptr noundef %73) #25
  store i32 %74, ptr @nb_pairs, align 4, !tbaa !74
  br label %75

75:                                               ; preds = %64, %58
  %76 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83, !prof !141

78:                                               ; preds = %75
  %79 = load i1, ptr @dim, align 4
  %80 = select i1 %79, i64 4, i64 3, !prof !110
  %81 = mul nsw i64 %80, %14
  %82 = tail call ptr @vector(i64 noundef 0, i64 noundef %81) #25
  store ptr %82, ptr @mme34.grad, align 8, !tbaa !83
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i1, ptr @dim, align 4
  %85 = select i1 %84, i32 4, i32 3, !prof !144
  %86 = load ptr, ptr @prm, align 8, !tbaa !83
  %87 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !102
  %89 = mul nsw i32 %88, %85
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95, !prof !145

91:                                               ; preds = %83
  %92 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %93 = zext nneg i32 %89 to i64
  %94 = shl nuw nsw i64 %93, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %92, i8 0, i64 %94, i1 false), !tbaa !86
  br label %95

95:                                               ; preds = %91, %83
  %96 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !146
  %98 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 66
  %99 = load ptr, ptr %98, align 8, !tbaa !147
  %100 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 67
  %101 = load ptr, ptr %100, align 8, !tbaa !148
  %102 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 68
  %103 = load ptr, ptr %102, align 8, !tbaa !149
  %104 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 39
  %105 = load ptr, ptr %104, align 8, !tbaa !150
  %106 = getelementptr inbounds %struct.parm, ptr %86, i64 0, i32 40
  %107 = load ptr, ptr %106, align 8, !tbaa !151
  %108 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %109 = tail call fastcc double @ebond(i32 noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105, ptr noundef %107, ptr noundef %0, ptr noundef %108)
  %110 = load ptr, ptr @prm, align 8, !tbaa !83
  %111 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 7
  %112 = load i32, ptr %111, align 4, !tbaa !152
  %113 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 69
  %114 = load ptr, ptr %113, align 8, !tbaa !153
  %115 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 70
  %116 = load ptr, ptr %115, align 8, !tbaa !154
  %117 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 71
  %118 = load ptr, ptr %117, align 8, !tbaa !155
  %119 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 39
  %120 = load ptr, ptr %119, align 8, !tbaa !150
  %121 = getelementptr inbounds %struct.parm, ptr %110, i64 0, i32 40
  %122 = load ptr, ptr %121, align 8, !tbaa !151
  %123 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %124 = tail call fastcc double @ebond(i32 noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %118, ptr noundef %120, ptr noundef %122, ptr noundef %0, ptr noundef %123)
  %125 = fadd double %109, %124
  %126 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 3
  store double %125, ptr %126, align 8, !tbaa !86
  %127 = load ptr, ptr @prm, align 8, !tbaa !83
  %128 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !156
  %130 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 72
  %131 = load ptr, ptr %130, align 8, !tbaa !157
  %132 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 73
  %133 = load ptr, ptr %132, align 8, !tbaa !158
  %134 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 74
  %135 = load ptr, ptr %134, align 8, !tbaa !159
  %136 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 75
  %137 = load ptr, ptr %136, align 8, !tbaa !160
  %138 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 41
  %139 = load ptr, ptr %138, align 8, !tbaa !161
  %140 = getelementptr inbounds %struct.parm, ptr %127, i64 0, i32 42
  %141 = load ptr, ptr %140, align 8, !tbaa !162
  %142 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %143 = tail call fastcc double @eangl(i32 noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %0, ptr noundef %142)
  %144 = load ptr, ptr @prm, align 8, !tbaa !83
  %145 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 17
  %146 = load i32, ptr %145, align 4, !tbaa !163
  %147 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 76
  %148 = load ptr, ptr %147, align 8, !tbaa !164
  %149 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 77
  %150 = load ptr, ptr %149, align 8, !tbaa !165
  %151 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 78
  %152 = load ptr, ptr %151, align 8, !tbaa !166
  %153 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 79
  %154 = load ptr, ptr %153, align 8, !tbaa !167
  %155 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 41
  %156 = load ptr, ptr %155, align 8, !tbaa !161
  %157 = getelementptr inbounds %struct.parm, ptr %144, i64 0, i32 42
  %158 = load ptr, ptr %157, align 8, !tbaa !162
  %159 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %160 = tail call fastcc double @eangl(i32 noundef %146, ptr noundef %148, ptr noundef %150, ptr noundef %152, ptr noundef %154, ptr noundef %156, ptr noundef %158, ptr noundef %0, ptr noundef %159)
  %161 = fadd double %143, %160
  %162 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 4
  store double %161, ptr %162, align 16, !tbaa !86
  %163 = load ptr, ptr @prm, align 8, !tbaa !83
  %164 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 10
  %165 = load i32, ptr %164, align 8, !tbaa !168
  %166 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 80
  %167 = load ptr, ptr %166, align 8, !tbaa !169
  %168 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 81
  %169 = load ptr, ptr %168, align 8, !tbaa !170
  %170 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 82
  %171 = load ptr, ptr %170, align 8, !tbaa !171
  %172 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 83
  %173 = load ptr, ptr %172, align 8, !tbaa !172
  %174 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 84
  %175 = load ptr, ptr %174, align 8, !tbaa !173
  %176 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 43
  %177 = load ptr, ptr %176, align 8, !tbaa !174
  %178 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 44
  %179 = load ptr, ptr %178, align 8, !tbaa !175
  %180 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 45
  %181 = load ptr, ptr %180, align 8, !tbaa !176
  %182 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %183 = tail call fastcc double @ephi(i32 noundef %165, ptr noundef %167, ptr noundef %169, ptr noundef %171, ptr noundef %173, ptr noundef %175, ptr noundef %177, ptr noundef %179, ptr noundef %181, ptr noundef %0, ptr noundef %182)
  %184 = load ptr, ptr @prm, align 8, !tbaa !83
  %185 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 11
  %186 = load i32, ptr %185, align 4, !tbaa !177
  %187 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 85
  %188 = load ptr, ptr %187, align 8, !tbaa !178
  %189 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 86
  %190 = load ptr, ptr %189, align 8, !tbaa !179
  %191 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 87
  %192 = load ptr, ptr %191, align 8, !tbaa !180
  %193 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 88
  %194 = load ptr, ptr %193, align 8, !tbaa !181
  %195 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 89
  %196 = load ptr, ptr %195, align 8, !tbaa !182
  %197 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 43
  %198 = load ptr, ptr %197, align 8, !tbaa !174
  %199 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 44
  %200 = load ptr, ptr %199, align 8, !tbaa !175
  %201 = getelementptr inbounds %struct.parm, ptr %184, i64 0, i32 45
  %202 = load ptr, ptr %201, align 8, !tbaa !176
  %203 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %204 = tail call fastcc double @ephi(i32 noundef %186, ptr noundef %188, ptr noundef %190, ptr noundef %192, ptr noundef %194, ptr noundef %196, ptr noundef %198, ptr noundef %200, ptr noundef %202, ptr noundef %0, ptr noundef %203)
  %205 = fadd double %183, %204
  %206 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 5
  store double %205, ptr %206, align 8, !tbaa !86
  %207 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 6
  store double 0.000000e+00, ptr %207, align 16, !tbaa !86
  %208 = load ptr, ptr @lpairs, align 8, !tbaa !83
  %209 = load ptr, ptr @prm, align 8, !tbaa !83
  %210 = getelementptr inbounds %struct.parm, ptr %209, i64 0, i32 91
  %211 = load ptr, ptr %210, align 8, !tbaa !117
  %212 = load ptr, ptr @N14pearlist, align 8, !tbaa !83
  %213 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  call fastcc void @nbond(ptr noundef %208, ptr noundef %211, ptr noundef %212, i32 noundef 1, ptr noundef %0, ptr noundef %213, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef 2.000000e+00, double noundef 1.200000e+00)
  %214 = load double, ptr %6, align 8, !tbaa !86
  %215 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 7
  store double %214, ptr %215, align 8, !tbaa !86
  %216 = load double, ptr %7, align 8, !tbaa !86
  %217 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 8
  store double %216, ptr %217, align 16, !tbaa !86
  %218 = load i32, ptr @nconstrained, align 4, !tbaa !74
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %288, label %220, !prof !140

220:                                              ; preds = %95
  %221 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %222 = load ptr, ptr @prm, align 8, !tbaa !83
  %223 = getelementptr inbounds %struct.parm, ptr %222, i64 0, i32 4
  %224 = load i32, ptr %223, align 8, !tbaa !102
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %288

226:                                              ; preds = %220
  %227 = load ptr, ptr @constrained, align 8, !tbaa !83
  %228 = load i1, ptr @dim, align 4
  %229 = load ptr, ptr @x0, align 8
  %230 = select i1 %228, i64 4, i64 3
  %231 = zext nneg i32 %224 to i64
  br label %232

232:                                              ; preds = %226, %284
  %233 = phi i64 [ 0, %226 ], [ %286, %284 ]
  %234 = phi double [ 0.000000e+00, %226 ], [ %285, %284 ]
  %235 = getelementptr inbounds i32, ptr %227, i64 %233
  %236 = load i32, ptr %235, align 4, !tbaa !74
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %284, label %238

238:                                              ; preds = %232
  %239 = mul nuw nsw i64 %230, %233
  %240 = getelementptr inbounds double, ptr %0, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !86
  %242 = getelementptr inbounds double, ptr %229, i64 %239
  %243 = load double, ptr %242, align 8, !tbaa !86
  %244 = fsub double %241, %243
  %245 = add nuw nsw i64 %239, 1
  %246 = getelementptr inbounds double, ptr %0, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !86
  %248 = getelementptr inbounds double, ptr %229, i64 %245
  %249 = load double, ptr %248, align 8, !tbaa !86
  %250 = fsub double %247, %249
  %251 = add nuw nsw i64 %239, 2
  %252 = getelementptr inbounds double, ptr %0, i64 %251
  %253 = load double, ptr %252, align 8, !tbaa !86
  %254 = getelementptr inbounds double, ptr %229, i64 %251
  %255 = load double, ptr %254, align 8, !tbaa !86
  %256 = fsub double %253, %255
  %257 = fmul double %250, %250
  %258 = tail call double @llvm.fmuladd.f64(double %244, double %244, double %257)
  %259 = tail call double @llvm.fmuladd.f64(double %256, double %256, double %258)
  %260 = tail call double @llvm.fmuladd.f64(double %259, double 0.000000e+00, double %234)
  %261 = getelementptr inbounds double, ptr %221, i64 %239
  %262 = load double, ptr %261, align 8, !tbaa !86
  %263 = tail call double @llvm.fmuladd.f64(double %244, double 0.000000e+00, double %262)
  store double %263, ptr %261, align 8, !tbaa !86
  %264 = getelementptr double, ptr %261, i64 1
  %265 = load double, ptr %264, align 8, !tbaa !86
  %266 = tail call double @llvm.fmuladd.f64(double %250, double 0.000000e+00, double %265)
  store double %266, ptr %264, align 8, !tbaa !86
  %267 = getelementptr double, ptr %261, i64 2
  %268 = load double, ptr %267, align 8, !tbaa !86
  %269 = tail call double @llvm.fmuladd.f64(double %256, double 0.000000e+00, double %268)
  store double %269, ptr %267, align 8, !tbaa !86
  br i1 %228, label %270, label %284

270:                                              ; preds = %238
  %271 = shl i64 %233, 2
  %272 = and i64 %271, 4294967292
  %273 = or disjoint i64 %272, 3
  %274 = getelementptr inbounds double, ptr %0, i64 %273
  %275 = load double, ptr %274, align 8, !tbaa !86
  %276 = getelementptr inbounds double, ptr %229, i64 %273
  %277 = load double, ptr %276, align 8, !tbaa !86
  %278 = fsub double %275, %277
  %279 = fmul double %278, 0.000000e+00
  %280 = tail call double @llvm.fmuladd.f64(double %279, double %278, double %260)
  %281 = getelementptr inbounds double, ptr %221, i64 %273
  %282 = load double, ptr %281, align 8, !tbaa !86
  %283 = tail call double @llvm.fmuladd.f64(double %278, double 0.000000e+00, double %282)
  store double %283, ptr %281, align 8, !tbaa !86
  br label %284

284:                                              ; preds = %270, %238, %232
  %285 = phi double [ %280, %270 ], [ %260, %238 ], [ %234, %232 ]
  %286 = add nuw nsw i64 %233, 1
  %287 = icmp eq i64 %286, %231
  br i1 %287, label %288, label %232, !llvm.loop !183

288:                                              ; preds = %284, %220, %95
  %289 = phi double [ 0.000000e+00, %95 ], [ 0.000000e+00, %220 ], [ %285, %284 ]
  %290 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 9
  store double %289, ptr %290, align 8, !tbaa !86
  %291 = load i32, ptr @gb, align 4, !tbaa !74
  %292 = icmp eq i32 %291, 0
  %293 = load ptr, ptr @lpairs, align 8, !tbaa !83
  %294 = load ptr, ptr @upairs, align 8, !tbaa !83
  %295 = load ptr, ptr @pairlist, align 8, !tbaa !83
  %296 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  br i1 %292, label %315, label %297, !prof !184

297:                                              ; preds = %288
  %298 = load ptr, ptr @prm, align 8, !tbaa !83
  %299 = getelementptr inbounds %struct.parm, ptr %298, i64 0, i32 52
  %300 = load ptr, ptr %299, align 8, !tbaa !135
  %301 = getelementptr inbounds %struct.parm, ptr %298, i64 0, i32 51
  %302 = load ptr, ptr %301, align 8, !tbaa !136
  %303 = getelementptr inbounds %struct.parm, ptr %298, i64 0, i32 37
  %304 = load ptr, ptr %303, align 8, !tbaa !137
  %305 = call fastcc double @egb(ptr noundef %293, ptr noundef %294, ptr noundef %295, ptr noundef %0, ptr noundef %296, ptr noundef %300, ptr noundef %302, ptr noundef %304, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0)
  %306 = load double, ptr %4, align 8, !tbaa !86
  %307 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  store double %306, ptr %307, align 8, !tbaa !86
  %308 = load double, ptr %5, align 8, !tbaa !86
  %309 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  store double %308, ptr %309, align 16, !tbaa !86
  %310 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  store double %305, ptr %310, align 16, !tbaa !86
  %311 = load double, ptr %8, align 8, !tbaa !86
  %312 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 11
  store double %311, ptr %312, align 8, !tbaa !86
  %313 = load double, ptr %9, align 8, !tbaa !86
  %314 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 12
  store double %313, ptr %314, align 16, !tbaa !86
  br label %321

315:                                              ; preds = %288
  call fastcc void @nbond(ptr noundef %293, ptr noundef %294, ptr noundef %295, i32 noundef 0, ptr noundef %0, ptr noundef %296, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00)
  %316 = load double, ptr %4, align 8, !tbaa !86
  %317 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  store double %316, ptr %317, align 8, !tbaa !86
  %318 = load double, ptr %5, align 8, !tbaa !86
  %319 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  store double %318, ptr %319, align 16, !tbaa !86
  %320 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %320, i8 0, i64 24, i1 false)
  br label %321

321:                                              ; preds = %315, %297
  %322 = load i1, ptr @dim, align 4
  %323 = select i1 %322, i32 4, i32 3, !prof !144
  %324 = load ptr, ptr @prm, align 8, !tbaa !83
  %325 = getelementptr inbounds %struct.parm, ptr %324, i64 0, i32 4
  %326 = load i32, ptr %325, align 8, !tbaa !102
  %327 = mul nsw i32 %326, %323
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %332, !prof !145

329:                                              ; preds = %321
  %330 = load ptr, ptr @mme34.grad, align 8, !tbaa !83
  %331 = zext nneg i32 %327 to i64
  br label %337

332:                                              ; preds = %337, %321
  %333 = icmp sgt i32 %326, 0
  br i1 %333, label %334, label %344, !prof !145

334:                                              ; preds = %332
  %335 = load ptr, ptr @frozen, align 8, !tbaa !83
  %336 = zext nneg i32 %326 to i64
  br label %348

337:                                              ; preds = %329, %337
  %338 = phi i64 [ 0, %329 ], [ %342, %337 ]
  %339 = getelementptr inbounds double, ptr %330, i64 %338
  %340 = load double, ptr %339, align 8, !tbaa !86
  %341 = getelementptr inbounds double, ptr %1, i64 %338
  store double %340, ptr %341, align 8, !tbaa !86
  %342 = add nuw nsw i64 %338, 1
  %343 = icmp eq i64 %342, %331
  br i1 %343, label %332, label %337, !prof !185, !llvm.loop !186

344:                                              ; preds = %362, %332
  %345 = icmp sgt i32 %327, 0
  br i1 %345, label %346, label %373, !prof !145

346:                                              ; preds = %344
  %347 = zext nneg i32 %327 to i64
  br label %365

348:                                              ; preds = %334, %362
  %349 = phi i64 [ 0, %334 ], [ %363, %362 ]
  %350 = getelementptr inbounds i32, ptr %335, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !74
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %362, label %353, !prof !187

353:                                              ; preds = %348
  %354 = zext nneg i32 %323 to i64
  %355 = mul nuw nsw i64 %349, %354
  %356 = getelementptr double, ptr %1, i64 %355
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %356, i8 0, i64 24, i1 false)
  br i1 %322, label %357, label %362

357:                                              ; preds = %353
  %358 = shl i64 %349, 2
  %359 = and i64 %358, 4294967292
  %360 = or disjoint i64 %359, 3
  %361 = getelementptr inbounds double, ptr %1, i64 %360
  store double 0.000000e+00, ptr %361, align 8, !tbaa !86
  br label %362

362:                                              ; preds = %348, %357, %353
  %363 = add nuw nsw i64 %349, 1
  %364 = icmp eq i64 %363, %336
  br i1 %364, label %344, label %348, !prof !188, !llvm.loop !189

365:                                              ; preds = %346, %365
  %366 = phi i64 [ 0, %346 ], [ %371, %365 ]
  %367 = phi double [ 0.000000e+00, %346 ], [ %370, %365 ]
  %368 = getelementptr inbounds double, ptr %1, i64 %366
  %369 = load double, ptr %368, align 8, !tbaa !86
  %370 = tail call double @llvm.fmuladd.f64(double %369, double %369, double %367)
  %371 = add nuw nsw i64 %366, 1
  %372 = icmp eq i64 %371, %347
  br i1 %372, label %373, label %365, !prof !185, !llvm.loop !190

373:                                              ; preds = %365, %344
  %374 = phi double [ 0.000000e+00, %344 ], [ %370, %365 ]
  %375 = sitofp i32 %327 to double
  %376 = fdiv double %374, %375
  %377 = fcmp olt double %376, 0.000000e+00
  br i1 %377, label %378, label %380, !prof !191

378:                                              ; preds = %373
  %379 = tail call double @sqrt(double noundef %376) #25
  br label %380

380:                                              ; preds = %373, %378
  store double 0.000000e+00, ptr %10, align 16, !tbaa !86
  br label %381

381:                                              ; preds = %380, %381
  %382 = phi i64 [ 1, %380 ], [ %387, %381 ]
  %383 = phi double [ 0.000000e+00, %380 ], [ %386, %381 ]
  %384 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 %382
  %385 = load double, ptr %384, align 8, !tbaa !86
  %386 = fadd double %385, %383
  %387 = add nuw nsw i64 %382, 1
  %388 = icmp eq i64 %387, 13
  br i1 %388, label %389, label %381, !prof !192, !llvm.loop !193

389:                                              ; preds = %381
  store double %386, ptr %10, align 16, !tbaa !86
  %390 = load i32, ptr %2, align 4, !tbaa !74
  %391 = icmp sgt i32 %390, -1
  br i1 %391, label %392, label %403, !prof !140

392:                                              ; preds = %389
  %393 = icmp eq i32 %390, 0
  %394 = load i32, ptr @max_step, align 4
  %395 = icmp eq i32 %390, %394
  %396 = select i1 %393, i1 true, i1 %395, !prof !139
  br i1 %396, label %397, label %403, !prof !194

397:                                              ; preds = %392
  %398 = load ptr, ptr @nabout, align 8, !tbaa !83
  %399 = load double, ptr %10, align 16, !tbaa !86
  %400 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.66, i32 noundef %390, double noundef %399)
  %401 = load ptr, ptr @nabout, align 8, !tbaa !83
  %402 = tail call i32 @fflush(ptr noundef %401)
  br label %403

403:                                              ; preds = %392, %389, %397
  %404 = load i32, ptr %2, align 4, !tbaa !74
  %405 = icmp eq i32 %404, -1
  br i1 %405, label %406, label %438, !prof !195

406:                                              ; preds = %403
  %407 = load ptr, ptr @nabout, align 8, !tbaa !83
  %408 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %407, ptr noundef nonnull @.str.67, double noundef %125)
  %409 = load ptr, ptr @nabout, align 8, !tbaa !83
  %410 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef nonnull @.str.68, double noundef %161)
  %411 = load ptr, ptr @nabout, align 8, !tbaa !83
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef nonnull @.str.69, double noundef %205)
  %413 = load ptr, ptr @nabout, align 8, !tbaa !83
  %414 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef nonnull @.str.70, double noundef %214)
  %415 = load ptr, ptr @nabout, align 8, !tbaa !83
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %415, ptr noundef nonnull @.str.71, double noundef %216)
  %417 = load ptr, ptr @nabout, align 8, !tbaa !83
  %418 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  %419 = load double, ptr %418, align 8, !tbaa !86
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef nonnull @.str.72, double noundef %419)
  %421 = load ptr, ptr @nabout, align 8, !tbaa !83
  %422 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  %423 = load double, ptr %422, align 16, !tbaa !86
  %424 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %421, ptr noundef nonnull @.str.73, double noundef %423)
  %425 = load ptr, ptr @nabout, align 8, !tbaa !83
  %426 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  %427 = load double, ptr %426, align 16, !tbaa !86
  %428 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %425, ptr noundef nonnull @.str.74, double noundef %427)
  %429 = load ptr, ptr @nabout, align 8, !tbaa !83
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %429, ptr noundef nonnull @.str.75, double noundef %289)
  %431 = load ptr, ptr @nabout, align 8, !tbaa !83
  %432 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 11
  %433 = load double, ptr %432, align 8, !tbaa !86
  %434 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %431, ptr noundef nonnull @.str.76, double noundef %433)
  %435 = load ptr, ptr @nabout, align 8, !tbaa !83
  %436 = load double, ptr %10, align 16, !tbaa !86
  %437 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %435, ptr noundef nonnull @.str.77, double noundef %436)
  br label %438

438:                                              ; preds = %403, %406
  %439 = load double, ptr %10, align 16, !tbaa !86
  br label %440

440:                                              ; preds = %30, %16, %438
  %441 = phi double [ %439, %438 ], [ 0.000000e+00, %16 ], [ 0.000000e+00, %30 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret double %441
}

; Function Attrs: cold nounwind uwtable
define dso_local double @mme(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 !prof !196 {
  store i1 false, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret double %4
}

; Function Attrs: cold nounwind uwtable
define dso_local double @mme4(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 !prof !72 {
  store i1 true, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret double %4
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @mm_set_checkpoint(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %4 = add i64 %3, 1
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #25
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %5, %7 ], [ null, %1 ]
  store ptr %10, ptr @chknm, align 8, !tbaa !83
  %11 = load ptr, ptr @nabout, align 8, !tbaa !83
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.60, ptr noundef %2)
  %13 = load ptr, ptr @nabout, align 8, !tbaa !83
  %14 = tail call i32 @fflush(ptr noundef %13)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @md(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #6 !prof !99 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  %10 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr @md.nold, align 4
  %13 = icmp slt i32 %12, %0
  %14 = select i1 %11, i1 true, i1 %13, !prof !106
  br i1 %14, label %15, label %24, !prof !106

15:                                               ; preds = %6
  tail call void @free(ptr noundef %10) #25
  %16 = sext i32 %0 to i64
  %17 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 8) #29
  store ptr %17, ptr @md.minv, align 8, !tbaa !83
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24, !prof !80

19:                                               ; preds = %15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !83
  %21 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 34, i64 1, ptr %20) #27
  %22 = load ptr, ptr @stderr, align 8, !tbaa !83
  %23 = tail call i32 @fflush(ptr noundef %22)
  tail call void @exit(i32 noundef 1) #24
  unreachable

24:                                               ; preds = %6, %15
  %25 = load ptr, ptr @md.xold, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, i1 true, i1 %13, !prof !106
  br i1 %27, label %28, label %37, !prof !106

28:                                               ; preds = %24
  tail call void @free(ptr noundef %25) #25
  %29 = sext i32 %0 to i64
  %30 = tail call noalias ptr @calloc(i64 noundef %29, i64 noundef 8) #29
  store ptr %30, ptr @md.xold, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37, !prof !80

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !83
  %34 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %33) #27
  %35 = load ptr, ptr @stderr, align 8, !tbaa !83
  %36 = tail call i32 @fflush(ptr noundef %35)
  tail call void @exit(i32 noundef 1) #24
  unreachable

37:                                               ; preds = %28, %24
  %38 = load ptr, ptr @md.accel, align 8, !tbaa !83
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i1 true, i1 %13, !prof !106
  br i1 %40, label %41, label %50, !prof !106

41:                                               ; preds = %37
  tail call void @free(ptr noundef %38) #25
  %42 = sext i32 %0 to i64
  %43 = tail call noalias ptr @calloc(i64 noundef %42, i64 noundef 8) #29
  store ptr %43, ptr @md.accel, align 8, !tbaa !83
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50, !prof !80

45:                                               ; preds = %41
  %46 = load ptr, ptr @stderr, align 8, !tbaa !83
  %47 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 35, i64 1, ptr %46) #27
  %48 = load ptr, ptr @stderr, align 8, !tbaa !83
  %49 = tail call i32 @fflush(ptr noundef %48)
  tail call void @exit(i32 noundef 1) #24
  unreachable

50:                                               ; preds = %37, %41
  store i32 %0, ptr @md.nold, align 4, !tbaa !74
  %51 = load i32, ptr @nfrozen, align 4, !tbaa !74
  %52 = mul i32 %51, -3
  %53 = add i32 %52, %0
  %54 = sitofp i32 %53 to double
  %55 = fmul double %54, 0x3F50477081F334C0
  %56 = fmul double %55, 1.000000e+02
  store double 0.000000e+00, ptr %8, align 8, !tbaa !86
  %57 = load ptr, ptr @prm, align 8, !tbaa !83
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64, !prof !110

59:                                               ; preds = %50
  %60 = icmp sgt i32 %0, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %59
  %62 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %63 = zext nneg i32 %0 to i64
  br label %91

64:                                               ; preds = %50
  %65 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %66 = getelementptr inbounds %struct.parm, ptr %57, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !102
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96, !prof !107

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.parm, ptr %57, i64 0, i32 38
  %71 = load ptr, ptr %70, align 8, !tbaa !197
  %72 = load i1, ptr @dim, align 4
  %73 = zext nneg i32 %67 to i64
  br label %74

74:                                               ; preds = %69, %86
  %75 = phi i64 [ 0, %69 ], [ %89, %86 ]
  %76 = phi i32 [ 0, %69 ], [ %88, %86 ]
  %77 = getelementptr inbounds double, ptr %71, i64 %75
  %78 = load double, ptr %77, align 8, !tbaa !86
  %79 = fdiv double 1.000000e+00, %78
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds double, ptr %65, i64 %80
  store double %79, ptr %81, align 8, !tbaa !86
  %82 = getelementptr double, ptr %81, i64 1
  store double %79, ptr %82, align 8, !tbaa !86
  %83 = getelementptr double, ptr %81, i64 2
  store double %79, ptr %83, align 8, !tbaa !86
  br i1 %72, label %84, label %86, !prof !198

84:                                               ; preds = %74
  %85 = getelementptr double, ptr %81, i64 3
  store double %79, ptr %85, align 8, !tbaa !86
  br label %86

86:                                               ; preds = %84, %74
  %87 = phi i32 [ 4, %84 ], [ 3, %74 ]
  %88 = add nuw nsw i32 %87, %76
  %89 = add nuw nsw i64 %75, 1
  %90 = icmp eq i64 %89, %73
  br i1 %90, label %96, label %74, !prof !199, !llvm.loop !200

91:                                               ; preds = %61, %91
  %92 = phi i64 [ 0, %61 ], [ %94, %91 ]
  %93 = getelementptr inbounds double, ptr %62, i64 %92
  store double 1.000000e-01, ptr %93, align 8, !tbaa !86
  %94 = add nuw nsw i64 %92, 1
  %95 = icmp eq i64 %94, %63
  br i1 %95, label %96, label %91, !llvm.loop !201

96:                                               ; preds = %86, %91, %64, %59
  %97 = icmp sgt i32 %0, 0
  br i1 %97, label %98, label %132, !prof !107

98:                                               ; preds = %96
  %99 = zext nneg i32 %0 to i64
  br label %100

100:                                              ; preds = %98, %128
  %101 = phi i64 [ 0, %98 ], [ %130, %128 ]
  %102 = phi double [ 0.000000e+00, %98 ], [ %129, %128 ]
  %103 = load ptr, ptr @frozen, align 8, !tbaa !83
  %104 = load i1, ptr @dim, align 4
  %105 = select i1 %104, i32 4, i32 3, !prof !202
  %106 = trunc i64 %101 to i32
  %107 = udiv i32 %106, %105
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %103, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !74
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112, !prof !203

112:                                              ; preds = %100
  %113 = getelementptr inbounds double, ptr %4, i64 %101
  store double 0.000000e+00, ptr %113, align 8, !tbaa !86
  br label %128

114:                                              ; preds = %100
  %115 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %116 = getelementptr inbounds double, ptr %115, i64 %101
  %117 = load double, ptr %116, align 8, !tbaa !86
  %118 = fmul double %117, 0x3FB96F9FCB0C026C
  %119 = call double @sqrt(double noundef %118) #25
  store double %119, ptr %7, align 8, !tbaa !86
  %120 = call double @gauss(ptr noundef nonnull %8, ptr noundef nonnull %7) #25
  %121 = getelementptr inbounds double, ptr %4, i64 %101
  store double %120, ptr %121, align 8, !tbaa !86
  %122 = fmul double %120, %120
  %123 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %124 = getelementptr inbounds double, ptr %123, i64 %101
  %125 = load double, ptr %124, align 8, !tbaa !86
  %126 = fdiv double %122, %125
  %127 = fadd double %102, %126
  br label %128

128:                                              ; preds = %112, %114
  %129 = phi double [ %102, %112 ], [ %127, %114 ]
  %130 = add nuw nsw i64 %101, 1
  %131 = icmp eq i64 %130, %99
  br i1 %131, label %132, label %100, !prof !204, !llvm.loop !205

132:                                              ; preds = %128, %96
  %133 = phi double [ 0.000000e+00, %96 ], [ %129, %128 ]
  store i32 0, ptr %9, align 4, !tbaa !74
  %134 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #25, !prof !206
  %135 = icmp sgt i32 %0, 0
  br i1 %135, label %136, label %152, !prof !107

136:                                              ; preds = %132
  %137 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %138 = load ptr, ptr @md.accel, align 8, !tbaa !83
  %139 = zext nneg i32 %0 to i64
  br label %140

140:                                              ; preds = %136, %140
  %141 = phi i64 [ 0, %136 ], [ %150, %140 ]
  %142 = getelementptr inbounds double, ptr %3, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !86
  %144 = fneg double %143
  %145 = getelementptr inbounds double, ptr %137, i64 %141
  %146 = load double, ptr %145, align 8, !tbaa !86
  %147 = fmul double %146, %144
  %148 = fmul double %147, 0x3F84F227D028A1DF
  %149 = getelementptr inbounds double, ptr %138, i64 %141
  store double %148, ptr %149, align 8, !tbaa !86
  %150 = add nuw nsw i64 %141, 1
  %151 = icmp eq i64 %150, %139
  br i1 %151, label %152, label %140, !prof !204, !llvm.loop !207

152:                                              ; preds = %140, %132
  store i32 %1, ptr @max_step, align 4, !tbaa !74
  store i32 1, ptr %9, align 4, !tbaa !74
  %153 = icmp slt i32 %1, 1
  br i1 %153, label %246, label %154, !prof !208

154:                                              ; preds = %152
  %155 = icmp sgt i32 %0, 0
  %156 = icmp sgt i32 %0, 0
  %157 = icmp sgt i32 %0, 0
  %158 = icmp sgt i32 %0, 0
  %159 = zext nneg i32 %0 to i64
  %160 = zext nneg i32 %0 to i64
  %161 = zext nneg i32 %0 to i64
  %162 = zext nneg i32 %0 to i64
  br label %163

163:                                              ; preds = %154, %239
  %164 = phi double [ %133, %154 ], [ %240, %239 ]
  %165 = fmul double %164, 5.000000e-01
  %166 = fcmp ogt double %165, 1.000000e-02
  br i1 %166, label %167, label %172, !prof !209

167:                                              ; preds = %163
  %168 = fdiv double %56, %165
  %169 = fadd double %168, -1.000000e+00
  %170 = call double @llvm.fmuladd.f64(double %169, double 2.500000e-03, double 1.000000e+00)
  %171 = call double @sqrt(double noundef %170) #25
  br label %172

172:                                              ; preds = %163, %167
  %173 = phi double [ %171, %167 ], [ 1.000000e+00, %163 ]
  br i1 %155, label %174, label %176, !prof !210

174:                                              ; preds = %172
  %175 = load ptr, ptr @md.xold, align 8, !tbaa !83
  br label %179

176:                                              ; preds = %179, %172
  br i1 %156, label %177, label %203, !prof !210

177:                                              ; preds = %176
  %178 = load ptr, ptr @md.accel, align 8, !tbaa !83
  br label %186

179:                                              ; preds = %174, %179
  %180 = phi i64 [ 0, %174 ], [ %184, %179 ]
  %181 = getelementptr inbounds double, ptr %2, i64 %180
  %182 = load double, ptr %181, align 8, !tbaa !86
  %183 = getelementptr inbounds double, ptr %175, i64 %180
  store double %182, ptr %183, align 8, !tbaa !86
  %184 = add nuw nsw i64 %180, 1
  %185 = icmp eq i64 %184, %159
  br i1 %185, label %176, label %179, !prof !211, !llvm.loop !212

186:                                              ; preds = %177, %186
  %187 = phi i64 [ 0, %177 ], [ %201, %186 ]
  %188 = getelementptr inbounds double, ptr %4, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !86
  %190 = getelementptr inbounds double, ptr %178, i64 %187
  %191 = load double, ptr %190, align 8, !tbaa !86
  %192 = fadd double %189, %191
  %193 = fmul double %173, %192
  %194 = fcmp ogt double %193, 1.000000e+01
  %195 = select i1 %194, double 1.000000e+01, double %193, !prof !213
  %196 = fcmp olt double %195, -1.000000e+01
  %197 = select i1 %196, double -1.000000e+01, double %195, !prof !214
  store double %197, ptr %188, align 8, !tbaa !86
  %198 = getelementptr inbounds double, ptr %2, i64 %187
  %199 = load double, ptr %198, align 8, !tbaa !86
  %200 = call double @llvm.fmuladd.f64(double %197, double 0x3F94F227D028A1DF, double %199)
  store double %200, ptr %198, align 8, !tbaa !86
  %201 = add nuw nsw i64 %187, 1
  %202 = icmp eq i64 %201, %160
  br i1 %202, label %203, label %186, !prof !211, !llvm.loop !215

203:                                              ; preds = %186, %176
  %204 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #25, !prof !216
  br i1 %157, label %205, label %208, !prof !210

205:                                              ; preds = %203
  %206 = load ptr, ptr @md.minv, align 8, !tbaa !83
  %207 = load ptr, ptr @md.accel, align 8, !tbaa !83
  br label %211

208:                                              ; preds = %211, %203
  br i1 %158, label %209, label %239, !prof !210

209:                                              ; preds = %208
  %210 = load ptr, ptr @md.minv, align 8, !tbaa !83
  br label %227

211:                                              ; preds = %205, %211
  %212 = phi i64 [ 0, %205 ], [ %225, %211 ]
  %213 = getelementptr inbounds double, ptr %3, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !86
  %215 = fneg double %214
  %216 = getelementptr inbounds double, ptr %206, i64 %212
  %217 = load double, ptr %216, align 8, !tbaa !86
  %218 = fmul double %217, %215
  %219 = fmul double %218, 0x3F84F227D028A1DF
  %220 = getelementptr inbounds double, ptr %207, i64 %212
  store double %219, ptr %220, align 8, !tbaa !86
  %221 = getelementptr inbounds double, ptr %4, i64 %212
  %222 = load double, ptr %221, align 8, !tbaa !86
  %223 = fadd double %219, %222
  %224 = fmul double %173, %223
  store double %224, ptr %221, align 8, !tbaa !86
  %225 = add nuw nsw i64 %212, 1
  %226 = icmp eq i64 %225, %161
  br i1 %226, label %208, label %211, !prof !211, !llvm.loop !217

227:                                              ; preds = %209, %227
  %228 = phi i64 [ 0, %209 ], [ %237, %227 ]
  %229 = phi double [ 0.000000e+00, %209 ], [ %236, %227 ]
  %230 = getelementptr inbounds double, ptr %4, i64 %228
  %231 = load double, ptr %230, align 8, !tbaa !86
  %232 = fmul double %231, %231
  %233 = getelementptr inbounds double, ptr %210, i64 %228
  %234 = load double, ptr %233, align 8, !tbaa !86
  %235 = fdiv double %232, %234
  %236 = fadd double %229, %235
  %237 = add nuw nsw i64 %228, 1
  %238 = icmp eq i64 %237, %162
  br i1 %238, label %239, label %227, !prof !211, !llvm.loop !218

239:                                              ; preds = %227, %208
  %240 = phi double [ 0.000000e+00, %208 ], [ %236, %227 ]
  %241 = load double, ptr @t, align 8, !tbaa !86
  %242 = fadd double %241, 1.000000e-03
  store double %242, ptr @t, align 8, !tbaa !86
  %243 = load i32, ptr %9, align 4, !tbaa !74
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %9, align 4, !tbaa !74
  %245 = icmp slt i32 %243, %1
  br i1 %245, label %163, label %246, !prof !219, !llvm.loop !220

246:                                              ; preds = %239, %152
  store i32 -3, ptr %9, align 4, !tbaa !74
  %247 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #25, !prof !206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

declare double @gauss(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc double @egb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, i32 noundef %12) unnamed_addr #6 !prof !221 !PGOFuncName !222 {
  %14 = load ptr, ptr @prm, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %40, label %19, !prof !223

19:                                               ; preds = %13
  %20 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !224

22:                                               ; preds = %19
  tail call void @free_vector(ptr noundef nonnull %20, i64 noundef 0, i64 noundef %17) #25
  store ptr null, ptr @egb.reff, align 8, !tbaa !83
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @egb.iexw, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !224

26:                                               ; preds = %23
  %27 = add i32 %16, 1
  tail call void @free_ivector(ptr noundef nonnull %24, i32 noundef -1, i32 noundef %27) #25
  store ptr null, ptr @egb.iexw, align 8, !tbaa !83
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !224

31:                                               ; preds = %28
  tail call void @free_vector(ptr noundef nonnull %29, i64 noundef 0, i64 noundef %17) #25
  store ptr null, ptr @egb.sumdeijda, align 8, !tbaa !83
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr @egb.psi, align 8, !tbaa !83
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !225

35:                                               ; preds = %32
  tail call void @free_vector(ptr noundef nonnull %33, i64 noundef 0, i64 noundef %17) #25
  store ptr null, ptr @egb.psi, align 8, !tbaa !83
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @egb.reqack, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %907, label %39, !prof !224

39:                                               ; preds = %36
  tail call void @free_ivector(ptr noundef nonnull %37, i32 noundef 0, i32 noundef 1) #25
  store ptr null, ptr @egb.reqack, align 8, !tbaa !83
  br label %907

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 58
  %42 = load double, ptr %41, align 8, !tbaa !226
  %43 = fadd double %42, 2.000000e+01
  %44 = fmul double %43, %43
  %45 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49, !prof !227

47:                                               ; preds = %40
  %48 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #25
  store ptr %48, ptr @egb.reff, align 8, !tbaa !83
  br label %49

49:                                               ; preds = %47, %40
  %50 = load ptr, ptr @egb.iexw, align 8, !tbaa !83
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55, !prof !227

52:                                               ; preds = %49
  %53 = add i32 %16, 1
  %54 = tail call ptr @ivector(i32 noundef -1, i32 noundef %53) #25
  store ptr %54, ptr @egb.iexw, align 8, !tbaa !83
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60, !prof !227

58:                                               ; preds = %55
  %59 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #25
  store ptr %59, ptr @egb.sumdeijda, align 8, !tbaa !83
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr @egb.psi, align 8, !tbaa !83
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67, !prof !228

63:                                               ; preds = %60
  %64 = load i32, ptr @gb, align 4
  switch i32 %64, label %67 [
    i32 5, label %65
    i32 2, label %65
  ], !prof !229

65:                                               ; preds = %63, %63
  %66 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #25
  store ptr %66, ptr @egb.psi, align 8, !tbaa !83
  br label %67

67:                                               ; preds = %63, %65, %60
  %68 = load ptr, ptr @egb.reqack, align 8, !tbaa !83
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !227

70:                                               ; preds = %67
  %71 = tail call ptr @ivector(i32 noundef 0, i32 noundef 1) #25
  store ptr %71, ptr @egb.reqack, align 8, !tbaa !83
  br label %72

72:                                               ; preds = %67, %70
  %73 = load ptr, ptr @prm, align 8, !tbaa !83
  %74 = getelementptr inbounds %struct.parm, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !102
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %283, !prof !145

77:                                               ; preds = %72, %276
  %78 = phi i64 [ %277, %276 ], [ 0, %72 ]
  %79 = phi double [ %94, %276 ], [ 0.000000e+00, %72 ]
  %80 = phi double [ %246, %276 ], [ undef, %72 ]
  %81 = load i1, ptr @dim, align 4
  %82 = select i1 %81, i64 4, i64 3, !prof !230
  %83 = mul nuw nsw i64 %82, %78
  %84 = getelementptr inbounds double, ptr %3, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !86
  %86 = getelementptr double, ptr %84, i64 1
  %87 = load double, ptr %86, align 8, !tbaa !86
  %88 = getelementptr double, ptr %84, i64 2
  %89 = load double, ptr %88, align 8, !tbaa !86
  br i1 %81, label %90, label %93, !prof !230

90:                                               ; preds = %77
  %91 = getelementptr double, ptr %84, i64 3
  %92 = load double, ptr %91, align 8, !tbaa !86
  br label %93

93:                                               ; preds = %90, %77
  %94 = phi double [ %92, %90 ], [ %79, %77 ]
  %95 = getelementptr inbounds double, ptr %6, i64 %78
  %96 = load double, ptr %95, align 8, !tbaa !86
  %97 = fadd double %96, 0xBFB70A3D70A3D70A
  %98 = fdiv double 1.000000e+00, %97
  %99 = getelementptr inbounds i32, ptr %0, i64 %78
  %100 = getelementptr inbounds i32, ptr %1, i64 %78
  %101 = load i32, ptr %99, align 4, !tbaa !74
  %102 = load i32, ptr %100, align 4, !tbaa !74
  %103 = add nsw i32 %102, %101
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %244, !prof !231

105:                                              ; preds = %93
  %106 = getelementptr inbounds ptr, ptr %2, i64 %78
  %107 = fmul double %98, 5.000000e-01
  br label %108

108:                                              ; preds = %105, %236
  %109 = phi i64 [ 0, %105 ], [ %238, %236 ]
  %110 = phi double [ %80, %105 ], [ %146, %236 ]
  %111 = phi double [ 0.000000e+00, %105 ], [ %237, %236 ]
  %112 = load ptr, ptr %106, align 8, !tbaa !83
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %119, !prof !232

114:                                              ; preds = %108
  %115 = load ptr, ptr @nabout, align 8, !tbaa !83
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.80, i32 noundef 0)
  %117 = load ptr, ptr @nabout, align 8, !tbaa !83
  %118 = tail call i32 @fflush(ptr noundef %117)
  br label %119

119:                                              ; preds = %114, %108
  %120 = load ptr, ptr %106, align 8, !tbaa !83
  %121 = getelementptr inbounds i32, ptr %120, i64 %109
  %122 = load i32, ptr %121, align 4, !tbaa !74
  %123 = load i1, ptr @dim, align 4
  %124 = select i1 %123, i32 4, i32 3, !prof !232
  %125 = mul nsw i32 %124, %122
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, ptr %3, i64 %126
  %128 = load double, ptr %127, align 8, !tbaa !86
  %129 = fsub double %85, %128
  %130 = getelementptr double, ptr %127, i64 1
  %131 = load double, ptr %130, align 8, !tbaa !86
  %132 = fsub double %87, %131
  %133 = getelementptr double, ptr %127, i64 2
  %134 = load double, ptr %133, align 8, !tbaa !86
  %135 = fsub double %89, %134
  %136 = fmul double %132, %132
  %137 = tail call double @llvm.fmuladd.f64(double %129, double %129, double %136)
  %138 = tail call double @llvm.fmuladd.f64(double %135, double %135, double %137)
  br i1 %123, label %139, label %144, !prof !232

139:                                              ; preds = %119
  %140 = getelementptr double, ptr %127, i64 3
  %141 = load double, ptr %140, align 8, !tbaa !86
  %142 = fsub double %94, %141
  %143 = tail call double @llvm.fmuladd.f64(double %142, double %142, double %138)
  br label %144

144:                                              ; preds = %139, %119
  %145 = phi double [ %143, %139 ], [ %138, %119 ]
  %146 = phi double [ %142, %139 ], [ %110, %119 ]
  %147 = fcmp ogt double %145, %44
  br i1 %147, label %236, label %148, !prof !233

148:                                              ; preds = %144
  %149 = tail call double @sqrt(double noundef %145) #25
  %150 = fdiv double 1.000000e+00, %149
  %151 = fmul double %145, %150
  %152 = sext i32 %122 to i64
  %153 = getelementptr inbounds double, ptr %5, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !86
  %155 = getelementptr inbounds double, ptr %6, i64 %152
  %156 = load double, ptr %155, align 8, !tbaa !86
  %157 = fadd double %156, 0xBFB70A3D70A3D70A
  %158 = fmul double %154, %157
  %159 = fmul double %158, %158
  %160 = fadd double %158, 2.000000e+01
  %161 = fcmp ogt double %151, %160
  br i1 %161, label %236, label %162, !prof !234

162:                                              ; preds = %148
  %163 = fsub double 2.000000e+01, %158
  %164 = fcmp ogt double %151, %163
  br i1 %164, label %165, label %178, !prof !235

165:                                              ; preds = %162
  %166 = fsub double %151, %158
  %167 = fdiv double 1.000000e+00, %166
  %168 = fmul double %151, 2.000000e+00
  %169 = tail call double @llvm.fmuladd.f64(double %168, double %167, double 1.000000e+00)
  %170 = tail call double @llvm.fmuladd.f64(double %151, double -8.000000e+01, double %145)
  %171 = fsub double %170, %159
  %172 = tail call double @llvm.fmuladd.f64(double %171, double 0x3F647AE147AE147C, double %169)
  %173 = fmul double %166, 5.000000e-02
  %174 = tail call double @log(double noundef %173) #25
  %175 = tail call double @llvm.fmuladd.f64(double %174, double 2.000000e+00, double %172)
  %176 = fmul double %150, -1.250000e-01
  %177 = tail call double @llvm.fmuladd.f64(double %176, double %175, double %111)
  br label %236

178:                                              ; preds = %162
  %179 = fmul double %158, 4.000000e+00
  %180 = fcmp ogt double %151, %179
  br i1 %180, label %181, label %192, !prof !236

181:                                              ; preds = %178
  %182 = fmul double %150, %150
  %183 = fmul double %182, %159
  %184 = tail call double @llvm.fmuladd.f64(double %183, double 0x3FDD1745D1745D17, double 0x3FDC71C71C71C71C)
  %185 = tail call double @llvm.fmuladd.f64(double %183, double %184, double 0x3FDB6DB6DB6DB6DB)
  %186 = tail call double @llvm.fmuladd.f64(double %183, double %185, double 4.000000e-01)
  %187 = tail call double @llvm.fmuladd.f64(double %183, double %186, double 0x3FD5555555555555)
  %188 = fneg double %158
  %189 = fmul double %183, %188
  %190 = fmul double %182, %189
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %187, double %111)
  br label %236

192:                                              ; preds = %178
  %193 = fadd double %97, %158
  %194 = fcmp ogt double %151, %193
  br i1 %194, label %195, label %205, !prof !237

195:                                              ; preds = %192
  %196 = fsub double %145, %159
  %197 = fdiv double %158, %196
  %198 = fmul double %150, 5.000000e-01
  %199 = fsub double %151, %158
  %200 = fadd double %151, %158
  %201 = fdiv double %199, %200
  %202 = tail call double @log(double noundef %201) #25
  %203 = tail call double @llvm.fmuladd.f64(double %198, double %202, double %197)
  %204 = tail call double @llvm.fmuladd.f64(double %203, double -5.000000e-01, double %111)
  br label %236

205:                                              ; preds = %192
  %206 = fsub double %97, %158
  %207 = tail call double @llvm.fabs.f64(double %206)
  %208 = fcmp ogt double %151, %207
  br i1 %208, label %209, label %223, !prof !238

209:                                              ; preds = %205
  %210 = fmul double %107, %150
  %211 = tail call double @llvm.fmuladd.f64(double %97, double %97, double %145)
  %212 = fsub double %211, %159
  %213 = fmul double %210, %212
  %214 = fadd double %151, %158
  %215 = fdiv double 1.000000e+00, %214
  %216 = fsub double 2.000000e+00, %213
  %217 = fneg double %215
  %218 = tail call double @llvm.fmuladd.f64(double %98, double %216, double %217)
  %219 = fmul double %97, %215
  %220 = tail call double @log(double noundef %219) #25
  %221 = tail call double @llvm.fmuladd.f64(double %150, double %220, double %218)
  %222 = tail call double @llvm.fmuladd.f64(double %221, double -2.500000e-01, double %111)
  br label %236

223:                                              ; preds = %205
  %224 = fcmp olt double %97, %158
  br i1 %224, label %225, label %236, !prof !239

225:                                              ; preds = %223
  %226 = fsub double %145, %159
  %227 = fdiv double %158, %226
  %228 = tail call double @llvm.fmuladd.f64(double %98, double 2.000000e+00, double %227)
  %229 = fmul double %150, 5.000000e-01
  %230 = fsub double %158, %151
  %231 = fadd double %151, %158
  %232 = fdiv double %230, %231
  %233 = tail call double @log(double noundef %232) #25
  %234 = tail call double @llvm.fmuladd.f64(double %229, double %233, double %228)
  %235 = tail call double @llvm.fmuladd.f64(double %234, double -5.000000e-01, double %111)
  br label %236

236:                                              ; preds = %165, %195, %223, %225, %209, %181, %148, %144
  %237 = phi double [ %111, %144 ], [ %111, %148 ], [ %177, %165 ], [ %191, %181 ], [ %204, %195 ], [ %222, %209 ], [ %235, %225 ], [ %111, %223 ]
  %238 = add nuw nsw i64 %109, 1
  %239 = load i32, ptr %99, align 4, !tbaa !74
  %240 = load i32, ptr %100, align 4, !tbaa !74
  %241 = add nsw i32 %240, %239
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %238, %242
  br i1 %243, label %108, label %244, !prof !240, !llvm.loop !241

244:                                              ; preds = %236, %93
  %245 = phi double [ 0.000000e+00, %93 ], [ %237, %236 ]
  %246 = phi double [ %80, %93 ], [ %146, %236 ]
  %247 = load i32, ptr @gb, align 4, !tbaa !74
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %256, !prof !242

249:                                              ; preds = %244
  %250 = fadd double %98, %245
  %251 = fdiv double 1.000000e+00, %250
  %252 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %253 = getelementptr inbounds double, ptr %252, i64 %78
  store double %251, ptr %253, align 8, !tbaa !86
  %254 = fcmp olt double %251, 0.000000e+00
  br i1 %254, label %255, label %276, !prof !230

255:                                              ; preds = %249
  store double 3.000000e+01, ptr %253, align 8, !tbaa !86
  br label %276

256:                                              ; preds = %244
  %257 = fneg double %97
  %258 = fmul double %245, %257
  %259 = load ptr, ptr @egb.psi, align 8, !tbaa !83
  %260 = getelementptr inbounds double, ptr %259, i64 %78
  store double %258, ptr %260, align 8, !tbaa !86
  %261 = load double, ptr @gbalpha, align 8, !tbaa !86
  %262 = load double, ptr @gbbeta, align 8, !tbaa !86
  %263 = fneg double %262
  %264 = tail call double @llvm.fmuladd.f64(double %263, double %258, double %261)
  %265 = load double, ptr @gbgamma, align 8, !tbaa !86
  %266 = fmul double %258, %265
  %267 = tail call double @llvm.fmuladd.f64(double %266, double %258, double %264)
  %268 = fmul double %258, %267
  %269 = tail call double @tanh(double noundef %268) #25
  %270 = load double, ptr %95, align 8, !tbaa !86
  %271 = fdiv double %269, %270
  %272 = fsub double %98, %271
  %273 = fdiv double 1.000000e+00, %272
  %274 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %275 = getelementptr inbounds double, ptr %274, i64 %78
  store double %273, ptr %275, align 8, !tbaa !86
  br label %276

276:                                              ; preds = %256, %255, %249
  %277 = add nuw nsw i64 %78, 1
  %278 = load ptr, ptr @prm, align 8, !tbaa !83
  %279 = getelementptr inbounds %struct.parm, ptr %278, i64 0, i32 4
  %280 = load i32, ptr %279, align 8, !tbaa !102
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %277, %281
  br i1 %282, label %77, label %283, !prof !243, !llvm.loop !244

283:                                              ; preds = %276, %72
  %284 = phi ptr [ %73, %72 ], [ %278, %276 ]
  %285 = phi double [ undef, %72 ], [ %246, %276 ]
  %286 = phi double [ 0.000000e+00, %72 ], [ %94, %276 ]
  %287 = phi i32 [ %75, %72 ], [ %280, %276 ]
  %288 = getelementptr inbounds %struct.parm, ptr %284, i64 0, i32 4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !86
  %289 = icmp sgt i32 %287, 0
  br i1 %289, label %290, label %294, !prof !145

290:                                              ; preds = %283
  %291 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %292 = zext nneg i32 %287 to i64
  %293 = shl nuw nsw i64 %292, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %291, i8 0, i64 %293, i1 false), !tbaa !86
  br label %294

294:                                              ; preds = %290, %283
  %295 = load i32, ptr %288, align 8, !tbaa !102
  %296 = icmp sgt i32 %295, -1
  br i1 %296, label %297, label %299, !prof !145

297:                                              ; preds = %294
  %298 = load ptr, ptr @egb.iexw, align 8, !tbaa !83
  br label %304

299:                                              ; preds = %304, %294
  %300 = load ptr, ptr @prm, align 8, !tbaa !83
  %301 = getelementptr inbounds %struct.parm, ptr %300, i64 0, i32 4
  %302 = load i32, ptr %301, align 8, !tbaa !102
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %321, label %311, !prof !145

304:                                              ; preds = %297, %304
  %305 = phi i64 [ -1, %297 ], [ %307, %304 ]
  %306 = getelementptr inbounds i32, ptr %298, i64 %305
  store i32 -1, ptr %306, align 4, !tbaa !74
  %307 = add nsw i64 %305, 1
  %308 = load i32, ptr %288, align 8, !tbaa !102
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %307, %309
  br i1 %310, label %304, label %299, !prof !245, !llvm.loop !246

311:                                              ; preds = %605, %299
  %312 = phi double [ %285, %299 ], [ %607, %605 ]
  %313 = phi double [ %286, %299 ], [ %608, %605 ]
  %314 = phi double [ 0.000000e+00, %299 ], [ %609, %605 ]
  %315 = phi double [ 0.000000e+00, %299 ], [ %610, %605 ]
  %316 = phi double [ 0.000000e+00, %299 ], [ %611, %605 ]
  %317 = load ptr, ptr @prm, align 8, !tbaa !83
  %318 = getelementptr inbounds %struct.parm, ptr %317, i64 0, i32 4
  %319 = load i32, ptr %318, align 8, !tbaa !102
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %618, label %906, !prof !145

321:                                              ; preds = %299, %605
  %322 = phi i64 [ %612, %605 ], [ 0, %299 ]
  %323 = phi double [ %611, %605 ], [ 0.000000e+00, %299 ]
  %324 = phi double [ %610, %605 ], [ 0.000000e+00, %299 ]
  %325 = phi double [ %609, %605 ], [ 0.000000e+00, %299 ]
  %326 = phi double [ %608, %605 ], [ %286, %299 ]
  %327 = phi double [ %607, %605 ], [ %285, %299 ]
  %328 = phi double [ %606, %605 ], [ undef, %299 ]
  %329 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %330 = getelementptr inbounds double, ptr %329, i64 %322
  %331 = load double, ptr %330, align 8, !tbaa !86
  %332 = getelementptr inbounds double, ptr %7, i64 %322
  %333 = load double, ptr %332, align 8, !tbaa !86
  %334 = load ptr, ptr @frozen, align 8, !tbaa !83
  %335 = getelementptr inbounds i32, ptr %334, i64 %322
  %336 = load i32, ptr %335, align 4, !tbaa !74
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %356, !prof !242

338:                                              ; preds = %321
  %339 = fmul double %331, -0.000000e+00
  %340 = tail call double @exp(double noundef %339) #25
  %341 = fdiv double %340, 7.850000e+01
  %342 = fsub double 1.000000e+00, %341
  %343 = fmul double %333, 5.000000e-01
  %344 = fmul double %333, %343
  %345 = fmul double %344, %342
  %346 = fdiv double %345, %331
  %347 = fsub double %323, %346
  %348 = fmul double %344, -0.000000e+00
  %349 = fmul double %341, %348
  %350 = tail call double @llvm.fmuladd.f64(double %349, double %331, double %345)
  %351 = fadd double %350, 0.000000e+00
  %352 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %353 = getelementptr inbounds double, ptr %352, i64 %322
  %354 = load double, ptr %353, align 8, !tbaa !86
  %355 = fadd double %354, %351
  store double %355, ptr %353, align 8, !tbaa !86
  br label %356

356:                                              ; preds = %338, %321
  %357 = phi double [ %323, %321 ], [ %347, %338 ]
  %358 = getelementptr inbounds i32, ptr %1, i64 %322
  %359 = load i32, ptr %358, align 4, !tbaa !74
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %605, label %361, !prof !247

361:                                              ; preds = %356
  %362 = load i1, ptr @dim, align 4
  %363 = select i1 %362, i32 4, i32 3, !prof !248
  %364 = trunc i64 %322 to i32
  %365 = mul nuw nsw i32 %363, %364
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds double, ptr %3, i64 %366
  %368 = load double, ptr %367, align 8, !tbaa !86
  %369 = add nuw nsw i32 %365, 1
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds double, ptr %3, i64 %370
  %372 = load double, ptr %371, align 8, !tbaa !86
  %373 = add nuw nsw i32 %365, 2
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds double, ptr %3, i64 %374
  %376 = load double, ptr %375, align 8, !tbaa !86
  br i1 %362, label %377, label %380, !prof !248

377:                                              ; preds = %361
  %378 = getelementptr double, ptr %367, i64 3
  %379 = load double, ptr %378, align 8, !tbaa !86
  br label %380

380:                                              ; preds = %377, %361
  %381 = phi double [ %379, %377 ], [ %326, %361 ]
  %382 = load ptr, ptr @prm, align 8, !tbaa !83
  %383 = getelementptr inbounds %struct.parm, ptr %382, i64 0, i32 5
  %384 = load i32, ptr %383, align 4, !tbaa !249
  %385 = getelementptr inbounds %struct.parm, ptr %382, i64 0, i32 59
  %386 = load ptr, ptr %385, align 8, !tbaa !250
  %387 = getelementptr inbounds i32, ptr %386, i64 %322
  %388 = load i32, ptr %387, align 4, !tbaa !74
  %389 = add nsw i32 %388, -1
  %390 = mul nsw i32 %389, %384
  %391 = getelementptr inbounds %struct.parm, ptr %382, i64 0, i32 60
  %392 = load ptr, ptr %391, align 8, !tbaa !125
  %393 = getelementptr inbounds i32, ptr %392, i64 %322
  %394 = load i32, ptr %393, align 4, !tbaa !74
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %413, !prof !251

396:                                              ; preds = %380
  %397 = load ptr, ptr @egb.iexw, align 8, !tbaa !83
  %398 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %399 = getelementptr inbounds ptr, ptr %398, i64 %322
  %400 = load ptr, ptr %399, align 8, !tbaa !83
  %401 = getelementptr i32, ptr %397, i64 -1
  %402 = trunc i64 %322 to i32
  br label %403

403:                                              ; preds = %396, %403
  %404 = phi i64 [ 0, %396 ], [ %409, %403 ]
  %405 = getelementptr inbounds i32, ptr %400, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !74
  %407 = sext i32 %406 to i64
  %408 = getelementptr i32, ptr %401, i64 %407
  store i32 %402, ptr %408, align 4, !tbaa !74
  %409 = add nuw nsw i64 %404, 1
  %410 = load i32, ptr %393, align 4, !tbaa !74
  %411 = sext i32 %410 to i64
  %412 = icmp slt i64 %409, %411
  br i1 %412, label %403, label %413, !prof !252, !llvm.loop !253

413:                                              ; preds = %403, %380
  %414 = getelementptr inbounds i32, ptr %0, i64 %322
  %415 = load i32, ptr %414, align 4, !tbaa !74
  %416 = getelementptr inbounds ptr, ptr %2, i64 %322
  %417 = sext i32 %415 to i64
  br label %418

418:                                              ; preds = %413, %584
  %419 = phi i64 [ %417, %413 ], [ %585, %584 ]
  %420 = phi double [ %357, %413 ], [ %489, %584 ]
  %421 = phi double [ %324, %413 ], [ %559, %584 ]
  %422 = phi double [ %325, %413 ], [ %558, %584 ]
  %423 = phi double [ 0.000000e+00, %413 ], [ %563, %584 ]
  %424 = phi double [ 0.000000e+00, %413 ], [ %564, %584 ]
  %425 = phi double [ 0.000000e+00, %413 ], [ %565, %584 ]
  %426 = phi double [ 0.000000e+00, %413 ], [ %570, %584 ]
  %427 = phi double [ %327, %413 ], [ %467, %584 ]
  %428 = phi double [ %328, %413 ], [ %568, %584 ]
  %429 = load ptr, ptr %416, align 8, !tbaa !83
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %436, !prof !254

431:                                              ; preds = %418
  %432 = load ptr, ptr @nabout, align 8, !tbaa !83
  %433 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.82, i32 noundef 0)
  %434 = load ptr, ptr @nabout, align 8, !tbaa !83
  %435 = tail call i32 @fflush(ptr noundef %434)
  br label %436

436:                                              ; preds = %431, %418
  %437 = load ptr, ptr %416, align 8, !tbaa !83
  %438 = getelementptr inbounds i32, ptr %437, i64 %419
  %439 = load i32, ptr %438, align 4, !tbaa !74
  %440 = load i1, ptr @dim, align 4
  %441 = select i1 %440, i32 4, i32 3, !prof !254
  %442 = mul nsw i32 %441, %439
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds double, ptr %3, i64 %443
  %445 = load double, ptr %444, align 8, !tbaa !86
  %446 = fsub double %368, %445
  %447 = add nsw i32 %442, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double, ptr %3, i64 %448
  %450 = load double, ptr %449, align 8, !tbaa !86
  %451 = fsub double %372, %450
  %452 = add nsw i32 %442, 2
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double, ptr %3, i64 %453
  %455 = load double, ptr %454, align 8, !tbaa !86
  %456 = fsub double %376, %455
  %457 = fmul double %451, %451
  %458 = tail call double @llvm.fmuladd.f64(double %446, double %446, double %457)
  %459 = tail call double @llvm.fmuladd.f64(double %456, double %456, double %458)
  br i1 %440, label %460, label %465, !prof !254

460:                                              ; preds = %436
  %461 = getelementptr double, ptr %444, i64 3
  %462 = load double, ptr %461, align 8, !tbaa !86
  %463 = fsub double %381, %462
  %464 = tail call double @llvm.fmuladd.f64(double %463, double %463, double %459)
  br label %465

465:                                              ; preds = %460, %436
  %466 = phi double [ %464, %460 ], [ %459, %436 ]
  %467 = phi double [ %463, %460 ], [ %427, %436 ]
  %468 = sext i32 %439 to i64
  %469 = getelementptr inbounds double, ptr %7, i64 %468
  %470 = load double, ptr %469, align 8, !tbaa !86
  %471 = fmul double %333, %470
  %472 = load ptr, ptr @egb.reff, align 8, !tbaa !83
  %473 = getelementptr inbounds double, ptr %472, i64 %468
  %474 = load double, ptr %473, align 8, !tbaa !86
  %475 = fmul double %331, %474
  %476 = fneg double %466
  %477 = fmul double %475, 4.000000e+00
  %478 = fdiv double %476, %477
  %479 = tail call double @exp(double noundef %478) #25
  %480 = tail call double @llvm.fmuladd.f64(double %475, double %479, double %466)
  %481 = tail call double @sqrt(double noundef %480) #25
  %482 = fdiv double 1.000000e+00, %481
  %483 = fdiv double -0.000000e+00, %482
  %484 = tail call double @exp(double noundef %483) #25
  %485 = fdiv double %484, 7.850000e+01
  %486 = fsub double 1.000000e+00, %485
  %487 = fneg double %471
  %488 = fmul double %486, %487
  %489 = tail call double @llvm.fmuladd.f64(double %488, double %482, double %420)
  %490 = fmul double %482, %482
  %491 = fmul double %482, %490
  %492 = fmul double %471, %491
  %493 = tail call double @llvm.fmuladd.f64(double %483, double %485, double %486)
  %494 = fmul double %492, %493
  %495 = tail call double @llvm.fmuladd.f64(double %479, double -2.500000e-01, double 1.000000e+00)
  %496 = fmul double %495, %494
  %497 = fmul double %479, 5.000000e-01
  %498 = fmul double %497, %494
  %499 = tail call double @llvm.fmuladd.f64(double %466, double 2.500000e-01, double %475)
  %500 = fmul double %499, %498
  %501 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %502 = getelementptr inbounds double, ptr %501, i64 %322
  %503 = load double, ptr %502, align 8, !tbaa !86
  %504 = tail call double @llvm.fmuladd.f64(double %331, double %500, double %503)
  store double %504, ptr %502, align 8, !tbaa !86
  %505 = getelementptr inbounds double, ptr %501, i64 %468
  %506 = load double, ptr %505, align 8, !tbaa !86
  %507 = tail call double @llvm.fmuladd.f64(double %474, double %500, double %506)
  store double %507, ptr %505, align 8, !tbaa !86
  %508 = load ptr, ptr @egb.iexw, align 8, !tbaa !83
  %509 = getelementptr inbounds i32, ptr %508, i64 %468
  %510 = load i32, ptr %509, align 4, !tbaa !74
  %511 = zext i32 %510 to i64
  %512 = icmp eq i64 %322, %511
  br i1 %512, label %556, label %513, !prof !255

513:                                              ; preds = %465
  %514 = tail call double @sqrt(double noundef %466) #25
  %515 = fdiv double 1.000000e+00, %514
  %516 = fmul double %515, %515
  %517 = fmul double %471, %515
  %518 = fadd double %421, %517
  %519 = fneg double %517
  %520 = tail call double @llvm.fmuladd.f64(double %519, double %516, double %496)
  %521 = load ptr, ptr @prm, align 8, !tbaa !83
  %522 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 61
  %523 = load ptr, ptr %522, align 8, !tbaa !256
  %524 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 59
  %525 = load ptr, ptr %524, align 8, !tbaa !250
  %526 = getelementptr inbounds i32, ptr %525, i64 %468
  %527 = load i32, ptr %526, align 4, !tbaa !74
  %528 = add nsw i32 %527, %390
  %529 = sext i32 %528 to i64
  %530 = getelementptr i32, ptr %523, i64 %529
  %531 = getelementptr i32, ptr %530, i64 -1
  %532 = load i32, ptr %531, align 4, !tbaa !74
  %533 = icmp sgt i32 %532, 0
  br i1 %533, label %534, label %556, !prof !257

534:                                              ; preds = %513
  %535 = add nsw i32 %532, -1
  %536 = fmul double %516, %516
  %537 = fmul double %516, %536
  %538 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 48
  %539 = load ptr, ptr %538, align 8, !tbaa !258
  %540 = zext nneg i32 %535 to i64
  %541 = getelementptr inbounds double, ptr %539, i64 %540
  %542 = load double, ptr %541, align 8, !tbaa !86
  %543 = fmul double %537, %542
  %544 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 47
  %545 = load ptr, ptr %544, align 8, !tbaa !259
  %546 = getelementptr inbounds double, ptr %545, i64 %540
  %547 = load double, ptr %546, align 8, !tbaa !86
  %548 = fmul double %537, %547
  %549 = fmul double %537, %548
  %550 = fsub double %549, %543
  %551 = fadd double %422, %550
  %552 = fmul double %543, -6.000000e+00
  %553 = tail call double @llvm.fmuladd.f64(double %549, double 1.200000e+01, double %552)
  %554 = fneg double %553
  %555 = tail call double @llvm.fmuladd.f64(double %554, double %516, double %520)
  br label %556

556:                                              ; preds = %513, %534, %465
  %557 = phi double [ %555, %534 ], [ %520, %513 ], [ %496, %465 ]
  %558 = phi double [ %551, %534 ], [ %422, %513 ], [ %422, %465 ]
  %559 = phi double [ %518, %534 ], [ %518, %513 ], [ %421, %465 ]
  %560 = fmul double %446, %557
  %561 = fmul double %451, %557
  %562 = fmul double %456, %557
  %563 = fadd double %423, %560
  %564 = fadd double %424, %561
  %565 = fadd double %425, %562
  %566 = load i1, ptr @dim, align 4
  %567 = fmul double %467, %557
  %568 = select i1 %566, double %567, double %428, !prof !254
  %569 = select i1 %566, double %567, double -0.000000e+00, !prof !254
  %570 = fadd double %426, %569
  %571 = getelementptr inbounds double, ptr %4, i64 %443
  %572 = load double, ptr %571, align 8, !tbaa !86
  %573 = fsub double %572, %560
  store double %573, ptr %571, align 8, !tbaa !86
  %574 = getelementptr inbounds double, ptr %4, i64 %448
  %575 = load double, ptr %574, align 8, !tbaa !86
  %576 = fsub double %575, %561
  store double %576, ptr %574, align 8, !tbaa !86
  %577 = getelementptr inbounds double, ptr %4, i64 %453
  %578 = load double, ptr %577, align 8, !tbaa !86
  %579 = fsub double %578, %562
  store double %579, ptr %577, align 8, !tbaa !86
  br i1 %566, label %580, label %584, !prof !254

580:                                              ; preds = %556
  %581 = getelementptr double, ptr %571, i64 3
  %582 = load double, ptr %581, align 8, !tbaa !86
  %583 = fsub double %582, %568
  store double %583, ptr %581, align 8, !tbaa !86
  br label %584

584:                                              ; preds = %556, %580
  %585 = add nsw i64 %419, 1
  %586 = load i32, ptr %414, align 4, !tbaa !74
  %587 = add nsw i32 %586, %359
  %588 = sext i32 %587 to i64
  %589 = icmp slt i64 %585, %588
  br i1 %589, label %418, label %590, !prof !260, !llvm.loop !261

590:                                              ; preds = %584
  %591 = getelementptr inbounds double, ptr %4, i64 %366
  %592 = load double, ptr %591, align 8, !tbaa !86
  %593 = fadd double %563, %592
  store double %593, ptr %591, align 8, !tbaa !86
  %594 = getelementptr inbounds double, ptr %4, i64 %370
  %595 = load double, ptr %594, align 8, !tbaa !86
  %596 = fadd double %564, %595
  store double %596, ptr %594, align 8, !tbaa !86
  %597 = getelementptr inbounds double, ptr %4, i64 %374
  %598 = load double, ptr %597, align 8, !tbaa !86
  %599 = fadd double %565, %598
  store double %599, ptr %597, align 8, !tbaa !86
  %600 = load i1, ptr @dim, align 4
  br i1 %600, label %601, label %605, !prof !248

601:                                              ; preds = %590
  %602 = getelementptr double, ptr %591, i64 3
  %603 = load double, ptr %602, align 8, !tbaa !86
  %604 = fadd double %570, %603
  store double %604, ptr %602, align 8, !tbaa !86
  br label %605

605:                                              ; preds = %590, %601, %356
  %606 = phi double [ %328, %356 ], [ %568, %601 ], [ %568, %590 ]
  %607 = phi double [ %327, %356 ], [ %467, %601 ], [ %467, %590 ]
  %608 = phi double [ %326, %356 ], [ %381, %601 ], [ %381, %590 ]
  %609 = phi double [ %325, %356 ], [ %558, %601 ], [ %558, %590 ]
  %610 = phi double [ %324, %356 ], [ %559, %601 ], [ %559, %590 ]
  %611 = phi double [ %357, %356 ], [ %489, %601 ], [ %489, %590 ]
  %612 = add nuw nsw i64 %322, 1
  %613 = load ptr, ptr @prm, align 8, !tbaa !83
  %614 = getelementptr inbounds %struct.parm, ptr %613, i64 0, i32 4
  %615 = load i32, ptr %614, align 8, !tbaa !102
  %616 = sext i32 %615 to i64
  %617 = icmp slt i64 %612, %616
  br i1 %617, label %321, label %311, !prof !243, !llvm.loop !262

618:                                              ; preds = %311, %897
  %619 = phi i64 [ %900, %897 ], [ 0, %311 ]
  %620 = phi double [ %899, %897 ], [ %313, %311 ]
  %621 = phi double [ %898, %897 ], [ %312, %311 ]
  %622 = getelementptr inbounds i32, ptr %0, i64 %619
  %623 = load i32, ptr %622, align 4, !tbaa !74
  %624 = getelementptr inbounds i32, ptr %1, i64 %619
  %625 = load i32, ptr %624, align 4, !tbaa !74
  %626 = add i32 %625, %623
  %627 = load ptr, ptr @frozen, align 8, !tbaa !83
  %628 = getelementptr inbounds i32, ptr %627, i64 %619
  %629 = load i32, ptr %628, align 4, !tbaa !74
  %630 = icmp ne i32 %629, 0
  %631 = icmp slt i32 %626, 1
  %632 = select i1 %630, i1 true, i1 %631, !prof !230
  br i1 %632, label %897, label %633, !prof !230

633:                                              ; preds = %618
  %634 = load i1, ptr @dim, align 4
  %635 = select i1 %634, i32 4, i32 3, !prof !230
  %636 = trunc i64 %619 to i32
  %637 = mul nuw nsw i32 %635, %636
  %638 = zext nneg i32 %637 to i64
  %639 = getelementptr inbounds double, ptr %3, i64 %638
  %640 = load double, ptr %639, align 8, !tbaa !86
  %641 = add nuw nsw i32 %637, 1
  %642 = zext nneg i32 %641 to i64
  %643 = getelementptr inbounds double, ptr %3, i64 %642
  %644 = load double, ptr %643, align 8, !tbaa !86
  %645 = add nuw nsw i32 %637, 2
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds double, ptr %3, i64 %646
  %648 = load double, ptr %647, align 8, !tbaa !86
  br i1 %634, label %649, label %652, !prof !230

649:                                              ; preds = %633
  %650 = getelementptr double, ptr %639, i64 3
  %651 = load double, ptr %650, align 8, !tbaa !86
  br label %652

652:                                              ; preds = %649, %633
  %653 = phi double [ %651, %649 ], [ %620, %633 ]
  %654 = getelementptr inbounds double, ptr %6, i64 %619
  %655 = load double, ptr %654, align 8, !tbaa !86
  %656 = fadd double %655, 0xBFB70A3D70A3D70A
  %657 = fdiv double 1.000000e+00, %656
  %658 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !83
  %659 = getelementptr inbounds double, ptr %658, i64 %619
  %660 = load double, ptr %659, align 8, !tbaa !86
  %661 = load i32, ptr @gb, align 4, !tbaa !74
  %662 = icmp sgt i32 %661, 1
  br i1 %662, label %663, label %694, !prof !230

663:                                              ; preds = %652
  %664 = load double, ptr @gbalpha, align 8, !tbaa !86
  %665 = load double, ptr @gbbeta, align 8, !tbaa !86
  %666 = load ptr, ptr @egb.psi, align 8, !tbaa !83
  %667 = getelementptr inbounds double, ptr %666, i64 %619
  %668 = load double, ptr %667, align 8, !tbaa !86
  %669 = fneg double %665
  %670 = tail call double @llvm.fmuladd.f64(double %669, double %668, double %664)
  %671 = load double, ptr @gbgamma, align 8, !tbaa !86
  %672 = fmul double %668, %671
  %673 = tail call double @llvm.fmuladd.f64(double %672, double %668, double %670)
  %674 = fmul double %668, %673
  %675 = tail call double @tanh(double noundef %674) #25
  %676 = load double, ptr @gbalpha, align 8, !tbaa !86
  %677 = load double, ptr @gbbeta, align 8, !tbaa !86
  %678 = load ptr, ptr @egb.psi, align 8, !tbaa !83
  %679 = getelementptr inbounds double, ptr %678, i64 %619
  %680 = load double, ptr %679, align 8, !tbaa !86
  %681 = fmul double %677, -2.000000e+00
  %682 = tail call double @llvm.fmuladd.f64(double %681, double %680, double %676)
  %683 = load double, ptr @gbgamma, align 8, !tbaa !86
  %684 = fmul double %683, 3.000000e+00
  %685 = fmul double %680, %684
  %686 = tail call double @llvm.fmuladd.f64(double %685, double %680, double %682)
  %687 = fneg double %675
  %688 = tail call double @llvm.fmuladd.f64(double %687, double %675, double 1.000000e+00)
  %689 = fmul double %688, %686
  %690 = fmul double %656, %689
  %691 = load double, ptr %654, align 8, !tbaa !86
  %692 = fdiv double %690, %691
  %693 = fmul double %660, %692
  br label %694

694:                                              ; preds = %663, %652
  %695 = phi double [ %693, %663 ], [ %660, %652 ]
  %696 = icmp sgt i32 %626, 0
  br i1 %696, label %697, label %876, !prof !231

697:                                              ; preds = %694
  %698 = getelementptr inbounds ptr, ptr %2, i64 %619
  %699 = fneg double %656
  %700 = zext nneg i32 %626 to i64
  br label %701

701:                                              ; preds = %697, %869
  %702 = phi i64 [ 0, %697 ], [ %874, %869 ]
  %703 = phi double [ 0.000000e+00, %697 ], [ %873, %869 ]
  %704 = phi double [ 0.000000e+00, %697 ], [ %872, %869 ]
  %705 = phi double [ 0.000000e+00, %697 ], [ %871, %869 ]
  %706 = phi double [ 0.000000e+00, %697 ], [ %870, %869 ]
  %707 = phi double [ %621, %697 ], [ %746, %869 ]
  %708 = load ptr, ptr %698, align 8, !tbaa !83
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %715, !prof !232

710:                                              ; preds = %701
  %711 = load ptr, ptr @nabout, align 8, !tbaa !83
  %712 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %711, ptr noundef nonnull @.str.83, i32 noundef 0)
  %713 = load ptr, ptr @nabout, align 8, !tbaa !83
  %714 = tail call i32 @fflush(ptr noundef %713)
  br label %715

715:                                              ; preds = %710, %701
  %716 = load ptr, ptr %698, align 8, !tbaa !83
  %717 = getelementptr inbounds i32, ptr %716, i64 %702
  %718 = load i32, ptr %717, align 4, !tbaa !74
  %719 = load i1, ptr @dim, align 4
  %720 = select i1 %719, i32 4, i32 3, !prof !232
  %721 = mul nsw i32 %720, %718
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds double, ptr %3, i64 %722
  %724 = load double, ptr %723, align 8, !tbaa !86
  %725 = fsub double %640, %724
  %726 = add nsw i32 %721, 1
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds double, ptr %3, i64 %727
  %729 = load double, ptr %728, align 8, !tbaa !86
  %730 = fsub double %644, %729
  %731 = add nsw i32 %721, 2
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds double, ptr %3, i64 %732
  %734 = load double, ptr %733, align 8, !tbaa !86
  %735 = fsub double %648, %734
  %736 = fmul double %730, %730
  %737 = tail call double @llvm.fmuladd.f64(double %725, double %725, double %736)
  %738 = tail call double @llvm.fmuladd.f64(double %735, double %735, double %737)
  br i1 %719, label %739, label %744, !prof !232

739:                                              ; preds = %715
  %740 = getelementptr double, ptr %723, i64 3
  %741 = load double, ptr %740, align 8, !tbaa !86
  %742 = fsub double %653, %741
  %743 = tail call double @llvm.fmuladd.f64(double %742, double %742, double %738)
  br label %744

744:                                              ; preds = %739, %715
  %745 = phi double [ %743, %739 ], [ %738, %715 ]
  %746 = phi double [ %742, %739 ], [ %707, %715 ]
  %747 = fcmp ogt double %745, %44
  br i1 %747, label %869, label %748, !prof !233

748:                                              ; preds = %744
  %749 = tail call double @sqrt(double noundef %745) #25
  %750 = fdiv double 1.000000e+00, %749
  %751 = fmul double %750, %750
  %752 = fmul double %745, %750
  %753 = sext i32 %718 to i64
  %754 = getelementptr inbounds double, ptr %5, i64 %753
  %755 = load double, ptr %754, align 8, !tbaa !86
  %756 = getelementptr inbounds double, ptr %6, i64 %753
  %757 = load double, ptr %756, align 8, !tbaa !86
  %758 = fadd double %757, 0xBFB70A3D70A3D70A
  %759 = fmul double %755, %758
  %760 = fmul double %759, %759
  %761 = fadd double %759, 2.000000e+01
  %762 = fcmp ogt double %752, %761
  br i1 %762, label %869, label %763, !prof !234

763:                                              ; preds = %748
  %764 = fsub double 2.000000e+01, %759
  %765 = fcmp ogt double %752, %764
  br i1 %765, label %766, label %778, !prof !235

766:                                              ; preds = %763
  %767 = fsub double %752, %759
  %768 = fdiv double 1.000000e+00, %767
  %769 = fmul double %750, %751
  %770 = fmul double %769, 1.250000e-01
  %771 = fadd double %745, %760
  %772 = tail call double @llvm.fmuladd.f64(double %768, double %768, double 0xBF647AE147AE147C)
  %773 = fmul double %768, 2.000000e+01
  %774 = tail call double @log(double noundef %773) #25
  %775 = fmul double %774, -2.000000e+00
  %776 = tail call double @llvm.fmuladd.f64(double %771, double %772, double %775)
  %777 = fmul double %770, %776
  br label %847

778:                                              ; preds = %763
  %779 = fmul double %759, 4.000000e+00
  %780 = fcmp ogt double %752, %779
  br i1 %780, label %781, label %791, !prof !236

781:                                              ; preds = %778
  %782 = fmul double %751, %760
  %783 = tail call double @llvm.fmuladd.f64(double %782, double 0x4015D1745D1745D1, double 0x4011C71C71C71C72)
  %784 = tail call double @llvm.fmuladd.f64(double %782, double %783, double 0x400B6DB6DB6DB6DB)
  %785 = tail call double @llvm.fmuladd.f64(double %782, double %784, double 2.400000e+00)
  %786 = tail call double @llvm.fmuladd.f64(double %782, double %785, double 0x3FF5555555555555)
  %787 = fmul double %759, %782
  %788 = fmul double %751, %787
  %789 = fmul double %751, %788
  %790 = fmul double %789, %786
  br label %847

791:                                              ; preds = %778
  %792 = fadd double %656, %759
  %793 = fcmp ogt double %752, %792
  br i1 %793, label %794, label %807, !prof !237

794:                                              ; preds = %791
  %795 = fsub double %745, %760
  %796 = fdiv double 1.000000e+00, %795
  %797 = fmul double %759, %796
  %798 = tail call double @llvm.fmuladd.f64(double %751, double -5.000000e-01, double %796)
  %799 = fmul double %750, 2.500000e-01
  %800 = fmul double %799, %751
  %801 = fsub double %752, %759
  %802 = fadd double %752, %759
  %803 = fdiv double %801, %802
  %804 = tail call double @log(double noundef %803) #25
  %805 = fmul double %800, %804
  %806 = tail call double @llvm.fmuladd.f64(double %797, double %798, double %805)
  br label %847

807:                                              ; preds = %791
  %808 = fsub double %656, %759
  %809 = tail call double @llvm.fabs.f64(double %808)
  %810 = fcmp ogt double %752, %809
  br i1 %810, label %811, label %829, !prof !238

811:                                              ; preds = %807
  %812 = fadd double %752, %759
  %813 = fdiv double 1.000000e+00, %812
  %814 = fmul double %750, %751
  %815 = tail call double @llvm.fmuladd.f64(double %699, double %656, double %745)
  %816 = fadd double %815, %760
  %817 = fmul double %816, -5.000000e-01
  %818 = fmul double %814, %817
  %819 = fmul double %657, %818
  %820 = fmul double %750, %813
  %821 = fsub double %813, %750
  %822 = fmul double %820, %821
  %823 = tail call double @llvm.fmuladd.f64(double %819, double %657, double %822)
  %824 = fmul double %656, %813
  %825 = tail call double @log(double noundef %824) #25
  %826 = fneg double %814
  %827 = tail call double @llvm.fmuladd.f64(double %826, double %825, double %823)
  %828 = fmul double %827, -2.500000e-01
  br label %847

829:                                              ; preds = %807
  %830 = fcmp olt double %656, %759
  br i1 %830, label %831, label %847, !prof !239

831:                                              ; preds = %829
  %832 = fsub double %745, %760
  %833 = fdiv double 1.000000e+00, %832
  %834 = fmul double %751, %759
  %835 = fmul double %759, -2.000000e+00
  %836 = fmul double %835, %833
  %837 = fmul double %833, %836
  %838 = tail call double @llvm.fmuladd.f64(double %834, double %833, double %837)
  %839 = fsub double %759, %752
  %840 = fadd double %752, %759
  %841 = fdiv double %839, %840
  %842 = tail call double @log(double noundef %841) #25
  %843 = fmul double %751, -5.000000e-01
  %844 = fmul double %750, %843
  %845 = tail call double @llvm.fmuladd.f64(double %844, double %842, double %838)
  %846 = fmul double %845, -5.000000e-01
  br label %847

847:                                              ; preds = %829, %781, %811, %831, %794, %766
  %848 = phi double [ %777, %766 ], [ %790, %781 ], [ %806, %794 ], [ %828, %811 ], [ %846, %831 ], [ 0.000000e+00, %829 ]
  %849 = tail call double @llvm.fmuladd.f64(double %725, double %848, double %703)
  %850 = tail call double @llvm.fmuladd.f64(double %730, double %848, double %704)
  %851 = tail call double @llvm.fmuladd.f64(double %735, double %848, double %705)
  %852 = load i1, ptr @dim, align 4
  %853 = tail call double @llvm.fmuladd.f64(double %746, double %848, double %706)
  %854 = select i1 %852, double %853, double %706, !prof !263
  %855 = fmul double %695, %848
  %856 = getelementptr inbounds double, ptr %4, i64 %722
  %857 = load double, ptr %856, align 8, !tbaa !86
  %858 = tail call double @llvm.fmuladd.f64(double %725, double %855, double %857)
  store double %858, ptr %856, align 8, !tbaa !86
  %859 = getelementptr inbounds double, ptr %4, i64 %727
  %860 = load double, ptr %859, align 8, !tbaa !86
  %861 = tail call double @llvm.fmuladd.f64(double %730, double %855, double %860)
  store double %861, ptr %859, align 8, !tbaa !86
  %862 = getelementptr inbounds double, ptr %4, i64 %732
  %863 = load double, ptr %862, align 8, !tbaa !86
  %864 = tail call double @llvm.fmuladd.f64(double %735, double %855, double %863)
  store double %864, ptr %862, align 8, !tbaa !86
  br i1 %852, label %865, label %869, !prof !263

865:                                              ; preds = %847
  %866 = getelementptr double, ptr %856, i64 3
  %867 = load double, ptr %866, align 8, !tbaa !86
  %868 = tail call double @llvm.fmuladd.f64(double %746, double %855, double %867)
  store double %868, ptr %866, align 8, !tbaa !86
  br label %869

869:                                              ; preds = %847, %865, %748, %744
  %870 = phi double [ %706, %744 ], [ %706, %748 ], [ %854, %865 ], [ %854, %847 ]
  %871 = phi double [ %705, %744 ], [ %705, %748 ], [ %851, %865 ], [ %851, %847 ]
  %872 = phi double [ %704, %744 ], [ %704, %748 ], [ %850, %865 ], [ %850, %847 ]
  %873 = phi double [ %703, %744 ], [ %703, %748 ], [ %849, %865 ], [ %849, %847 ]
  %874 = add nuw nsw i64 %702, 1
  %875 = icmp eq i64 %874, %700
  br i1 %875, label %876, label %701, !prof !264, !llvm.loop !265

876:                                              ; preds = %869, %694
  %877 = phi double [ %621, %694 ], [ %746, %869 ]
  %878 = phi double [ 0.000000e+00, %694 ], [ %870, %869 ]
  %879 = phi double [ 0.000000e+00, %694 ], [ %871, %869 ]
  %880 = phi double [ 0.000000e+00, %694 ], [ %872, %869 ]
  %881 = phi double [ 0.000000e+00, %694 ], [ %873, %869 ]
  %882 = getelementptr inbounds double, ptr %4, i64 %638
  %883 = load double, ptr %882, align 8, !tbaa !86
  %884 = fneg double %695
  %885 = tail call double @llvm.fmuladd.f64(double %884, double %881, double %883)
  store double %885, ptr %882, align 8, !tbaa !86
  %886 = getelementptr inbounds double, ptr %4, i64 %642
  %887 = load double, ptr %886, align 8, !tbaa !86
  %888 = tail call double @llvm.fmuladd.f64(double %884, double %880, double %887)
  store double %888, ptr %886, align 8, !tbaa !86
  %889 = getelementptr inbounds double, ptr %4, i64 %646
  %890 = load double, ptr %889, align 8, !tbaa !86
  %891 = tail call double @llvm.fmuladd.f64(double %884, double %879, double %890)
  store double %891, ptr %889, align 8, !tbaa !86
  %892 = load i1, ptr @dim, align 4
  br i1 %892, label %893, label %897, !prof !230

893:                                              ; preds = %876
  %894 = getelementptr double, ptr %882, i64 3
  %895 = load double, ptr %894, align 8, !tbaa !86
  %896 = tail call double @llvm.fmuladd.f64(double %884, double %878, double %895)
  store double %896, ptr %894, align 8, !tbaa !86
  br label %897

897:                                              ; preds = %876, %893, %618
  %898 = phi double [ %621, %618 ], [ %877, %893 ], [ %877, %876 ]
  %899 = phi double [ %620, %618 ], [ %653, %893 ], [ %653, %876 ]
  %900 = add nuw nsw i64 %619, 1
  %901 = load ptr, ptr @prm, align 8, !tbaa !83
  %902 = getelementptr inbounds %struct.parm, ptr %901, i64 0, i32 4
  %903 = load i32, ptr %902, align 8, !tbaa !102
  %904 = sext i32 %903 to i64
  %905 = icmp slt i64 %900, %904
  br i1 %905, label %618, label %906, !prof !243, !llvm.loop !266

906:                                              ; preds = %897, %311
  store double %315, ptr %9, align 8, !tbaa !86
  store double %314, ptr %8, align 8, !tbaa !86
  store double 0.000000e+00, ptr %11, align 8, !tbaa !86
  br label %907

907:                                              ; preds = %36, %39, %906
  %908 = phi double [ %316, %906 ], [ 0.000000e+00, %39 ], [ 0.000000e+00, %36 ]
  ret double %908
}

declare i32 @nblist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @ebond(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #20 !prof !267 !PGOFuncName !268 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %112, !prof !269

10:                                               ; preds = %8
  %11 = zext nneg i32 %0 to i64
  br label %12

12:                                               ; preds = %10, %109
  %13 = phi i64 [ 0, %10 ], [ %110, %109 ]
  %14 = phi double [ 0.000000e+00, %10 ], [ %77, %109 ]
  %15 = phi double [ undef, %10 ], [ %66, %109 ]
  %16 = load i1, ptr @dim, align 4
  %17 = select i1 %16, i32 4, i32 3, !prof !270
  %18 = getelementptr inbounds i32, ptr %1, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = mul nsw i32 %17, %19
  %21 = sdiv i32 %20, 3
  %22 = getelementptr inbounds i32, ptr %2, i64 %13
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = mul nsw i32 %23, %17
  %25 = sdiv i32 %24, 3
  %26 = getelementptr inbounds i32, ptr %3, i64 %13
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = add nsw i32 %27, -1
  %29 = sext i32 %21 to i64
  %30 = getelementptr inbounds double, ptr %6, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !86
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds double, ptr %6, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !86
  %35 = fsub double %31, %34
  %36 = add nsw i32 %21, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %6, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !86
  %40 = add nsw i32 %25, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %6, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !86
  %44 = fsub double %39, %43
  %45 = add nsw i32 %21, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %6, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !86
  %49 = add nsw i32 %25, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %6, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !86
  %53 = fsub double %48, %52
  %54 = fmul double %44, %44
  %55 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %54)
  %56 = tail call double @llvm.fmuladd.f64(double %53, double %53, double %55)
  br i1 %16, label %57, label %64, !prof !270

57:                                               ; preds = %12
  %58 = getelementptr double, ptr %30, i64 3
  %59 = load double, ptr %58, align 8, !tbaa !86
  %60 = getelementptr double, ptr %33, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !86
  %62 = fsub double %59, %61
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %62, double %56)
  br label %64

64:                                               ; preds = %57, %12
  %65 = phi double [ %63, %57 ], [ %56, %12 ]
  %66 = phi double [ %62, %57 ], [ %15, %12 ]
  %67 = tail call double @sqrt(double noundef %65) #25
  %68 = fdiv double 2.000000e+00, %67
  %69 = sext i32 %28 to i64
  %70 = getelementptr inbounds double, ptr %5, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !86
  %72 = fsub double %67, %71
  %73 = getelementptr inbounds double, ptr %4, i64 %69
  %74 = load double, ptr %73, align 8, !tbaa !86
  %75 = fmul double %74, %72
  %76 = fmul double %72, %75
  %77 = fadd double %14, %76
  %78 = fmul double %68, %75
  %79 = getelementptr inbounds double, ptr %7, i64 %29
  %80 = load double, ptr %79, align 8, !tbaa !86
  %81 = tail call double @llvm.fmuladd.f64(double %35, double %78, double %80)
  store double %81, ptr %79, align 8, !tbaa !86
  %82 = getelementptr inbounds double, ptr %7, i64 %37
  %83 = load double, ptr %82, align 8, !tbaa !86
  %84 = tail call double @llvm.fmuladd.f64(double %44, double %78, double %83)
  store double %84, ptr %82, align 8, !tbaa !86
  %85 = getelementptr inbounds double, ptr %7, i64 %46
  %86 = load double, ptr %85, align 8, !tbaa !86
  %87 = tail call double @llvm.fmuladd.f64(double %53, double %78, double %86)
  store double %87, ptr %85, align 8, !tbaa !86
  %88 = getelementptr inbounds double, ptr %7, i64 %32
  %89 = load double, ptr %88, align 8, !tbaa !86
  %90 = fneg double %35
  %91 = tail call double @llvm.fmuladd.f64(double %90, double %78, double %89)
  store double %91, ptr %88, align 8, !tbaa !86
  %92 = getelementptr inbounds double, ptr %7, i64 %41
  %93 = load double, ptr %92, align 8, !tbaa !86
  %94 = fneg double %44
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %78, double %93)
  store double %95, ptr %92, align 8, !tbaa !86
  %96 = getelementptr inbounds double, ptr %7, i64 %50
  %97 = load double, ptr %96, align 8, !tbaa !86
  %98 = fneg double %53
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %78, double %97)
  store double %99, ptr %96, align 8, !tbaa !86
  %100 = load i1, ptr @dim, align 4
  br i1 %100, label %101, label %109, !prof !270

101:                                              ; preds = %64
  %102 = getelementptr double, ptr %79, i64 3
  %103 = load double, ptr %102, align 8, !tbaa !86
  %104 = tail call double @llvm.fmuladd.f64(double %66, double %78, double %103)
  store double %104, ptr %102, align 8, !tbaa !86
  %105 = getelementptr double, ptr %88, i64 3
  %106 = load double, ptr %105, align 8, !tbaa !86
  %107 = fneg double %66
  %108 = tail call double @llvm.fmuladd.f64(double %107, double %78, double %106)
  store double %108, ptr %105, align 8, !tbaa !86
  br label %109

109:                                              ; preds = %64, %101
  %110 = add nuw nsw i64 %13, 1
  %111 = icmp eq i64 %110, %11
  br i1 %111, label %112, label %12, !prof !271, !llvm.loop !272

112:                                              ; preds = %109, %8
  %113 = phi double [ 0.000000e+00, %8 ], [ %77, %109 ]
  ret double %113
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @eangl(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) unnamed_addr #20 !prof !267 !PGOFuncName !273 {
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %210, !prof !269

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64
  br label %13

13:                                               ; preds = %11, %207
  %14 = phi i64 [ 0, %11 ], [ %208, %207 ]
  %15 = phi double [ undef, %11 ], [ %97, %207 ]
  %16 = phi double [ undef, %11 ], [ %96, %207 ]
  %17 = phi double [ undef, %11 ], [ %117, %207 ]
  %18 = phi double [ undef, %11 ], [ %116, %207 ]
  %19 = phi double [ 0.000000e+00, %11 ], [ %131, %207 ]
  %20 = load i1, ptr @dim, align 4
  %21 = select i1 %20, i32 4, i32 3, !prof !274
  %22 = getelementptr inbounds i32, ptr %1, i64 %14
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = mul nsw i32 %21, %23
  %25 = sdiv i32 %24, 3
  %26 = getelementptr inbounds i32, ptr %2, i64 %14
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = mul nsw i32 %27, %21
  %29 = sdiv i32 %28, 3
  %30 = getelementptr inbounds i32, ptr %3, i64 %14
  %31 = load i32, ptr %30, align 4, !tbaa !74
  %32 = mul nsw i32 %31, %21
  %33 = sdiv i32 %32, 3
  %34 = getelementptr inbounds i32, ptr %4, i64 %14
  %35 = load i32, ptr %34, align 4, !tbaa !74
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %25 to i64
  %38 = getelementptr inbounds double, ptr %7, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !86
  %40 = sext i32 %29 to i64
  %41 = getelementptr inbounds double, ptr %7, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !86
  %43 = fsub double %39, %42
  %44 = add nsw i32 %25, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %7, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !86
  %48 = add nsw i32 %29, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %7, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !86
  %52 = fsub double %47, %51
  %53 = add nsw i32 %25, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %7, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !86
  %57 = add nsw i32 %29, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %7, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !86
  %61 = fsub double %56, %60
  %62 = sext i32 %33 to i64
  %63 = getelementptr inbounds double, ptr %7, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !86
  %65 = fsub double %64, %42
  %66 = add nsw i32 %33, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %7, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !86
  %70 = fsub double %69, %51
  %71 = add nsw i32 %33, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %7, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !86
  %75 = fsub double %74, %60
  %76 = fmul double %52, %52
  %77 = tail call double @llvm.fmuladd.f64(double %43, double %43, double %76)
  %78 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %77)
  %79 = fmul double %70, %70
  %80 = tail call double @llvm.fmuladd.f64(double %65, double %65, double %79)
  %81 = tail call double @llvm.fmuladd.f64(double %75, double %75, double %80)
  br i1 %20, label %82, label %93, !prof !274

82:                                               ; preds = %13
  %83 = getelementptr double, ptr %38, i64 3
  %84 = load double, ptr %83, align 8, !tbaa !86
  %85 = getelementptr double, ptr %41, i64 3
  %86 = load double, ptr %85, align 8, !tbaa !86
  %87 = fsub double %84, %86
  %88 = getelementptr double, ptr %63, i64 3
  %89 = load double, ptr %88, align 8, !tbaa !86
  %90 = fsub double %89, %86
  %91 = tail call double @llvm.fmuladd.f64(double %87, double %87, double %78)
  %92 = tail call double @llvm.fmuladd.f64(double %90, double %90, double %81)
  br label %93

93:                                               ; preds = %82, %13
  %94 = phi double [ %92, %82 ], [ %81, %13 ]
  %95 = phi double [ %91, %82 ], [ %78, %13 ]
  %96 = phi double [ %90, %82 ], [ %16, %13 ]
  %97 = phi double [ %87, %82 ], [ %15, %13 ]
  %98 = tail call double @sqrt(double noundef %95) #25
  %99 = tail call double @sqrt(double noundef %94) #25
  %100 = fdiv double 1.000000e+00, %98
  %101 = fdiv double 1.000000e+00, %99
  %102 = fmul double %43, %100
  %103 = fmul double %52, %100
  %104 = fmul double %61, %100
  %105 = fmul double %65, %101
  %106 = fmul double %70, %101
  %107 = fmul double %75, %101
  %108 = fmul double %103, %106
  %109 = tail call double @llvm.fmuladd.f64(double %102, double %105, double %108)
  %110 = tail call double @llvm.fmuladd.f64(double %104, double %107, double %109)
  %111 = load i1, ptr @dim, align 4
  %112 = fmul double %97, %100
  %113 = fmul double %96, %101
  %114 = tail call double @llvm.fmuladd.f64(double %112, double %113, double %110)
  %115 = select i1 %111, double %114, double %110, !prof !274
  %116 = select i1 %111, double %113, double %18, !prof !274
  %117 = select i1 %111, double %112, double %17, !prof !274
  %118 = fcmp ogt double %115, 1.000000e+00
  %119 = select i1 %118, double 1.000000e+00, double %115, !prof !274
  %120 = fcmp olt double %119, -1.000000e+00
  %121 = select i1 %120, double -1.000000e+00, double %119, !prof !274
  %122 = tail call double @acos(double noundef %121) #25
  %123 = sext i32 %36 to i64
  %124 = getelementptr inbounds double, ptr %6, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !86
  %126 = fsub double %122, %125
  %127 = getelementptr inbounds double, ptr %5, i64 %123
  %128 = load double, ptr %127, align 8, !tbaa !86
  %129 = fmul double %126, %128
  %130 = fmul double %126, %129
  %131 = fadd double %19, %130
  %132 = fadd double %129, %129
  %133 = tail call double @sin(double noundef %122) #25
  %134 = fcmp ogt double %133, 0.000000e+00
  %135 = fcmp olt double %133, 1.000000e-03
  %136 = and i1 %134, %135
  br i1 %136, label %142, label %137, !prof !274

137:                                              ; preds = %93
  %138 = fcmp olt double %133, 0.000000e+00
  %139 = fcmp ogt double %133, -1.000000e-03
  %140 = and i1 %138, %139
  %141 = select i1 %140, double -1.000000e-03, double %133, !prof !274
  br label %142

142:                                              ; preds = %93, %137
  %143 = phi double [ %141, %137 ], [ 1.000000e-03, %93 ]
  %144 = fneg double %132
  %145 = fdiv double %144, %143
  %146 = fmul double %100, %145
  %147 = fneg double %121
  %148 = tail call double @llvm.fmuladd.f64(double %147, double %102, double %105)
  %149 = fmul double %148, %146
  %150 = fmul double %101, %145
  %151 = tail call double @llvm.fmuladd.f64(double %147, double %105, double %102)
  %152 = fmul double %151, %150
  %153 = tail call double @llvm.fmuladd.f64(double %147, double %103, double %106)
  %154 = fmul double %153, %146
  %155 = tail call double @llvm.fmuladd.f64(double %147, double %106, double %103)
  %156 = fmul double %155, %150
  %157 = tail call double @llvm.fmuladd.f64(double %147, double %104, double %107)
  %158 = fmul double %157, %146
  %159 = tail call double @llvm.fmuladd.f64(double %147, double %107, double %104)
  %160 = fmul double %159, %150
  %161 = getelementptr inbounds double, ptr %8, i64 %37
  %162 = load double, ptr %161, align 8, !tbaa !86
  %163 = fadd double %162, %149
  store double %163, ptr %161, align 8, !tbaa !86
  %164 = getelementptr inbounds double, ptr %8, i64 %62
  %165 = load double, ptr %164, align 8, !tbaa !86
  %166 = fadd double %165, %152
  store double %166, ptr %164, align 8, !tbaa !86
  %167 = fadd double %149, %152
  %168 = getelementptr inbounds double, ptr %8, i64 %40
  %169 = load double, ptr %168, align 8, !tbaa !86
  %170 = fsub double %169, %167
  store double %170, ptr %168, align 8, !tbaa !86
  %171 = getelementptr inbounds double, ptr %8, i64 %45
  %172 = load double, ptr %171, align 8, !tbaa !86
  %173 = fadd double %154, %172
  store double %173, ptr %171, align 8, !tbaa !86
  %174 = getelementptr inbounds double, ptr %8, i64 %67
  %175 = load double, ptr %174, align 8, !tbaa !86
  %176 = fadd double %156, %175
  store double %176, ptr %174, align 8, !tbaa !86
  %177 = fadd double %154, %156
  %178 = getelementptr inbounds double, ptr %8, i64 %49
  %179 = load double, ptr %178, align 8, !tbaa !86
  %180 = fsub double %179, %177
  store double %180, ptr %178, align 8, !tbaa !86
  %181 = getelementptr inbounds double, ptr %8, i64 %54
  %182 = load double, ptr %181, align 8, !tbaa !86
  %183 = fadd double %158, %182
  store double %183, ptr %181, align 8, !tbaa !86
  %184 = getelementptr inbounds double, ptr %8, i64 %72
  %185 = load double, ptr %184, align 8, !tbaa !86
  %186 = fadd double %160, %185
  store double %186, ptr %184, align 8, !tbaa !86
  %187 = fadd double %158, %160
  %188 = getelementptr inbounds double, ptr %8, i64 %58
  %189 = load double, ptr %188, align 8, !tbaa !86
  %190 = fsub double %189, %187
  store double %190, ptr %188, align 8, !tbaa !86
  %191 = load i1, ptr @dim, align 4
  br i1 %191, label %192, label %207, !prof !274

192:                                              ; preds = %142
  %193 = tail call double @llvm.fmuladd.f64(double %147, double %117, double %116)
  %194 = fmul double %193, %146
  %195 = tail call double @llvm.fmuladd.f64(double %147, double %116, double %117)
  %196 = fmul double %195, %150
  %197 = getelementptr double, ptr %161, i64 3
  %198 = load double, ptr %197, align 8, !tbaa !86
  %199 = fadd double %194, %198
  store double %199, ptr %197, align 8, !tbaa !86
  %200 = getelementptr double, ptr %164, i64 3
  %201 = load double, ptr %200, align 8, !tbaa !86
  %202 = fadd double %196, %201
  store double %202, ptr %200, align 8, !tbaa !86
  %203 = fadd double %194, %196
  %204 = getelementptr double, ptr %168, i64 3
  %205 = load double, ptr %204, align 8, !tbaa !86
  %206 = fsub double %205, %203
  store double %206, ptr %204, align 8, !tbaa !86
  br label %207

207:                                              ; preds = %142, %192
  %208 = add nuw nsw i64 %14, 1
  %209 = icmp eq i64 %208, %12
  br i1 %209, label %210, label %13, !prof !275, !llvm.loop !276

210:                                              ; preds = %207, %9
  %211 = phi double [ 0.000000e+00, %9 ], [ %131, %207 ]
  ret double %211
}

; Function Attrs: nounwind uwtable
define internal fastcc double @ephi(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef %10) unnamed_addr #6 !prof !267 !PGOFuncName !277 {
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %585, !prof !269

13:                                               ; preds = %11
  %14 = zext nneg i32 %0 to i64
  br label %15

15:                                               ; preds = %13, %582
  %16 = phi i64 [ 0, %13 ], [ %583, %582 ]
  %17 = phi double [ undef, %13 ], [ %165, %582 ]
  %18 = phi double [ undef, %13 ], [ %164, %582 ]
  %19 = phi double [ undef, %13 ], [ %163, %582 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %349, %582 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %348, %582 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %347, %582 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %346, %582 ]
  %24 = phi double [ 0.000000e+00, %13 ], [ %521, %582 ]
  %25 = load i1, ptr @dim, align 4
  %26 = select i1 %25, i32 4, i32 3, !prof !278
  %27 = getelementptr inbounds i32, ptr %1, i64 %16
  %28 = load i32, ptr %27, align 4, !tbaa !74
  %29 = mul nsw i32 %26, %28
  %30 = sdiv i32 %29, 3
  %31 = getelementptr inbounds i32, ptr %2, i64 %16
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = mul nsw i32 %32, %26
  %34 = sdiv i32 %33, 3
  %35 = getelementptr inbounds i32, ptr %3, i64 %16
  %36 = load i32, ptr %35, align 4, !tbaa !74
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 true)
  %38 = mul nsw i32 %37, %26
  %39 = udiv i32 %38, 3
  %40 = getelementptr inbounds i32, ptr %4, i64 %16
  %41 = load i32, ptr %40, align 4, !tbaa !74
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %43 = mul nsw i32 %42, %26
  %44 = udiv i32 %43, 3
  %45 = getelementptr inbounds i32, ptr %5, i64 %16
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = add nsw i32 %46, -1
  %48 = sext i32 %34 to i64
  %49 = getelementptr inbounds double, ptr %9, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !86
  %51 = sext i32 %30 to i64
  %52 = getelementptr inbounds double, ptr %9, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !86
  %54 = fsub double %50, %53
  %55 = add nsw i32 %34, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %9, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !86
  %59 = add nsw i32 %30, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %9, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !86
  %63 = fsub double %58, %62
  %64 = add nsw i32 %34, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %9, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !86
  %68 = add nsw i32 %30, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %9, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !86
  %72 = fsub double %67, %71
  %73 = zext nneg i32 %39 to i64
  %74 = getelementptr inbounds double, ptr %9, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !86
  %76 = fsub double %75, %50
  %77 = add nuw nsw i32 %39, 1
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %9, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !86
  %81 = fsub double %80, %58
  %82 = add nuw nsw i32 %39, 2
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %9, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !86
  %86 = fsub double %85, %67
  %87 = zext nneg i32 %44 to i64
  %88 = getelementptr inbounds double, ptr %9, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !86
  %90 = fsub double %89, %75
  %91 = add nuw nsw i32 %44, 1
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %9, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !86
  %95 = fsub double %94, %80
  %96 = add nuw nsw i32 %44, 2
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds double, ptr %9, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !86
  %100 = fsub double %99, %85
  br i1 %25, label %101, label %137, !prof !278

101:                                              ; preds = %15
  %102 = getelementptr double, ptr %49, i64 3
  %103 = load double, ptr %102, align 8, !tbaa !86
  %104 = getelementptr double, ptr %52, i64 3
  %105 = load double, ptr %104, align 8, !tbaa !86
  %106 = fsub double %103, %105
  %107 = getelementptr double, ptr %74, i64 3
  %108 = load double, ptr %107, align 8, !tbaa !86
  %109 = fsub double %108, %103
  %110 = getelementptr double, ptr %88, i64 3
  %111 = load double, ptr %110, align 8, !tbaa !86
  %112 = fsub double %111, %108
  %113 = fmul double %63, %81
  %114 = tail call double @llvm.fmuladd.f64(double %54, double %76, double %113)
  %115 = tail call double @llvm.fmuladd.f64(double %72, double %86, double %114)
  %116 = tail call double @llvm.fmuladd.f64(double %106, double %109, double %115)
  %117 = fmul double %81, %95
  %118 = tail call double @llvm.fmuladd.f64(double %76, double %90, double %117)
  %119 = tail call double @llvm.fmuladd.f64(double %86, double %100, double %118)
  %120 = tail call double @llvm.fmuladd.f64(double %109, double %112, double %119)
  %121 = fmul double %63, %95
  %122 = tail call double @llvm.fmuladd.f64(double %54, double %90, double %121)
  %123 = tail call double @llvm.fmuladd.f64(double %72, double %100, double %122)
  %124 = tail call double @llvm.fmuladd.f64(double %106, double %112, double %123)
  %125 = fmul double %63, %63
  %126 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %125)
  %127 = tail call double @llvm.fmuladd.f64(double %72, double %72, double %126)
  %128 = tail call double @llvm.fmuladd.f64(double %106, double %106, double %127)
  %129 = fmul double %81, %81
  %130 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %129)
  %131 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %130)
  %132 = tail call double @llvm.fmuladd.f64(double %109, double %109, double %131)
  %133 = fmul double %95, %95
  %134 = tail call double @llvm.fmuladd.f64(double %90, double %90, double %133)
  %135 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %134)
  %136 = tail call double @llvm.fmuladd.f64(double %112, double %112, double %135)
  br label %156

137:                                              ; preds = %15
  %138 = fmul double %63, %81
  %139 = tail call double @llvm.fmuladd.f64(double %54, double %76, double %138)
  %140 = tail call double @llvm.fmuladd.f64(double %72, double %86, double %139)
  %141 = fmul double %81, %95
  %142 = tail call double @llvm.fmuladd.f64(double %76, double %90, double %141)
  %143 = tail call double @llvm.fmuladd.f64(double %86, double %100, double %142)
  %144 = fmul double %63, %95
  %145 = tail call double @llvm.fmuladd.f64(double %54, double %90, double %144)
  %146 = tail call double @llvm.fmuladd.f64(double %72, double %100, double %145)
  %147 = fmul double %63, %63
  %148 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %147)
  %149 = tail call double @llvm.fmuladd.f64(double %72, double %72, double %148)
  %150 = fmul double %81, %81
  %151 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %150)
  %152 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %151)
  %153 = fmul double %95, %95
  %154 = tail call double @llvm.fmuladd.f64(double %90, double %90, double %153)
  %155 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %154)
  br label %156

156:                                              ; preds = %137, %101
  %157 = phi double [ %124, %101 ], [ %146, %137 ]
  %158 = phi double [ %120, %101 ], [ %143, %137 ]
  %159 = phi double [ %116, %101 ], [ %140, %137 ]
  %160 = phi double [ %136, %101 ], [ %155, %137 ]
  %161 = phi double [ %132, %101 ], [ %152, %137 ]
  %162 = phi double [ %128, %101 ], [ %149, %137 ]
  %163 = phi double [ %112, %101 ], [ %19, %137 ]
  %164 = phi double [ %109, %101 ], [ %18, %137 ]
  %165 = phi double [ %106, %101 ], [ %17, %137 ]
  %166 = fneg double %159
  %167 = fmul double %159, %166
  %168 = tail call double @llvm.fmuladd.f64(double %162, double %161, double %167)
  %169 = fneg double %158
  %170 = fmul double %158, %169
  %171 = tail call double @llvm.fmuladd.f64(double %161, double %160, double %170)
  %172 = fneg double %157
  %173 = fmul double %161, %172
  %174 = tail call double @llvm.fmuladd.f64(double %159, double %158, double %173)
  %175 = fmul double %171, %168
  %176 = tail call double @sqrt(double noundef %175) #25
  %177 = fdiv double 1.000000e+00, %176
  %178 = fmul double %174, %177
  %179 = fmul double %178, 5.000000e-01
  %180 = fmul double %177, %179
  %181 = fmul double %90, %161
  %182 = tail call double @llvm.fmuladd.f64(double %169, double %76, double %181)
  %183 = fmul double %95, %161
  %184 = tail call double @llvm.fmuladd.f64(double %169, double %81, double %183)
  %185 = fmul double %100, %161
  %186 = tail call double @llvm.fmuladd.f64(double %169, double %86, double %185)
  %187 = fmul double %54, %158
  %188 = tail call double @llvm.fmuladd.f64(double %159, double %90, double %187)
  %189 = fmul double %157, -2.000000e+00
  %190 = tail call double @llvm.fmuladd.f64(double %189, double %76, double %188)
  %191 = fmul double %63, %158
  %192 = tail call double @llvm.fmuladd.f64(double %159, double %95, double %191)
  %193 = tail call double @llvm.fmuladd.f64(double %189, double %81, double %192)
  %194 = fmul double %72, %158
  %195 = tail call double @llvm.fmuladd.f64(double %159, double %100, double %194)
  %196 = tail call double @llvm.fmuladd.f64(double %189, double %86, double %195)
  %197 = fneg double %161
  %198 = fmul double %54, %197
  %199 = tail call double @llvm.fmuladd.f64(double %159, double %76, double %198)
  %200 = fmul double %63, %197
  %201 = tail call double @llvm.fmuladd.f64(double %159, double %81, double %200)
  %202 = fmul double %72, %197
  %203 = tail call double @llvm.fmuladd.f64(double %159, double %86, double %202)
  %204 = fmul double %168, 2.000000e+00
  %205 = fneg double %160
  %206 = fmul double %90, %158
  %207 = tail call double @llvm.fmuladd.f64(double %205, double %76, double %206)
  %208 = fmul double %207, %204
  %209 = fmul double %95, %158
  %210 = tail call double @llvm.fmuladd.f64(double %205, double %81, double %209)
  %211 = fmul double %210, %204
  %212 = fmul double %100, %158
  %213 = tail call double @llvm.fmuladd.f64(double %205, double %86, double %212)
  %214 = fmul double %213, %204
  %215 = fmul double %76, %169
  %216 = tail call double @llvm.fmuladd.f64(double %161, double %90, double %215)
  %217 = fmul double %216, %204
  %218 = fmul double %81, %169
  %219 = tail call double @llvm.fmuladd.f64(double %161, double %95, double %218)
  %220 = fmul double %219, %204
  %221 = fmul double %86, %169
  %222 = tail call double @llvm.fmuladd.f64(double %161, double %100, double %221)
  %223 = fmul double %222, %204
  %224 = fmul double %171, -2.000000e+00
  %225 = fmul double %76, %166
  %226 = tail call double @llvm.fmuladd.f64(double %161, double %54, double %225)
  %227 = fmul double %226, %224
  %228 = fmul double %81, %166
  %229 = tail call double @llvm.fmuladd.f64(double %161, double %63, double %228)
  %230 = fmul double %229, %224
  %231 = fmul double %86, %166
  %232 = tail call double @llvm.fmuladd.f64(double %161, double %72, double %231)
  %233 = fmul double %232, %224
  %234 = fmul double %171, 2.000000e+00
  %235 = fmul double %54, %166
  %236 = tail call double @llvm.fmuladd.f64(double %162, double %76, double %235)
  %237 = fmul double %234, %236
  %238 = fmul double %63, %166
  %239 = tail call double @llvm.fmuladd.f64(double %162, double %81, double %238)
  %240 = fmul double %234, %239
  %241 = fmul double %72, %166
  %242 = tail call double @llvm.fmuladd.f64(double %162, double %86, double %241)
  %243 = fmul double %234, %242
  %244 = fneg double %227
  %245 = tail call double @llvm.fmuladd.f64(double %244, double %180, double %182)
  %246 = fmul double %177, %245
  %247 = fneg double %230
  %248 = tail call double @llvm.fmuladd.f64(double %247, double %180, double %184)
  %249 = fmul double %177, %248
  %250 = fneg double %233
  %251 = tail call double @llvm.fmuladd.f64(double %250, double %180, double %186)
  %252 = fmul double %177, %251
  %253 = fneg double %182
  %254 = fsub double %253, %190
  %255 = fsub double %208, %227
  %256 = fsub double %255, %237
  %257 = fneg double %256
  %258 = tail call double @llvm.fmuladd.f64(double %257, double %180, double %254)
  %259 = fmul double %177, %258
  %260 = fneg double %184
  %261 = fsub double %260, %193
  %262 = fsub double %211, %230
  %263 = fsub double %262, %240
  %264 = fneg double %263
  %265 = tail call double @llvm.fmuladd.f64(double %264, double %180, double %261)
  %266 = fmul double %177, %265
  %267 = fneg double %186
  %268 = fsub double %267, %196
  %269 = fsub double %214, %233
  %270 = fsub double %269, %243
  %271 = fneg double %270
  %272 = tail call double @llvm.fmuladd.f64(double %271, double %180, double %268)
  %273 = fmul double %177, %272
  %274 = fsub double %190, %199
  %275 = fneg double %208
  %276 = fsub double %275, %217
  %277 = fadd double %237, %276
  %278 = fneg double %277
  %279 = tail call double @llvm.fmuladd.f64(double %278, double %180, double %274)
  %280 = fmul double %177, %279
  %281 = fsub double %193, %201
  %282 = fneg double %211
  %283 = fsub double %282, %220
  %284 = fadd double %240, %283
  %285 = fneg double %284
  %286 = tail call double @llvm.fmuladd.f64(double %285, double %180, double %281)
  %287 = fmul double %177, %286
  %288 = fsub double %196, %203
  %289 = fneg double %214
  %290 = fsub double %289, %223
  %291 = fadd double %243, %290
  %292 = fneg double %291
  %293 = tail call double @llvm.fmuladd.f64(double %292, double %180, double %288)
  %294 = fmul double %177, %293
  %295 = fneg double %217
  %296 = tail call double @llvm.fmuladd.f64(double %295, double %180, double %199)
  %297 = fmul double %177, %296
  %298 = fneg double %220
  %299 = tail call double @llvm.fmuladd.f64(double %298, double %180, double %201)
  %300 = fmul double %177, %299
  %301 = fneg double %223
  %302 = tail call double @llvm.fmuladd.f64(double %301, double %180, double %203)
  %303 = fmul double %177, %302
  %304 = load i1, ptr @dim, align 4
  br i1 %304, label %305, label %345, !prof !278

305:                                              ; preds = %156
  %306 = fmul double %161, %163
  %307 = tail call double @llvm.fmuladd.f64(double %169, double %164, double %306)
  %308 = fmul double %158, %165
  %309 = tail call double @llvm.fmuladd.f64(double %159, double %163, double %308)
  %310 = tail call double @llvm.fmuladd.f64(double %189, double %164, double %309)
  %311 = fmul double %165, %197
  %312 = tail call double @llvm.fmuladd.f64(double %159, double %164, double %311)
  %313 = fmul double %158, %163
  %314 = tail call double @llvm.fmuladd.f64(double %205, double %164, double %313)
  %315 = fmul double %204, %314
  %316 = fmul double %164, %169
  %317 = tail call double @llvm.fmuladd.f64(double %161, double %163, double %316)
  %318 = fmul double %204, %317
  %319 = fmul double %164, %166
  %320 = tail call double @llvm.fmuladd.f64(double %161, double %165, double %319)
  %321 = fmul double %224, %320
  %322 = fmul double %165, %166
  %323 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %322)
  %324 = fmul double %234, %323
  %325 = fneg double %321
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %180, double %307)
  %327 = fmul double %177, %326
  %328 = fneg double %307
  %329 = fsub double %328, %310
  %330 = fsub double %315, %321
  %331 = fsub double %330, %324
  %332 = fneg double %331
  %333 = tail call double @llvm.fmuladd.f64(double %332, double %180, double %329)
  %334 = fmul double %177, %333
  %335 = fsub double %310, %312
  %336 = fneg double %315
  %337 = fsub double %336, %318
  %338 = fadd double %337, %324
  %339 = fneg double %338
  %340 = tail call double @llvm.fmuladd.f64(double %339, double %180, double %335)
  %341 = fmul double %177, %340
  %342 = fneg double %318
  %343 = tail call double @llvm.fmuladd.f64(double %342, double %180, double %312)
  %344 = fmul double %177, %343
  br label %345

345:                                              ; preds = %305, %156
  %346 = phi double [ %344, %305 ], [ %23, %156 ]
  %347 = phi double [ %341, %305 ], [ %22, %156 ]
  %348 = phi double [ %334, %305 ], [ %21, %156 ]
  %349 = phi double [ %327, %305 ], [ %20, %156 ]
  %350 = load ptr, ptr @prm, align 8, !tbaa !83
  %351 = getelementptr inbounds %struct.parm, ptr %350, i64 0, i32 12
  %352 = load i32, ptr %351, align 8, !tbaa !279
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %450, label %354, !prof !280

354:                                              ; preds = %345
  %355 = load i32, ptr %35, align 4, !tbaa !74
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %450

357:                                              ; preds = %354
  %358 = fcmp ogt double %178, 1.000000e+00
  %359 = select i1 %358, double 1.000000e+00, double %178
  %360 = fcmp olt double %359, -1.000000e+00
  %361 = select i1 %360, double -1.000000e+00, double %359
  %362 = tail call double @acos(double noundef %361) #25
  %363 = fneg double %72
  %364 = fmul double %81, %363
  %365 = tail call double @llvm.fmuladd.f64(double %63, double %86, double %364)
  %366 = fneg double %54
  %367 = fmul double %86, %366
  %368 = tail call double @llvm.fmuladd.f64(double %72, double %76, double %367)
  %369 = fneg double %63
  %370 = fmul double %76, %369
  %371 = tail call double @llvm.fmuladd.f64(double %54, double %81, double %370)
  %372 = fneg double %86
  %373 = fmul double %95, %372
  %374 = tail call double @llvm.fmuladd.f64(double %81, double %100, double %373)
  %375 = fneg double %76
  %376 = fmul double %100, %375
  %377 = tail call double @llvm.fmuladd.f64(double %86, double %90, double %376)
  %378 = fneg double %81
  %379 = fmul double %90, %378
  %380 = tail call double @llvm.fmuladd.f64(double %76, double %95, double %379)
  %381 = fneg double %371
  %382 = fmul double %377, %381
  %383 = tail call double @llvm.fmuladd.f64(double %368, double %380, double %382)
  %384 = fneg double %365
  %385 = fmul double %380, %384
  %386 = tail call double @llvm.fmuladd.f64(double %371, double %374, double %385)
  %387 = fneg double %368
  %388 = fmul double %374, %387
  %389 = tail call double @llvm.fmuladd.f64(double %365, double %377, double %388)
  %390 = fmul double %81, %386
  %391 = tail call double @llvm.fmuladd.f64(double %383, double %76, double %390)
  %392 = tail call double @llvm.fmuladd.f64(double %389, double %86, double %391)
  %393 = fcmp olt double %392, 0.000000e+00
  %394 = fneg double %362
  %395 = select i1 %393, double %394, double %362
  %396 = sext i32 %47 to i64
  %397 = getelementptr inbounds double, ptr %8, i64 %396
  %398 = load double, ptr %397, align 8, !tbaa !86
  %399 = fsub double %395, %398
  %400 = fcmp ogt double %399, 0x400921FB5A7ED197
  %401 = select i1 %400, double 0x400921FB5A7ED197, double %399
  %402 = fcmp olt double %401, 0xC00921FB5A7ED197
  %403 = select i1 %402, double 0xC00921FB5A7ED197, double %401
  %404 = getelementptr inbounds double, ptr %6, i64 %396
  %405 = load double, ptr %404, align 8, !tbaa !86
  %406 = fmul double %405, %403
  %407 = fmul double %403, %406
  %408 = fadd double %24, %407
  %409 = tail call double @sin(double noundef %395) #25
  %410 = tail call double @llvm.fabs.f64(double %409)
  %411 = fcmp ogt double %410, 1.000000e-03
  br i1 %411, label %412, label %415

412:                                              ; preds = %357
  %413 = fmul double %406, -2.000000e+00
  %414 = fdiv double %413, %409
  br label %520

415:                                              ; preds = %357
  %416 = tail call double @llvm.fabs.f64(double %403)
  %417 = fcmp olt double %416, 1.000000e-01
  br i1 %417, label %418, label %438

418:                                              ; preds = %415
  %419 = load double, ptr %397, align 8, !tbaa !86
  %420 = fcmp oeq double %419, 0.000000e+00
  br i1 %420, label %421, label %428

421:                                              ; preds = %418
  %422 = load double, ptr %404, align 8, !tbaa !86
  %423 = fmul double %422, -2.000000e+00
  %424 = fmul double %395, %395
  %425 = fdiv double %424, 6.000000e+00
  %426 = fadd double %425, 1.000000e+00
  %427 = fmul double %426, %423
  br label %520

428:                                              ; preds = %418
  %429 = tail call double @llvm.fabs.f64(double %419)
  %430 = fcmp oeq double %429, 0x400921FB5A7ED197
  br i1 %430, label %431, label %520

431:                                              ; preds = %428
  %432 = load double, ptr %404, align 8, !tbaa !86
  %433 = fmul double %432, 2.000000e+00
  %434 = fmul double %403, %403
  %435 = fdiv double %434, 6.000000e+00
  %436 = fadd double %435, 1.000000e+00
  %437 = fmul double %436, %433
  br label %520

438:                                              ; preds = %415
  %439 = fcmp ogt double %395, 0.000000e+00
  %440 = fcmp olt double %395, 0x3FF921FB5A7ED197
  %441 = and i1 %439, %440
  br i1 %441, label %446, label %442

442:                                              ; preds = %438
  %443 = fcmp olt double %395, 0.000000e+00
  %444 = fcmp ogt double %395, 0xBFF921FB5A7ED197
  %445 = and i1 %443, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %442, %438
  %447 = fmul double %406, 1.000000e+03
  br label %520

448:                                              ; preds = %442
  %449 = fmul double %406, -1.000000e+03
  br label %520

450:                                              ; preds = %345, %354, %580
  %451 = phi double [ %521, %580 ], [ %24, %354 ], [ %24, %345 ]
  %452 = phi i32 [ %581, %580 ], [ %47, %354 ], [ %47, %345 ]
  %453 = phi double [ %524, %580 ], [ %178, %354 ], [ %178, %345 ]
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds double, ptr %8, i64 %454
  %456 = load double, ptr %455, align 8, !tbaa !86
  %457 = fadd double %456, -3.142000e+00
  %458 = tail call double @llvm.fabs.f64(double %457)
  %459 = fcmp olt double %458, 1.000000e-02
  %460 = select i1 %459, double -1.000000e+00, double 1.000000e+00, !prof !281
  %461 = getelementptr inbounds double, ptr %6, i64 %454
  %462 = load double, ptr %461, align 8, !tbaa !86
  %463 = getelementptr inbounds double, ptr %7, i64 %454
  %464 = load double, ptr %463, align 8, !tbaa !86
  %465 = tail call double @llvm.fabs.f64(double %464)
  %466 = fptosi double %465 to i32
  switch i32 %466, label %512 [
    i32 1, label %467
    i32 2, label %470
    i32 3, label %477
    i32 4, label %485
    i32 6, label %495
  ], !prof !282, !irr_loop !283

467:                                              ; preds = %450
  %468 = tail call double @llvm.fmuladd.f64(double %460, double %453, double 1.000000e+00)
  %469 = fmul double %462, %460
  br label %515

470:                                              ; preds = %450
  %471 = fmul double %453, 2.000000e+00
  %472 = tail call double @llvm.fmuladd.f64(double %471, double %453, double -1.000000e+00)
  %473 = tail call double @llvm.fmuladd.f64(double %460, double %472, double 1.000000e+00)
  %474 = fmul double %462, %460
  %475 = fmul double %474, 4.000000e+00
  %476 = fmul double %453, %475
  br label %515

477:                                              ; preds = %450
  %478 = fmul double %453, %453
  %479 = fmul double %453, %460
  %480 = tail call double @llvm.fmuladd.f64(double %478, double 4.000000e+00, double -3.000000e+00)
  %481 = tail call double @llvm.fmuladd.f64(double %479, double %480, double 1.000000e+00)
  %482 = fmul double %462, %460
  %483 = tail call double @llvm.fmuladd.f64(double %478, double 1.200000e+01, double -3.000000e+00)
  %484 = fmul double %483, %482
  br label %515

485:                                              ; preds = %450
  %486 = fmul double %453, %453
  %487 = fmul double %486, 8.000000e+00
  %488 = fadd double %486, -1.000000e+00
  %489 = tail call double @llvm.fmuladd.f64(double %487, double %488, double 1.000000e+00)
  %490 = tail call double @llvm.fmuladd.f64(double %460, double %489, double 1.000000e+00)
  %491 = fmul double %462, %460
  %492 = fmul double %453, %491
  %493 = tail call double @llvm.fmuladd.f64(double %486, double 3.200000e+01, double -1.600000e+01)
  %494 = fmul double %493, %492
  br label %515

495:                                              ; preds = %450
  %496 = fmul double %453, %453
  %497 = fmul double %496, 3.200000e+01
  %498 = fmul double %496, %497
  %499 = fmul double %496, -4.800000e+01
  %500 = fmul double %496, %499
  %501 = tail call double @llvm.fmuladd.f64(double %498, double %496, double %500)
  %502 = tail call double @llvm.fmuladd.f64(double %496, double 1.800000e+01, double %501)
  %503 = fadd double %502, -1.000000e+00
  %504 = tail call double @llvm.fmuladd.f64(double %460, double %503, double 1.000000e+00)
  %505 = fmul double %462, %460
  %506 = fmul double %453, %505
  %507 = fmul double %496, 1.920000e+02
  %508 = fneg double %507
  %509 = tail call double @llvm.fmuladd.f64(double %507, double %496, double %508)
  %510 = fadd double %509, 3.600000e+01
  %511 = fmul double %510, %506
  br label %515

512:                                              ; preds = %450
  %513 = load ptr, ptr @stderr, align 8, !tbaa !83
  %514 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %513, ptr noundef nonnull @.str.84, i32 noundef %30, i32 noundef %34, i32 noundef %39, i32 noundef %44, double noundef %464) #27
  tail call void @exit(i32 noundef 1) #24
  unreachable

515:                                              ; preds = %495, %485, %477, %470, %467
  %516 = phi double [ %511, %495 ], [ %494, %485 ], [ %484, %477 ], [ %476, %470 ], [ %469, %467 ]
  %517 = phi double [ %504, %495 ], [ %490, %485 ], [ %481, %477 ], [ %473, %470 ], [ %468, %467 ]
  %518 = fmul double %462, %517
  %519 = fadd double %451, %518
  br label %520

520:                                              ; preds = %412, %446, %448, %421, %431, %428, %515
  %521 = phi double [ %519, %515 ], [ %408, %428 ], [ %408, %431 ], [ %408, %421 ], [ %408, %448 ], [ %408, %446 ], [ %408, %412 ]
  %522 = phi i32 [ %452, %515 ], [ %47, %428 ], [ %47, %431 ], [ %47, %421 ], [ %47, %448 ], [ %47, %446 ], [ %47, %412 ]
  %523 = phi double [ %516, %515 ], [ %406, %428 ], [ %437, %431 ], [ %427, %421 ], [ %449, %448 ], [ %447, %446 ], [ %414, %412 ]
  %524 = phi double [ %453, %515 ], [ %361, %428 ], [ %361, %431 ], [ %361, %421 ], [ %361, %448 ], [ %361, %446 ], [ %361, %412 ]
  %525 = getelementptr inbounds double, ptr %10, i64 %51
  %526 = load double, ptr %525, align 8, !tbaa !86
  %527 = tail call double @llvm.fmuladd.f64(double %523, double %246, double %526)
  store double %527, ptr %525, align 8, !tbaa !86
  %528 = getelementptr inbounds double, ptr %10, i64 %60
  %529 = load double, ptr %528, align 8, !tbaa !86
  %530 = tail call double @llvm.fmuladd.f64(double %523, double %249, double %529)
  store double %530, ptr %528, align 8, !tbaa !86
  %531 = getelementptr inbounds double, ptr %10, i64 %69
  %532 = load double, ptr %531, align 8, !tbaa !86
  %533 = tail call double @llvm.fmuladd.f64(double %523, double %252, double %532)
  store double %533, ptr %531, align 8, !tbaa !86
  %534 = getelementptr inbounds double, ptr %10, i64 %48
  %535 = load double, ptr %534, align 8, !tbaa !86
  %536 = tail call double @llvm.fmuladd.f64(double %523, double %259, double %535)
  store double %536, ptr %534, align 8, !tbaa !86
  %537 = getelementptr inbounds double, ptr %10, i64 %56
  %538 = load double, ptr %537, align 8, !tbaa !86
  %539 = tail call double @llvm.fmuladd.f64(double %523, double %266, double %538)
  store double %539, ptr %537, align 8, !tbaa !86
  %540 = getelementptr inbounds double, ptr %10, i64 %65
  %541 = load double, ptr %540, align 8, !tbaa !86
  %542 = tail call double @llvm.fmuladd.f64(double %523, double %273, double %541)
  store double %542, ptr %540, align 8, !tbaa !86
  %543 = getelementptr inbounds double, ptr %10, i64 %73
  %544 = load double, ptr %543, align 8, !tbaa !86
  %545 = tail call double @llvm.fmuladd.f64(double %523, double %280, double %544)
  store double %545, ptr %543, align 8, !tbaa !86
  %546 = getelementptr inbounds double, ptr %10, i64 %78
  %547 = load double, ptr %546, align 8, !tbaa !86
  %548 = tail call double @llvm.fmuladd.f64(double %523, double %287, double %547)
  store double %548, ptr %546, align 8, !tbaa !86
  %549 = getelementptr inbounds double, ptr %10, i64 %83
  %550 = load double, ptr %549, align 8, !tbaa !86
  %551 = tail call double @llvm.fmuladd.f64(double %523, double %294, double %550)
  store double %551, ptr %549, align 8, !tbaa !86
  %552 = getelementptr inbounds double, ptr %10, i64 %87
  %553 = load double, ptr %552, align 8, !tbaa !86
  %554 = tail call double @llvm.fmuladd.f64(double %523, double %297, double %553)
  store double %554, ptr %552, align 8, !tbaa !86
  %555 = getelementptr inbounds double, ptr %10, i64 %92
  %556 = load double, ptr %555, align 8, !tbaa !86
  %557 = tail call double @llvm.fmuladd.f64(double %523, double %300, double %556)
  store double %557, ptr %555, align 8, !tbaa !86
  %558 = getelementptr inbounds double, ptr %10, i64 %97
  %559 = load double, ptr %558, align 8, !tbaa !86
  %560 = tail call double @llvm.fmuladd.f64(double %523, double %303, double %559)
  store double %560, ptr %558, align 8, !tbaa !86
  %561 = load i1, ptr @dim, align 4
  br i1 %561, label %562, label %575, !prof !278, !irr_loop !283

562:                                              ; preds = %520
  %563 = getelementptr double, ptr %525, i64 3
  %564 = load double, ptr %563, align 8, !tbaa !86
  %565 = tail call double @llvm.fmuladd.f64(double %523, double %349, double %564)
  store double %565, ptr %563, align 8, !tbaa !86
  %566 = getelementptr double, ptr %534, i64 3
  %567 = load double, ptr %566, align 8, !tbaa !86
  %568 = tail call double @llvm.fmuladd.f64(double %523, double %348, double %567)
  store double %568, ptr %566, align 8, !tbaa !86
  %569 = getelementptr double, ptr %543, i64 3
  %570 = load double, ptr %569, align 8, !tbaa !86
  %571 = tail call double @llvm.fmuladd.f64(double %523, double %347, double %570)
  store double %571, ptr %569, align 8, !tbaa !86
  %572 = getelementptr double, ptr %552, i64 3
  %573 = load double, ptr %572, align 8, !tbaa !86
  %574 = tail call double @llvm.fmuladd.f64(double %523, double %346, double %573)
  store double %574, ptr %572, align 8, !tbaa !86
  br label %575

575:                                              ; preds = %562, %520
  %576 = sext i32 %522 to i64
  %577 = getelementptr inbounds double, ptr %7, i64 %576
  %578 = load double, ptr %577, align 8, !tbaa !86
  %579 = fcmp olt double %578, 0.000000e+00
  br i1 %579, label %580, label %582, !prof !278

580:                                              ; preds = %575
  %581 = add nsw i32 %522, 1
  br label %450

582:                                              ; preds = %575
  %583 = add nuw nsw i64 %16, 1
  %584 = icmp eq i64 %583, %14
  br i1 %584, label %585, label %15, !prof !284, !llvm.loop !285

585:                                              ; preds = %582, %11
  %586 = phi double [ 0.000000e+00, %11 ], [ %521, %582 ]
  ret double %586
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nbond(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9) unnamed_addr #6 !prof !286 !PGOFuncName !287 {
  %11 = fdiv double 1.000000e+00, %8
  %12 = fdiv double 1.000000e+00, %9
  %13 = load ptr, ptr @prm, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = tail call ptr @ivector(i32 noundef -1, i32 noundef %15) #25
  %17 = load ptr, ptr @prm, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.parm, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !102
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %30, label %21, !prof !288

21:                                               ; preds = %30, %10
  %22 = load ptr, ptr @prm, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !102
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %315, !prof !288

26:                                               ; preds = %21
  %27 = getelementptr i32, ptr %16, i64 -1
  %28 = icmp eq i32 %3, 0
  %29 = fcmp une double %8, 1.000000e+00
  br label %37

30:                                               ; preds = %10, %30
  %31 = phi i64 [ %33, %30 ], [ -1, %10 ]
  %32 = getelementptr inbounds i32, ptr %16, i64 %31
  store i32 -1, ptr %32, align 4, !tbaa !74
  %33 = add nsw i64 %31, 1
  %34 = load i32, ptr %18, align 8, !tbaa !102
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %30, label %21, !prof !289, !llvm.loop !290

37:                                               ; preds = %26, %302
  %38 = phi i64 [ 0, %26 ], [ %308, %302 ]
  %39 = phi ptr [ %22, %26 ], [ %309, %302 ]
  %40 = phi double [ undef, %26 ], [ %307, %302 ]
  %41 = phi double [ 0.000000e+00, %26 ], [ %306, %302 ]
  %42 = phi double [ 0.000000e+00, %26 ], [ %305, %302 ]
  %43 = phi double [ 0.000000e+00, %26 ], [ %304, %302 ]
  %44 = phi double [ 0.000000e+00, %26 ], [ %303, %302 ]
  %45 = getelementptr inbounds i32, ptr %1, i64 %38
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %302, label %48, !prof !291

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !249
  %51 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 59
  %52 = load ptr, ptr %51, align 8, !tbaa !250
  %53 = getelementptr inbounds i32, ptr %52, i64 %38
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = add nsw i32 %54, -1
  %56 = mul nsw i32 %55, %50
  %57 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 37
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = getelementptr inbounds double, ptr %58, i64 %38
  %60 = load double, ptr %59, align 8, !tbaa !86
  %61 = fmul double %12, %60
  %62 = load i1, ptr @dim, align 4
  %63 = select i1 %62, i32 4, i32 3, !prof !292
  %64 = trunc i64 %38 to i32
  %65 = mul nuw nsw i32 %63, %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %4, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !86
  %69 = add nuw nsw i32 %65, 1
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds double, ptr %4, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !86
  %73 = add nuw nsw i32 %65, 2
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %4, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !86
  br i1 %62, label %77, label %80, !prof !292

77:                                               ; preds = %48
  %78 = getelementptr double, ptr %67, i64 3
  %79 = load double, ptr %78, align 8, !tbaa !86
  br label %80

80:                                               ; preds = %77, %48
  %81 = phi double [ %79, %77 ], [ %43, %48 ]
  %82 = phi double [ 0.000000e+00, %77 ], [ %41, %48 ]
  %83 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 60
  %84 = load ptr, ptr %83, align 8, !tbaa !125
  %85 = getelementptr inbounds i32, ptr %84, i64 %38
  %86 = load i32, ptr %85, align 4, !tbaa !74
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %103, !prof !293

88:                                               ; preds = %80
  %89 = load ptr, ptr @IexclAt, align 8, !tbaa !83
  %90 = getelementptr inbounds ptr, ptr %89, i64 %38
  %91 = load ptr, ptr %90, align 8, !tbaa !83
  %92 = trunc i64 %38 to i32
  br label %93

93:                                               ; preds = %88, %93
  %94 = phi i64 [ 0, %88 ], [ %99, %93 ]
  %95 = getelementptr inbounds i32, ptr %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !74
  %97 = sext i32 %96 to i64
  %98 = getelementptr i32, ptr %27, i64 %97
  store i32 %92, ptr %98, align 4, !tbaa !74
  %99 = add nuw nsw i64 %94, 1
  %100 = load i32, ptr %85, align 4, !tbaa !74
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %93, label %103, !prof !294, !llvm.loop !295

103:                                              ; preds = %93, %80
  br i1 %28, label %104, label %107, !prof !296

104:                                              ; preds = %103
  %105 = getelementptr inbounds i32, ptr %0, i64 %38
  %106 = load i32, ptr %105, align 4, !tbaa !74
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ %106, %104 ], [ 0, %103 ]
  %109 = getelementptr inbounds ptr, ptr %2, i64 %38
  %110 = sext i32 %108 to i64
  %111 = tail call i32 @llvm.smax.i32(i32 %46, i32 1)
  %112 = zext nneg i32 %111 to i64
  br label %113

113:                                              ; preds = %107, %277
  %114 = phi i64 [ 0, %107 ], [ %285, %277 ]
  %115 = phi double [ 0.000000e+00, %107 ], [ %284, %277 ]
  %116 = phi double [ 0.000000e+00, %107 ], [ %283, %277 ]
  %117 = phi double [ 0.000000e+00, %107 ], [ %282, %277 ]
  %118 = phi double [ %40, %107 ], [ %281, %277 ]
  %119 = phi double [ %82, %107 ], [ %280, %277 ]
  %120 = phi double [ %42, %107 ], [ %279, %277 ]
  %121 = phi double [ %44, %107 ], [ %278, %277 ]
  %122 = load ptr, ptr %109, align 8, !tbaa !83
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %129, !prof !297

124:                                              ; preds = %113
  %125 = load ptr, ptr @nabout, align 8, !tbaa !83
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.85, i32 noundef 0)
  %127 = load ptr, ptr @nabout, align 8, !tbaa !83
  %128 = tail call i32 @fflush(ptr noundef %127)
  br label %129

129:                                              ; preds = %124, %113
  %130 = load ptr, ptr %109, align 8, !tbaa !83
  %131 = getelementptr i32, ptr %130, i64 %114
  %132 = getelementptr i32, ptr %131, i64 %110
  %133 = load i32, ptr %132, align 4, !tbaa !74
  %134 = load i1, ptr @dim, align 4
  %135 = select i1 %134, i32 4, i32 3, !prof !297
  %136 = mul nsw i32 %135, %133
  br i1 %28, label %137, label %143, !prof !298

137:                                              ; preds = %129
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds i32, ptr %16, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !74
  %141 = zext i32 %140 to i64
  %142 = icmp eq i64 %38, %141
  br i1 %142, label %277, label %143, !prof !299

143:                                              ; preds = %137, %129
  %144 = sext i32 %136 to i64
  %145 = getelementptr inbounds double, ptr %4, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !86
  %147 = fsub double %68, %146
  %148 = add nsw i32 %136, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, ptr %4, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !86
  %152 = fsub double %72, %151
  %153 = add nsw i32 %136, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %4, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !86
  %157 = fsub double %76, %156
  %158 = fmul double %152, %152
  %159 = tail call double @llvm.fmuladd.f64(double %147, double %147, double %158)
  %160 = tail call double @llvm.fmuladd.f64(double %157, double %157, double %159)
  br i1 %134, label %161, label %166, !prof !300

161:                                              ; preds = %143
  %162 = getelementptr double, ptr %145, i64 3
  %163 = load double, ptr %162, align 8, !tbaa !86
  %164 = fsub double %81, %163
  %165 = tail call double @llvm.fmuladd.f64(double %164, double %164, double %160)
  br label %166

166:                                              ; preds = %161, %143
  %167 = phi double [ %164, %161 ], [ %118, %143 ]
  %168 = phi double [ %165, %161 ], [ %160, %143 ]
  %169 = fdiv double 1.000000e+00, %168
  %170 = tail call double @sqrt(double noundef %168) #25
  %171 = fmul double %170, %169
  %172 = load ptr, ptr @prm, align 8, !tbaa !83
  %173 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 37
  %174 = load ptr, ptr %173, align 8, !tbaa !137
  %175 = sext i32 %133 to i64
  %176 = getelementptr inbounds double, ptr %174, i64 %175
  %177 = load double, ptr %176, align 8, !tbaa !86
  %178 = fmul double %61, %177
  %179 = fmul double %171, %178
  %180 = fneg double %179
  %181 = fadd double %121, %179
  %182 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 61
  %183 = load ptr, ptr %182, align 8, !tbaa !256
  %184 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 59
  %185 = load ptr, ptr %184, align 8, !tbaa !250
  %186 = getelementptr inbounds i32, ptr %185, i64 %175
  %187 = load i32, ptr %186, align 4, !tbaa !74
  %188 = add nsw i32 %187, %56
  %189 = sext i32 %188 to i64
  %190 = getelementptr i32, ptr %183, i64 %189
  %191 = getelementptr i32, ptr %190, i64 -1
  %192 = load i32, ptr %191, align 4, !tbaa !74
  %193 = icmp sgt i32 %192, 0
  %194 = or i1 %29, %193
  br i1 %194, label %195, label %226, !prof !301

195:                                              ; preds = %166
  br i1 %193, label %205, label %196, !prof !301

196:                                              ; preds = %195
  %197 = getelementptr inbounds i32, ptr %185, i64 %38
  %198 = load i32, ptr %197, align 4, !tbaa !74
  %199 = tail call i32 @llvm.smax.i32(i32 %198, i32 %187)
  %200 = tail call i32 @llvm.smin.i32(i32 %198, i32 %187)
  %201 = add nsw i32 %199, -1
  %202 = mul nsw i32 %201, %199
  %203 = sdiv i32 %202, 2
  %204 = add nsw i32 %203, %200
  br label %205

205:                                              ; preds = %195, %196
  %206 = phi i32 [ %204, %196 ], [ %192, %195 ]
  %207 = add nsw i32 %206, -1
  %208 = fmul double %169, %169
  %209 = fmul double %169, %208
  %210 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 48
  %211 = load ptr, ptr %210, align 8, !tbaa !258
  %212 = sext i32 %207 to i64
  %213 = getelementptr inbounds double, ptr %211, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !86
  %215 = fmul double %209, %214
  %216 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 47
  %217 = load ptr, ptr %216, align 8, !tbaa !259
  %218 = getelementptr inbounds double, ptr %217, i64 %212
  %219 = load double, ptr %218, align 8, !tbaa !86
  %220 = fmul double %209, %219
  %221 = fmul double %209, %220
  %222 = fsub double %221, %215
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %11, double %120)
  %224 = fmul double %221, -1.200000e+01
  %225 = tail call double @llvm.fmuladd.f64(double %215, double 6.000000e+00, double %224)
  br label %248

226:                                              ; preds = %166
  %227 = xor i32 %192, -1
  %228 = fmul double %169, %169
  %229 = fmul double %169, %228
  %230 = fmul double %169, %229
  %231 = fmul double %169, %230
  %232 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 50
  %233 = load ptr, ptr %232, align 8, !tbaa !302
  %234 = sext i32 %227 to i64
  %235 = getelementptr inbounds double, ptr %233, i64 %234
  %236 = load double, ptr %235, align 8, !tbaa !86
  %237 = fmul double %231, %236
  %238 = getelementptr inbounds %struct.parm, ptr %172, i64 0, i32 49
  %239 = load ptr, ptr %238, align 8, !tbaa !303
  %240 = getelementptr inbounds double, ptr %239, i64 %234
  %241 = load double, ptr %240, align 8, !tbaa !86
  %242 = fmul double %231, %241
  %243 = fmul double %169, %242
  %244 = fsub double %243, %237
  %245 = tail call double @llvm.fmuladd.f64(double %244, double %11, double %120)
  %246 = fmul double %243, -1.200000e+01
  %247 = tail call double @llvm.fmuladd.f64(double %237, double 1.000000e+01, double %246)
  br label %248

248:                                              ; preds = %205, %226
  %249 = phi double [ %225, %205 ], [ %247, %226 ]
  %250 = phi double [ %223, %205 ], [ %245, %226 ]
  %251 = tail call double @llvm.fmuladd.f64(double %249, double %11, double %180)
  %252 = fmul double %171, %251
  %253 = fmul double %171, %252
  %254 = fmul double %147, %253
  %255 = fmul double %152, %253
  %256 = fmul double %157, %253
  %257 = fadd double %115, %254
  %258 = fadd double %116, %255
  %259 = fadd double %117, %256
  %260 = getelementptr inbounds double, ptr %5, i64 %144
  %261 = load double, ptr %260, align 8, !tbaa !86
  %262 = fsub double %261, %254
  store double %262, ptr %260, align 8, !tbaa !86
  %263 = getelementptr inbounds double, ptr %5, i64 %149
  %264 = load double, ptr %263, align 8, !tbaa !86
  %265 = fsub double %264, %255
  store double %265, ptr %263, align 8, !tbaa !86
  %266 = getelementptr inbounds double, ptr %5, i64 %154
  %267 = load double, ptr %266, align 8, !tbaa !86
  %268 = fsub double %267, %256
  store double %268, ptr %266, align 8, !tbaa !86
  %269 = load i1, ptr @dim, align 4
  br i1 %269, label %270, label %277, !prof !300

270:                                              ; preds = %248
  %271 = getelementptr double, ptr %5, i64 3
  %272 = fmul double %167, %253
  %273 = fadd double %119, %272
  %274 = getelementptr double, ptr %271, i64 %144
  %275 = load double, ptr %274, align 8, !tbaa !86
  %276 = fsub double %275, %272
  store double %276, ptr %274, align 8, !tbaa !86
  br label %277

277:                                              ; preds = %270, %137, %248
  %278 = phi double [ %181, %248 ], [ %121, %137 ], [ %181, %270 ]
  %279 = phi double [ %250, %248 ], [ %120, %137 ], [ %250, %270 ]
  %280 = phi double [ %119, %248 ], [ %119, %137 ], [ %273, %270 ]
  %281 = phi double [ %167, %248 ], [ %118, %137 ], [ %167, %270 ]
  %282 = phi double [ %259, %248 ], [ %117, %137 ], [ %259, %270 ]
  %283 = phi double [ %258, %248 ], [ %116, %137 ], [ %258, %270 ]
  %284 = phi double [ %257, %248 ], [ %115, %137 ], [ %257, %270 ]
  %285 = add nuw nsw i64 %114, 1
  %286 = icmp eq i64 %285, %112
  br i1 %286, label %287, label %113, !prof !304, !llvm.loop !305

287:                                              ; preds = %277
  %288 = getelementptr inbounds double, ptr %5, i64 %66
  %289 = load double, ptr %288, align 8, !tbaa !86
  %290 = fadd double %284, %289
  store double %290, ptr %288, align 8, !tbaa !86
  %291 = getelementptr inbounds double, ptr %5, i64 %70
  %292 = load double, ptr %291, align 8, !tbaa !86
  %293 = fadd double %283, %292
  store double %293, ptr %291, align 8, !tbaa !86
  %294 = getelementptr inbounds double, ptr %5, i64 %74
  %295 = load double, ptr %294, align 8, !tbaa !86
  %296 = fadd double %282, %295
  store double %296, ptr %294, align 8, !tbaa !86
  %297 = load i1, ptr @dim, align 4
  br i1 %297, label %298, label %302, !prof !292

298:                                              ; preds = %287
  %299 = getelementptr double, ptr %288, i64 3
  %300 = load double, ptr %299, align 8, !tbaa !86
  %301 = fadd double %280, %300
  store double %301, ptr %299, align 8, !tbaa !86
  br label %302

302:                                              ; preds = %287, %298, %37
  %303 = phi double [ %44, %37 ], [ %278, %298 ], [ %278, %287 ]
  %304 = phi double [ %43, %37 ], [ %81, %298 ], [ %81, %287 ]
  %305 = phi double [ %42, %37 ], [ %279, %298 ], [ %279, %287 ]
  %306 = phi double [ %41, %37 ], [ %280, %298 ], [ %280, %287 ]
  %307 = phi double [ %40, %37 ], [ %281, %298 ], [ %281, %287 ]
  %308 = add nuw nsw i64 %38, 1
  %309 = load ptr, ptr @prm, align 8, !tbaa !83
  %310 = getelementptr inbounds %struct.parm, ptr %309, i64 0, i32 4
  %311 = load i32, ptr %310, align 8, !tbaa !102
  %312 = add nsw i32 %311, -1
  %313 = sext i32 %312 to i64
  %314 = icmp slt i64 %308, %313
  br i1 %314, label %37, label %315, !prof !306, !llvm.loop !307

315:                                              ; preds = %302, %21
  %316 = phi double [ 0.000000e+00, %21 ], [ %303, %302 ]
  %317 = phi double [ 0.000000e+00, %21 ], [ %305, %302 ]
  %318 = phi i32 [ %24, %21 ], [ %311, %302 ]
  tail call void @free_ivector(ptr noundef %16, i32 noundef -1, i32 noundef %318) #25
  store double %317, ptr %6, align 8, !tbaa !86
  store double %316, ptr %7, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!71}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!35 = !{ptr @mme_init, ptr @free_ivector, i64 95166}
!36 = !{ptr @mme_init, ptr @ivector, i64 69980}
!37 = !{ptr @mme_init, ptr @set_cons_mask, i64 2}
!38 = !{ptr @mme_init, ptr @free, i64 5}
!39 = !{ptr @mme_init, ptr @malloc, i64 10}
!40 = !{ptr @mme_init, ptr @set_belly_mask, i64 2}
!41 = !{ptr @mme_init, ptr @mme34, i64 1}
!42 = !{ptr @mme34, ptr @egb, i64 127}
!43 = !{ptr @mme34, ptr @free_vector, i64 2}
!44 = !{ptr @mme34, ptr @fwrite, i64 4}
!45 = !{ptr @mme34, ptr @fflush, i64 10}
!46 = !{ptr @mme34, ptr @nblist, i64 26}
!47 = !{ptr @mme34, ptr @vector, i64 2}
!48 = !{ptr @mme34, ptr @ebond, i64 496}
!49 = !{ptr @mme34, ptr @eangl, i64 496}
!50 = !{ptr @mme34, ptr @ephi, i64 496}
!51 = !{ptr @mme34, ptr @nbond, i64 372}
!52 = !{ptr @mme34, ptr @fprintf, i64 6}
!53 = !{ptr @mme, ptr @mme34, i64 250}
!54 = !{ptr @md, ptr @free, i64 3}
!55 = !{ptr @md, ptr @calloc, i64 3}
!56 = !{ptr @md, ptr @gauss, i64 114180}
!57 = !{ptr @md, ptr @mme, i64 248}
!58 = !{ptr @egb, ptr @free_vector, i64 2}
!59 = !{ptr @egb, ptr @free_ivector, i64 2}
!60 = !{ptr @egb, ptr @vector, i64 2}
!61 = !{ptr @egb, ptr @ivector, i64 2}
!62 = !{ptr @egb, ptr @fprintf, i64 5}
!63 = !{ptr @egb, ptr @fflush, i64 5}
!64 = !{ptr @egb, ptr @log, i64 1172011336}
!65 = !{ptr @egb, ptr @exp, i64 4089364087}
!66 = !{ptr @eangl, ptr @acos, i64 8610042}
!67 = !{ptr @nbond, ptr @ivector, i64 372}
!68 = !{ptr @nbond, ptr @fprintf, i64 1}
!69 = !{ptr @nbond, ptr @fflush, i64 1}
!70 = !{ptr @nbond, ptr @free_ivector, i64 372}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!"function_entry_count", i64 26}
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!"function_entry_count", i64 400460}
!79 = !{!"function_entry_count", i64 1}
!80 = !{!"branch_weights", i32 0, i32 1}
!81 = !{!"function_entry_count", i64 6016}
!82 = !{!"branch_weights", i32 0, i32 6016}
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !76, i64 0}
!85 = !{!76, !76, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"double", !76, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !89, !90}
!92 = distinct !{!92, !89, !90}
!93 = distinct !{!93, !89, !90}
!94 = distinct !{!94, !89, !90}
!95 = distinct !{!95, !89, !90}
!96 = distinct !{!96, !89, !90}
!97 = distinct !{!97, !89, !90}
!98 = distinct !{!98, !89, !90}
!99 = !{!"function_entry_count", i64 2}
!100 = !{!101, !84, i64 128}
!101 = !{!"molecule_t", !76, i64 0, !75, i64 96, !84, i64 104, !75, i64 112, !75, i64 116, !75, i64 120, !84, i64 128}
!102 = !{!103, !75, i64 96}
!103 = !{!"parm", !76, i64 0, !75, i64 84, !75, i64 88, !75, i64 92, !75, i64 96, !75, i64 100, !75, i64 104, !75, i64 108, !75, i64 112, !75, i64 116, !75, i64 120, !75, i64 124, !75, i64 128, !75, i64 132, !75, i64 136, !75, i64 140, !75, i64 144, !75, i64 148, !75, i64 152, !75, i64 156, !75, i64 160, !75, i64 164, !75, i64 168, !75, i64 172, !75, i64 176, !75, i64 180, !75, i64 184, !75, i64 188, !75, i64 192, !75, i64 196, !75, i64 200, !75, i64 204, !75, i64 208, !84, i64 216, !84, i64 224, !84, i64 232, !84, i64 240, !84, i64 248, !84, i64 256, !84, i64 264, !84, i64 272, !84, i64 280, !84, i64 288, !84, i64 296, !84, i64 304, !84, i64 312, !84, i64 320, !84, i64 328, !84, i64 336, !84, i64 344, !84, i64 352, !84, i64 360, !84, i64 368, !76, i64 376, !87, i64 400, !87, i64 408, !87, i64 416, !87, i64 424, !87, i64 432, !84, i64 440, !84, i64 448, !84, i64 456, !84, i64 464, !84, i64 472, !84, i64 480, !84, i64 488, !84, i64 496, !84, i64 504, !84, i64 512, !84, i64 520, !84, i64 528, !84, i64 536, !84, i64 544, !84, i64 552, !84, i64 560, !84, i64 568, !84, i64 576, !84, i64 584, !84, i64 592, !84, i64 600, !84, i64 608, !84, i64 616, !84, i64 624, !84, i64 632, !84, i64 640, !84, i64 648, !84, i64 656, !84, i64 664, !84, i64 672, !84, i64 680, !84, i64 688, !84, i64 696, !84, i64 704, !84, i64 712}
!104 = !{!"branch_weights", i32 2, i32 0}
!105 = !{!"branch_weights", i32 2, i32 0, i32 0}
!106 = !{!"branch_weights", i32 1, i32 1}
!107 = !{!"branch_weights", i32 127, i32 1}
!108 = !{!"branch_weights", i32 2435713, i32 127}
!109 = distinct !{!109, !89, !90}
!110 = !{!"branch_weights", i32 0, i32 2}
!111 = distinct !{!111, !89, !90}
!112 = distinct !{!112, !89, !90}
!113 = distinct !{!113, !89, !90}
!114 = distinct !{!114, !89, !90}
!115 = distinct !{!115, !89, !90}
!116 = distinct !{!116, !89, !90}
!117 = !{!103, !84, i64 696}
!118 = !{!"branch_weights", i32 31904, i32 6156}
!119 = !{!"branch_weights", i32 31903, i32 1}
!120 = !{!103, !84, i64 704}
!121 = !{!"branch_weights", i32 68141, i32 31903}
!122 = distinct !{!122, !89, !90}
!123 = distinct !{!123, !89, !90}
!124 = distinct !{!124, !89, !90}
!125 = !{!103, !84, i64 448}
!126 = !{!"branch_weights", i32 38060, i32 0}
!127 = !{!"branch_weights", i32 38059, i32 1}
!128 = !{!103, !84, i64 472}
!129 = !{!"branch_weights", i32 171913, i32 38059}
!130 = distinct !{!130, !89, !90}
!131 = distinct !{!131, !89, !90}
!132 = !{!"function_entry_count", i64 251}
!133 = !{!"sff.c;mme34"}
!134 = !{!"branch_weights", i32 244, i32 3, i32 4}
!135 = !{!103, !84, i64 368}
!136 = !{!103, !84, i64 360}
!137 = !{!103, !84, i64 248}
!138 = !{!"branch_weights", i32 1, i32 2}
!139 = !{!"branch_weights", i32 4, i32 244}
!140 = !{!"branch_weights", i32 248, i32 0}
!141 = !{!"branch_weights", i32 2, i32 246}
!142 = !{!"branch_weights", i32 24, i32 222}
!143 = !{!"branch_weights", i32 0, i32 26}
!144 = !{!"branch_weights", i32 0, i32 14158568}
!145 = !{!"branch_weights", i32 247, i32 1}
!146 = !{!103, !75, i64 104}
!147 = !{!103, !84, i64 496}
!148 = !{!103, !84, i64 504}
!149 = !{!103, !84, i64 512}
!150 = !{!103, !84, i64 264}
!151 = !{!103, !84, i64 272}
!152 = !{!103, !75, i64 108}
!153 = !{!103, !84, i64 520}
!154 = !{!103, !84, i64 528}
!155 = !{!103, !84, i64 536}
!156 = !{!103, !75, i64 112}
!157 = !{!103, !84, i64 544}
!158 = !{!103, !84, i64 552}
!159 = !{!103, !84, i64 560}
!160 = !{!103, !84, i64 568}
!161 = !{!103, !84, i64 280}
!162 = !{!103, !84, i64 288}
!163 = !{!103, !75, i64 148}
!164 = !{!103, !84, i64 576}
!165 = !{!103, !84, i64 584}
!166 = !{!103, !84, i64 592}
!167 = !{!103, !84, i64 600}
!168 = !{!103, !75, i64 120}
!169 = !{!103, !84, i64 608}
!170 = !{!103, !84, i64 616}
!171 = !{!103, !84, i64 624}
!172 = !{!103, !84, i64 632}
!173 = !{!103, !84, i64 640}
!174 = !{!103, !84, i64 296}
!175 = !{!103, !84, i64 304}
!176 = !{!103, !84, i64 312}
!177 = !{!103, !75, i64 124}
!178 = !{!103, !84, i64 648}
!179 = !{!103, !84, i64 656}
!180 = !{!103, !84, i64 664}
!181 = !{!103, !84, i64 672}
!182 = !{!103, !84, i64 680}
!183 = distinct !{!183, !89, !90}
!184 = !{!"branch_weights", i32 124, i32 124}
!185 = !{!"branch_weights", i32 247, i32 14158073}
!186 = distinct !{!186, !89, !90}
!187 = !{!"branch_weights", i32 4719440, i32 0}
!188 = !{!"branch_weights", i32 247, i32 4719193}
!189 = distinct !{!189, !89, !90}
!190 = distinct !{!190, !89, !90}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{!"branch_weights", i32 248, i32 2728}
!193 = distinct !{!193, !89, !90}
!194 = !{!"branch_weights", i32 6, i32 242}
!195 = !{!"branch_weights", i32 0, i32 248}
!196 = !{!"function_entry_count", i64 250}
!197 = !{!103, !84, i64 256}
!198 = !{!"branch_weights", i32 0, i32 38060}
!199 = !{!"branch_weights", i32 127, i32 2435713}
!200 = distinct !{!200, !89, !90}
!201 = distinct !{!201, !89, !90}
!202 = !{!"branch_weights", i32 0, i32 114180}
!203 = !{!"branch_weights", i32 114180, i32 0}
!204 = !{!"branch_weights", i32 127, i32 7307393}
!205 = distinct !{!205, !89, !90}
!206 = !{!"VP", i32 0, i64 2, i64 4376471581388859901, i64 2}
!207 = distinct !{!207, !89, !90}
!208 = !{!"branch_weights", i32 1, i32 127}
!209 = !{!"branch_weights", i32 244, i32 0}
!210 = !{!"branch_weights", i32 243, i32 1}
!211 = !{!"branch_weights", i32 243, i32 13929717}
!212 = distinct !{!212, !89, !90}
!213 = !{!"branch_weights", i32 1033, i32 13928927}
!214 = !{!"branch_weights", i32 970, i32 13928990}
!215 = distinct !{!215, !89, !90}
!216 = !{!"VP", i32 0, i64 244, i64 4376471581388859901, i64 244}
!217 = distinct !{!217, !89, !90}
!218 = distinct !{!218, !89, !90}
!219 = !{!"branch_weights", i32 15489, i32 127}
!220 = distinct !{!220, !89, !90}
!221 = !{!"function_entry_count", i64 127}
!222 = !{!"sff.c;egb"}
!223 = !{!"branch_weights", i32 124, i32 3}
!224 = !{!"branch_weights", i32 2, i32 1}
!225 = !{!"branch_weights", i32 3, i32 0}
!226 = !{!103, !87, i64 432}
!227 = !{!"branch_weights", i32 1, i32 123}
!228 = !{!"branch_weights", i32 124, i32 0}
!229 = !{!"branch_weights", i32 124, i32 0, i32 0}
!230 = !{!"branch_weights", i32 0, i32 2359720}
!231 = !{!"branch_weights", i32 2359719, i32 1}
!232 = !{!"branch_weights", i32 0, i32 -207974400}
!233 = !{!"branch_weights", i32 2778, i32 -207977178}
!234 = !{!"branch_weights", i32 26846, i32 -208004024}
!235 = !{!"branch_weights", i32 513797690, i32 -721801714}
!236 = !{!"branch_weights", i32 -794008464, i32 72206750}
!237 = !{!"branch_weights", i32 57508228, i32 14698522}
!238 = !{!"branch_weights", i32 14698517, i32 5}
!239 = !{!"branch_weights", i32 0, i32 5}
!240 = !{!"branch_weights", i32 -210334119, i32 2359719}
!241 = distinct !{!241, !89, !90}
!242 = !{!"branch_weights", i32 2359720, i32 0}
!243 = !{!"branch_weights", i32 4719193, i32 247}
!244 = distinct !{!244, !89, !90}
!245 = !{!"branch_weights", i32 4719441, i32 247}
!246 = distinct !{!246, !89, !90}
!247 = !{!"branch_weights", i32 124, i32 2359596}
!248 = !{!"branch_weights", i32 0, i32 2359596}
!249 = !{!103, !75, i64 100}
!250 = !{!103, !84, i64 440}
!251 = !{!"branch_weights", i32 2359595, i32 1}
!252 = !{!"branch_weights", i32 10658545, i32 2359595}
!253 = distinct !{!253, !89, !90}
!254 = !{!"branch_weights", i32 0, i32 2043496448}
!255 = !{!"branch_weights", i32 12896474, i32 2030599974}
!256 = !{!103, !84, i64 456}
!257 = !{!"branch_weights", i32 2030599974, i32 0}
!258 = !{!103, !84, i64 336}
!259 = !{!103, !84, i64 328}
!260 = !{!"branch_weights", i32 2041136853, i32 2359595}
!261 = distinct !{!261, !89, !90}
!262 = distinct !{!262, !89, !90}
!263 = !{!"branch_weights", i32 0, i32 -208004024}
!264 = !{!"branch_weights", i32 2359719, i32 -210334119}
!265 = distinct !{!265, !89, !90}
!266 = distinct !{!266, !89, !90}
!267 = !{!"function_entry_count", i64 496}
!268 = !{!"sff.c;ebond"}
!269 = !{!"branch_weights", i32 495, i32 1}
!270 = !{!"branch_weights", i32 0, i32 4777472}
!271 = !{!"branch_weights", i32 495, i32 4776977}
!272 = distinct !{!272, !89, !90}
!273 = !{!"sff.c;eangl"}
!274 = !{!"branch_weights", i32 0, i32 8610064}
!275 = !{!"branch_weights", i32 495, i32 8609569}
!276 = distinct !{!276, !89, !90}
!277 = !{!"sff.c;ephi"}
!278 = !{!"branch_weights", i32 0, i32 15426592}
!279 = !{!103, !75, i64 128}
!280 = !{!"branch_weights", i32 15426592, i32 0}
!281 = !{!"branch_weights", i32 5253632, i32 10172960}
!282 = !{!"branch_weights", i32 0, i32 917600, i32 7488608, i32 6131552, i32 888832, i32 0}
!283 = !{!"loop_header_weight", i64 15426592}
!284 = !{!"branch_weights", i32 495, i32 15426097}
!285 = distinct !{!285, !89, !90}
!286 = !{!"function_entry_count", i64 372}
!287 = !{!"sff.c;nbond"}
!288 = !{!"branch_weights", i32 371, i32 1}
!289 = !{!"branch_weights", i32 7079161, i32 371}
!290 = distinct !{!290, !89, !90}
!291 = !{!"branch_weights", i32 763096, i32 6315692}
!292 = !{!"branch_weights", i32 0, i32 6315692}
!293 = !{!"branch_weights", i32 6315691, i32 1}
!294 = !{!"branch_weights", i32 31382913, i32 6315691}
!295 = distinct !{!295, !89, !90}
!296 = !{!"branch_weights", i32 2359596, i32 3956096}
!297 = !{!"branch_weights", i32 0, i32 2054445201}
!298 = !{!"branch_weights", i32 2042039745, i32 12405456}
!299 = !{!"branch_weights", i32 12896496, i32 2029143249}
!300 = !{!"branch_weights", i32 0, i32 2041548705}
!301 = !{!"branch_weights", i32 2041548705, i32 0}
!302 = !{!103, !84, i64 352}
!303 = !{!103, !84, i64 344}
!304 = !{!"branch_weights", i32 6315691, i32 2048129510}
!305 = distinct !{!305, !89, !90}
!306 = !{!"branch_weights", i32 7078417, i32 371}
!307 = distinct !{!307, !89, !90}
