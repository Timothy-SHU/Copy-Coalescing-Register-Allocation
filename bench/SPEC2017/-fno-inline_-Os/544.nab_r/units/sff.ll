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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @seconds() local_unnamed_addr #0 !prof !78 {
  ret double 1.000000e-01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @myroc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !79 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_nr_debug() local_unnamed_addr #0 !prof !79 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_blocksize() local_unnamed_addr #1 !prof !80 {
  %1 = load i32, ptr @blocksize, align 4, !tbaa !81
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_mytaskid() local_unnamed_addr #0 !prof !85 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_numtasks() local_unnamed_addr #0 !prof !79 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mpierror(i32 noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4, !prof !87

3:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #24
  unreachable

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reducerror(i32 noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = tail call i32 @mpierror(i32 noundef %0) #25
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @mpifinalize() local_unnamed_addr #0 !prof !89 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mpiinit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 !prof !89 {
  store i32 0, ptr %2, align 4, !tbaa !81
  store i32 1, ptr %3, align 4, !tbaa !81
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyz(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !prof !79 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @getxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyzw(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !79 {
  %5 = alloca [82 x i8], align 16
  %6 = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #26
  %7 = load ptr, ptr %0, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1, !tbaa !92
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr @stdin, align 8, !tbaa !90
  br label %29

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdin, align 8, !tbaa !90
  br label %29

19:                                               ; preds = %14
  %20 = tail call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !90
  %24 = load ptr, ptr %0, align 8, !tbaa !90
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %24) #28
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = tail call i32 @reducerror(i32 noundef %27) #25
  br label %29

29:                                               ; preds = %26, %17, %12
  %30 = phi ptr [ %20, %26 ], [ %18, %17 ], [ %13, %12 ]
  %31 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %1) #29
  %33 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %34 = load i32, ptr %1, align 4, !tbaa !81
  %35 = mul nsw i32 %34, %3
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = getelementptr inbounds [21 x i8], ptr %6, i64 0, i64 20
  %39 = add nsw i32 %3, -1
  br label %40

40:                                               ; preds = %37, %60
  %41 = phi i32 [ %34, %37 ], [ %61, %60 ]
  %42 = phi i64 [ 0, %37 ], [ %62, %60 ]
  %43 = phi i32 [ %35, %37 ], [ %63, %60 ]
  %44 = trunc i64 %42 to i32
  %45 = srem i32 %44, %3
  %46 = mul nsw i32 %45, 20
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %5, i64 %47
  %49 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %48, i64 noundef 20) #29
  store i8 0, ptr %38, align 4, !tbaa !92
  %50 = call double @atof(ptr noundef nonnull %6) #27
  %51 = getelementptr inbounds double, ptr %2, i64 %42
  store double %50, ptr %51, align 8, !tbaa !93
  %52 = icmp eq i32 %45, %39
  %53 = add nsw i32 %43, -1
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %42, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %59 = load i32, ptr %1, align 4, !tbaa !81
  br label %60

60:                                               ; preds = %40, %57
  %61 = phi i32 [ %41, %40 ], [ %59, %57 ]
  %62 = add nuw nsw i64 %42, 1
  %63 = mul nsw i32 %61, %3
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %40, label %66, !llvm.loop !95

66:                                               ; preds = %60, %29
  %67 = load ptr, ptr @stdin, align 8, !tbaa !90
  %68 = icmp eq ptr %30, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 @fclose(ptr noundef %30) #25
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %5) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !79 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @putxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyzw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !79 {
  %5 = load ptr, ptr %0, align 8, !tbaa !90
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str) #27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !90
  br label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef %5, ptr noundef nonnull @.str.4) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !90
  %15 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %14) #29
  br label %51

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %18 = load i32, ptr %1, align 4, !tbaa !81
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %18) #25
  %20 = load i32, ptr %1, align 4, !tbaa !81
  %21 = mul nsw i32 %20, %3
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = icmp eq i32 %3, 3
  %25 = sext i32 %3 to i64
  br label %26

26:                                               ; preds = %23, %40
  %27 = phi i64 [ 0, %23 ], [ %41, %40 ]
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !93
  %30 = getelementptr double, ptr %28, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !93
  %32 = getelementptr double, ptr %28, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !93
  br i1 %24, label %34, label %36

34:                                               ; preds = %26
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, double noundef %29, double noundef %31, double noundef %33) #25
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr double, ptr %28, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !93
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.8, double noundef %29, double noundef %31, double noundef %33, double noundef %38) #25
  br label %40

40:                                               ; preds = %34, %36
  %41 = add i64 %27, %25
  %42 = load i32, ptr %1, align 4, !tbaa !81
  %43 = mul nsw i32 %42, %3
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %26, label %46, !llvm.loop !97

46:                                               ; preds = %40, %16
  %47 = load ptr, ptr @stdout, align 8, !tbaa !90
  %48 = icmp eq ptr %17, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @fclose(ptr noundef %17) #25
  br label %51

51:                                               ; preds = %13, %49, %46
  %52 = phi i32 [ 0, %49 ], [ 0, %46 ], [ -1, %13 ]
  %53 = tail call i32 @reducerror(i32 noundef %52) #25
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @strindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !prof !79 {
  %3 = load i8, ptr %0, align 1, !tbaa !92
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !92
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %5, %24
  %9 = phi i64 [ 0, %5 ], [ %25, %24 ]
  br i1 %7, label %24, label %10

10:                                               ; preds = %8, %17
  %11 = phi i64 [ %18, %17 ], [ %9, %8 ]
  %12 = phi i64 [ %19, %17 ], [ 0, %8 ]
  %13 = phi i8 [ %21, %17 ], [ %6, %8 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !92
  %16 = icmp eq i8 %15, %13
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = add nuw i64 %11, 1
  %19 = add nuw i64 %12, 1
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !92
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !98

23:                                               ; preds = %17
  br i1 %7, label %24, label %29

24:                                               ; preds = %10, %8, %23
  %25 = add nuw i64 %9, 1
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !92
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %8, !llvm.loop !99

29:                                               ; preds = %23
  %30 = trunc i64 %9 to i32
  br label %31

31:                                               ; preds = %24, %29, %2
  %32 = phi i32 [ -1, %2 ], [ %30, %29 ], [ -1, %24 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 !prof !79 {
  %6 = alloca [82 x i8], align 16
  %7 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %7) #26
  %8 = load ptr, ptr %0, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1, !tbaa !92
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stdin, align 8, !tbaa !90
  br label %30

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str) #27
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdin, align 8, !tbaa !90
  br label %30

20:                                               ; preds = %15
  %21 = tail call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.1) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !90
  %25 = load ptr, ptr %0, align 8, !tbaa !90
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %25) #28
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi i32 [ -1, %23 ], [ 0, %20 ]
  %29 = tail call i32 @reducerror(i32 noundef %28) #25
  br label %30

30:                                               ; preds = %27, %18, %13
  %31 = phi ptr [ %21, %27 ], [ %19, %18 ], [ %14, %13 ]
  %32 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %33 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  store double 0.000000e+00, ptr %2, align 8, !tbaa !93
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %2) #29
  %35 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %36 = load i32, ptr %1, align 4, !tbaa !81
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %30
  %39 = mul nsw i32 %36, 3
  %40 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %41

41:                                               ; preds = %38, %61
  %42 = phi i32 [ %36, %38 ], [ %62, %61 ]
  %43 = phi i64 [ 0, %38 ], [ %63, %61 ]
  %44 = phi i32 [ %39, %38 ], [ %64, %61 ]
  %45 = trunc i64 %43 to i32
  %46 = urem i32 %45, 6
  %47 = mul nuw nsw i32 %46, 12
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %6, i64 %48
  %50 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %49, i64 noundef 12) #29
  store i8 0, ptr %40, align 1, !tbaa !92
  %51 = call double @atof(ptr noundef nonnull %7) #27
  %52 = getelementptr inbounds double, ptr %3, i64 %43
  store double %51, ptr %52, align 8, !tbaa !93
  %53 = icmp eq i32 %46, 5
  %54 = add nsw i32 %44, -1
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %43, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %60 = load i32, ptr %1, align 4, !tbaa !81
  br label %61

61:                                               ; preds = %41, %58
  %62 = phi i32 [ %42, %41 ], [ %60, %58 ]
  %63 = add nuw nsw i64 %43, 1
  %64 = mul nsw i32 %62, 3
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %41, label %67, !llvm.loop !100

67:                                               ; preds = %61, %30
  %68 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %69 = icmp eq ptr %68, null
  %70 = load i32, ptr %1, align 4, !tbaa !81
  %71 = icmp sgt i32 %70, 0
  br i1 %69, label %75, label %72

72:                                               ; preds = %67
  br i1 %71, label %73, label %105

73:                                               ; preds = %72
  %74 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %81

75:                                               ; preds = %67
  br i1 %71, label %76, label %102

76:                                               ; preds = %75
  %77 = mul i32 %70, 3
  %78 = call i32 @llvm.smax.i32(i32 %77, i32 1)
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %80, i1 false), !tbaa !93
  br label %102

81:                                               ; preds = %73, %96
  %82 = phi i32 [ %70, %73 ], [ %97, %96 ]
  %83 = phi i64 [ 0, %73 ], [ %98, %96 ]
  %84 = trunc i64 %83 to i32
  %85 = urem i32 %84, 6
  %86 = mul nuw nsw i32 %85, 12
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %6, i64 %87
  %89 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %88, i64 noundef 12) #29
  store i8 0, ptr %74, align 1, !tbaa !92
  %90 = call double @atof(ptr noundef nonnull %7) #27
  %91 = getelementptr inbounds double, ptr %4, i64 %83
  store double %90, ptr %91, align 8, !tbaa !93
  %92 = icmp eq i32 %85, 5
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %95 = load i32, ptr %1, align 4, !tbaa !81
  br label %96

96:                                               ; preds = %81, %93
  %97 = phi i32 [ %82, %81 ], [ %95, %93 ]
  %98 = add nuw nsw i64 %83, 1
  %99 = mul nsw i32 %97, 3
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %81, label %105, !llvm.loop !101

102:                                              ; preds = %76, %75
  %103 = load ptr, ptr @nabout, align 8, !tbaa !90
  %104 = call i64 @fwrite(ptr nonnull @.str.11, i64 25, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %96, %72, %102
  %106 = load ptr, ptr @stdin, align 8, !tbaa !90
  %107 = icmp eq ptr %31, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @fclose(ptr noundef %31) #25
  br label %110

110:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %6) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 !prof !79 {
  %7 = load ptr, ptr %0, align 8, !tbaa !90
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr @stdout, align 8, !tbaa !90
  br label %18

12:                                               ; preds = %6
  %13 = tail call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str.4) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !90
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %16) #29
  br label %94

18:                                               ; preds = %12, %10
  %19 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !90
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef %20) #25
  %22 = load i32, ptr %2, align 4, !tbaa !81
  %23 = load double, ptr %3, align 8, !tbaa !93
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %22, double noundef %23) #25
  %25 = load i32, ptr %2, align 4, !tbaa !81
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %18
  %28 = mul nsw i32 %25, 3
  br label %31

29:                                               ; preds = %54
  %30 = icmp sgt i32 %56, 0
  br i1 %30, label %60, label %89

31:                                               ; preds = %27, %54
  %32 = phi i64 [ %55, %54 ], [ 0, %27 ]
  %33 = phi i32 [ %57, %54 ], [ %28, %27 ]
  %34 = add nuw nsw i64 %32, 3
  %35 = sext i32 %33 to i64
  %36 = icmp slt i64 %34, %35
  %37 = getelementptr inbounds double, ptr %4, i64 %32
  %38 = load double, ptr %37, align 8, !tbaa !93
  %39 = or disjoint i64 %32, 1
  %40 = getelementptr inbounds double, ptr %4, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !93
  %42 = getelementptr double, ptr %37, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !93
  br i1 %36, label %44, label %52

44:                                               ; preds = %31
  %45 = getelementptr inbounds double, ptr %4, i64 %34
  %46 = load double, ptr %45, align 8, !tbaa !93
  %47 = getelementptr double, ptr %37, i64 4
  %48 = load double, ptr %47, align 8, !tbaa !93
  %49 = getelementptr double, ptr %37, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !93
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %38, double noundef %41, double noundef %43, double noundef %46, double noundef %48, double noundef %50) #25
  br label %54

52:                                               ; preds = %31
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %38, double noundef %41, double noundef %43) #25
  br label %54

54:                                               ; preds = %44, %52
  %55 = add nuw i64 %32, 6
  %56 = load i32, ptr %2, align 4, !tbaa !81
  %57 = mul nsw i32 %56, 3
  %58 = trunc i64 %55 to i32
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %31, label %29, !llvm.loop !102

60:                                               ; preds = %29, %83
  %61 = phi i64 [ %84, %83 ], [ 0, %29 ]
  %62 = phi i32 [ %86, %83 ], [ %57, %29 ]
  %63 = add nuw nsw i64 %61, 3
  %64 = sext i32 %62 to i64
  %65 = icmp slt i64 %63, %64
  %66 = getelementptr inbounds double, ptr %5, i64 %61
  %67 = load double, ptr %66, align 8, !tbaa !93
  %68 = or disjoint i64 %61, 1
  %69 = getelementptr inbounds double, ptr %5, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !93
  %71 = getelementptr double, ptr %66, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !93
  br i1 %65, label %73, label %81

73:                                               ; preds = %60
  %74 = getelementptr inbounds double, ptr %5, i64 %63
  %75 = load double, ptr %74, align 8, !tbaa !93
  %76 = getelementptr double, ptr %66, i64 4
  %77 = load double, ptr %76, align 8, !tbaa !93
  %78 = getelementptr double, ptr %66, i64 5
  %79 = load double, ptr %78, align 8, !tbaa !93
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %67, double noundef %70, double noundef %72, double noundef %75, double noundef %77, double noundef %79) #25
  br label %83

81:                                               ; preds = %60
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %67, double noundef %70, double noundef %72) #25
  br label %83

83:                                               ; preds = %73, %81
  %84 = add nuw i64 %61, 6
  %85 = load i32, ptr %2, align 4, !tbaa !81
  %86 = mul nsw i32 %85, 3
  %87 = trunc i64 %84 to i32
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %60, label %89, !llvm.loop !103

89:                                               ; preds = %83, %18, %29
  %90 = load ptr, ptr @stdout, align 8, !tbaa !90
  %91 = icmp eq ptr %19, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @fclose(ptr noundef %19) #25
  br label %94

94:                                               ; preds = %15, %92, %89
  %95 = phi i32 [ 0, %92 ], [ 0, %89 ], [ -1, %15 ]
  %96 = tail call i32 @reducerror(i32 noundef %95) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @checkpoint(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !79 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %1, ptr %5, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ %3, %4 ]
  %11 = add nuw nsw i32 %9, 1
  %12 = udiv i32 %10, 10
  %13 = icmp ult i32 %10, 10
  br i1 %13, label %14, label %8, !llvm.loop !104

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %9, 2
  %16 = zext nneg i32 %15 to i64
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #30
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %3) #29
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @strindex(ptr noundef %0, ptr noundef nonnull @.str.3) #25
  %22 = icmp slt i32 %21, 0
  %23 = add nsw i32 %11, %20
  br i1 %22, label %24, label %36

24:                                               ; preds = %14
  %25 = add nsw i32 %23, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #30
  %28 = shl i64 %19, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr @strncpy(ptr noundef %27, ptr noundef %0, i64 noundef %29) #29
  %31 = getelementptr inbounds i8, ptr %27, i64 %29
  %32 = zext nneg i32 %11 to i64
  %33 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %32) #29
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds i8, ptr %27, i64 %34
  br label %57

36:                                               ; preds = %14
  %37 = add i32 %9, %20
  %38 = sext i32 %37 to i64
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #30
  %40 = zext nneg i32 %21 to i64
  %41 = tail call ptr @strncpy(ptr noundef %39, ptr noundef %0, i64 noundef %40) #29
  %42 = getelementptr inbounds i8, ptr %39, i64 %40
  %43 = zext nneg i32 %11 to i64
  %44 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %43) #29
  %45 = add nuw nsw i32 %21, %11
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %39, i64 %46
  %48 = getelementptr i8, ptr %0, i64 %40
  %49 = getelementptr i8, ptr %48, i64 2
  %50 = sub i32 %20, %21
  %51 = add i32 %50, -2
  %52 = sext i32 %51 to i64
  %53 = tail call ptr @strncpy(ptr noundef nonnull %47, ptr noundef %49, i64 noundef %52) #29
  %54 = sext i32 %23 to i64
  %55 = getelementptr i8, ptr %39, i64 %54
  %56 = getelementptr i8, ptr %55, i64 -2
  br label %57

57:                                               ; preds = %36, %24
  %58 = phi ptr [ %56, %36 ], [ %35, %24 ]
  %59 = phi ptr [ %39, %36 ], [ %27, %24 ]
  store i8 0, ptr %58, align 1, !tbaa !92
  store ptr %59, ptr %6, align 8
  %60 = call i32 @putxyz(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %2) #25
  tail call void @free(ptr noundef nonnull %59) #29
  tail call void @free(ptr noundef %17) #29
  br label %61

61:                                               ; preds = %4, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @mme_timer() local_unnamed_addr #14 !prof !79 {
  %1 = load ptr, ptr @nabout, align 8, !tbaa !90
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %1)
  %3 = load ptr, ptr @nabout, align 8, !tbaa !90
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, double noundef 0.000000e+00) #25
  %5 = load ptr, ptr @nabout, align 8, !tbaa !90
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, double noundef 0.000000e+00) #25
  %7 = load ptr, ptr @nabout, align 8, !tbaa !90
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.19, double noundef 0.000000e+00) #25
  %9 = load ptr, ptr @nabout, align 8, !tbaa !90
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #25
  %11 = load ptr, ptr @nabout, align 8, !tbaa !90
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.21, double noundef 0.000000e+00) #25
  %13 = load ptr, ptr @nabout, align 8, !tbaa !90
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.22, double noundef 0.000000e+00) #25
  %15 = load ptr, ptr @nabout, align 8, !tbaa !90
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.23, double noundef 0.000000e+00) #25
  %17 = load ptr, ptr @nabout, align 8, !tbaa !90
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.24, double noundef 0.000000e+00) #25
  %19 = load ptr, ptr @nabout, align 8, !tbaa !90
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.25, double noundef 0.000000e+00) #25
  %21 = load ptr, ptr @nabout, align 8, !tbaa !90
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.26, double noundef 0.000000e+00) #25
  %23 = load ptr, ptr @nabout, align 8, !tbaa !90
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.27, double noundef 0.000000e+00) #25
  %25 = load ptr, ptr @nabout, align 8, !tbaa !90
  %26 = tail call i32 @fflush(ptr noundef %25) #25
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mme_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !105 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i1 false, ptr @dim, align 4
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  store ptr %8, ptr @prm, align 8, !tbaa !90
  store ptr %3, ptr @x0, align 8, !tbaa !90
  store ptr %4, ptr @binposfp, align 8, !tbaa !90
  %9 = load ptr, ptr @frozen, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.parm, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %9, i32 noundef 0, i32 noundef %11) #29
  %12 = load ptr, ptr @constrained, align 8, !tbaa !90
  %13 = load ptr, ptr @prm, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %12, i32 noundef 0, i32 noundef %15) #29
  %16 = load ptr, ptr @prm, align 8, !tbaa !90
  %17 = getelementptr inbounds %struct.parm, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !108
  %19 = tail call ptr @ivector(i32 noundef 0, i32 noundef %18) #29
  store ptr %19, ptr @frozen, align 8, !tbaa !90
  %20 = load ptr, ptr @prm, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.parm, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !108
  %23 = tail call ptr @ivector(i32 noundef 0, i32 noundef %22) #29
  store ptr %23, ptr @constrained, align 8, !tbaa !90
  %24 = load ptr, ptr @binposfp, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !110

26:                                               ; preds = %5
  %27 = tail call i32 @writebinposhdr(ptr noundef nonnull %24) #29
  %28 = load ptr, ptr @constrained, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi ptr [ %28, %26 ], [ %23, %5 ]
  %31 = tail call i32 @set_cons_mask(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %30) #29
  store i32 %31, ptr @nconstrained, align 4, !tbaa !81
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !110

33:                                               ; preds = %29
  %34 = icmp eq ptr %2, null
  %35 = load ptr, ptr @nabout, align 8, !tbaa !90
  br i1 %34, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.52, i32 noundef %31) #25
  br label %40

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.53, i32 noundef %31, ptr noundef nonnull %2) #25
  br label %40

40:                                               ; preds = %36, %38, %29
  %41 = load i32, ptr @gb, align 4, !tbaa !81
  switch i32 %41, label %47 [
    i32 2, label %43
    i32 5, label %42
  ], !prof !111

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %40, %42
  %44 = phi double [ 1.000000e+00, %42 ], [ 8.000000e-01, %40 ]
  %45 = phi double [ 8.000000e-01, %42 ], [ 0.000000e+00, %40 ]
  %46 = phi double [ 4.850000e+00, %42 ], [ 0x400745E353F7CED9, %40 ]
  store double %44, ptr @gbalpha, align 8, !tbaa !93
  store double %45, ptr @gbbeta, align 8, !tbaa !93
  store double %46, ptr @gbgamma, align 8, !tbaa !93
  br label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr @pairlistnp, align 8, !tbaa !90
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50, !prof !112

50:                                               ; preds = %47
  %51 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %65, !prof !113

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr @pairlistnp, align 8, !tbaa !90
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %57, i32 noundef 0, i32 noundef 1) #29
  %58 = add nuw nsw i64 %54, 1
  %59 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %53, label %62, !prof !114, !llvm.loop !115

62:                                               ; preds = %53
  %63 = trunc i64 %58 to i32
  %64 = load ptr, ptr @pairlistnp, align 8, !tbaa !90
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi ptr [ %48, %50 ], [ %64, %62 ]
  %67 = phi i32 [ 0, %50 ], [ %63, %62 ]
  store i32 %67, ptr %6, align 4, !tbaa !81
  tail call void @free(ptr noundef %66) #29
  br label %68

68:                                               ; preds = %65, %47
  %69 = load ptr, ptr @upairsnp, align 8, !tbaa !90
  %70 = load ptr, ptr @prm, align 8, !tbaa !90
  %71 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %69, i32 noundef 0, i32 noundef %72) #29
  %73 = load ptr, ptr @lpairsnp, align 8, !tbaa !90
  %74 = load ptr, ptr @prm, align 8, !tbaa !90
  %75 = getelementptr inbounds %struct.parm, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %73, i32 noundef 0, i32 noundef %76) #29
  %77 = load ptr, ptr @prm, align 8, !tbaa !90
  %78 = getelementptr inbounds %struct.parm, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !108
  %80 = tail call ptr @ivector(i32 noundef 0, i32 noundef %79) #29
  store ptr %80, ptr @upairsnp, align 8, !tbaa !90
  %81 = load ptr, ptr @prm, align 8, !tbaa !90
  %82 = getelementptr inbounds %struct.parm, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !108
  %84 = tail call ptr @ivector(i32 noundef 0, i32 noundef %83) #29
  store ptr %84, ptr @lpairsnp, align 8, !tbaa !90
  %85 = load ptr, ptr @prm, align 8, !tbaa !90
  %86 = getelementptr inbounds %struct.parm, ptr %85, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !108
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #30
  store ptr %90, ptr @pairlistnp, align 8, !tbaa !90
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %101, !prof !116

92:                                               ; preds = %68
  %93 = load ptr, ptr @nabout, align 8, !tbaa !90
  %94 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 47, i64 1, ptr %93)
  %95 = load ptr, ptr @nabout, align 8, !tbaa !90
  %96 = tail call i32 @fflush(ptr noundef %95) #25
  %97 = tail call i32 @mpierror(i32 noundef -1) #25
  %98 = load ptr, ptr @prm, align 8, !tbaa !90
  %99 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !108
  br label %101

101:                                              ; preds = %92, %68
  %102 = phi i32 [ %100, %92 ], [ %87, %68 ]
  %103 = phi ptr [ %98, %92 ], [ %85, %68 ]
  %104 = getelementptr inbounds %struct.parm, ptr %103, i64 0, i32 4
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %121, !prof !117

106:                                              ; preds = %101
  %107 = load ptr, ptr @pairlistnp, align 8, !tbaa !90
  %108 = load ptr, ptr @upairsnp, align 8, !tbaa !90
  %109 = load ptr, ptr @lpairsnp, align 8, !tbaa !90
  br label %110

110:                                              ; preds = %106, %110
  %111 = phi i64 [ 0, %106 ], [ %115, %110 ]
  %112 = getelementptr inbounds ptr, ptr %107, i64 %111
  store ptr null, ptr %112, align 8, !tbaa !90
  %113 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 0, ptr %113, align 4, !tbaa !81
  %114 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 0, ptr %114, align 4, !tbaa !81
  %115 = add nuw nsw i64 %111, 1
  %116 = load i32, ptr %104, align 8, !tbaa !108
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %110, label %119, !prof !118, !llvm.loop !119

119:                                              ; preds = %110
  %120 = trunc i64 %115 to i32
  br label %121

121:                                              ; preds = %119, %101
  %122 = phi i32 [ %102, %101 ], [ %116, %119 ]
  %123 = phi i32 [ 0, %101 ], [ %120, %119 ]
  store i32 %123, ptr %6, align 4, !tbaa !81
  %124 = load ptr, ptr @pairlist2np, align 8, !tbaa !90
  %125 = icmp eq ptr %124, null
  br i1 %125, label %148, label %126, !prof !112

126:                                              ; preds = %121
  %127 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142, !prof !113

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %126 ]
  %131 = load ptr, ptr @pairlist2np, align 8, !tbaa !90
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %133, i32 noundef 0, i32 noundef 1) #29
  %134 = add nuw nsw i64 %130, 1
  %135 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %129, label %138, !prof !114, !llvm.loop !120

138:                                              ; preds = %129
  %139 = trunc i64 %134 to i32
  %140 = load ptr, ptr @pairlist2np, align 8, !tbaa !90
  %141 = load ptr, ptr @prm, align 8, !tbaa !90
  br label %142

142:                                              ; preds = %138, %126
  %143 = phi ptr [ %103, %126 ], [ %141, %138 ]
  %144 = phi ptr [ %124, %126 ], [ %140, %138 ]
  %145 = phi i32 [ 0, %126 ], [ %139, %138 ]
  store i32 %145, ptr %6, align 4, !tbaa !81
  tail call void @free(ptr noundef %144) #29
  %146 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !108
  br label %148

148:                                              ; preds = %142, %121
  %149 = phi i32 [ %147, %142 ], [ %122, %121 ]
  %150 = load ptr, ptr @upairs2np, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %150, i32 noundef 0, i32 noundef %149) #29
  %151 = load ptr, ptr @lpairs2np, align 8, !tbaa !90
  %152 = load ptr, ptr @prm, align 8, !tbaa !90
  %153 = getelementptr inbounds %struct.parm, ptr %152, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %151, i32 noundef 0, i32 noundef %154) #29
  %155 = load ptr, ptr @prm, align 8, !tbaa !90
  %156 = getelementptr inbounds %struct.parm, ptr %155, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !108
  %158 = tail call ptr @ivector(i32 noundef 0, i32 noundef %157) #29
  store ptr %158, ptr @upairs2np, align 8, !tbaa !90
  %159 = load ptr, ptr @prm, align 8, !tbaa !90
  %160 = getelementptr inbounds %struct.parm, ptr %159, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !108
  %162 = tail call ptr @ivector(i32 noundef 0, i32 noundef %161) #29
  store ptr %162, ptr @lpairs2np, align 8, !tbaa !90
  %163 = load ptr, ptr @prm, align 8, !tbaa !90
  %164 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !108
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 3
  %168 = tail call noalias ptr @malloc(i64 noundef %167) #30
  store ptr %168, ptr @pairlist2np, align 8, !tbaa !90
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %179, !prof !116

170:                                              ; preds = %148
  %171 = load ptr, ptr @nabout, align 8, !tbaa !90
  %172 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 48, i64 1, ptr %171)
  %173 = load ptr, ptr @nabout, align 8, !tbaa !90
  %174 = tail call i32 @fflush(ptr noundef %173) #25
  %175 = tail call i32 @mpierror(i32 noundef -1) #25
  %176 = load ptr, ptr @prm, align 8, !tbaa !90
  %177 = getelementptr inbounds %struct.parm, ptr %176, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !108
  br label %179

179:                                              ; preds = %170, %148
  %180 = phi i32 [ %178, %170 ], [ %165, %148 ]
  %181 = phi ptr [ %176, %170 ], [ %163, %148 ]
  %182 = getelementptr inbounds %struct.parm, ptr %181, i64 0, i32 4
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %184, label %197, !prof !117

184:                                              ; preds = %179
  %185 = load ptr, ptr @pairlist2np, align 8, !tbaa !90
  %186 = load ptr, ptr @upairs2np, align 8, !tbaa !90
  %187 = load ptr, ptr @lpairs2np, align 8, !tbaa !90
  br label %188

188:                                              ; preds = %184, %188
  %189 = phi i64 [ 0, %184 ], [ %193, %188 ]
  %190 = getelementptr inbounds ptr, ptr %185, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !90
  %191 = getelementptr inbounds i32, ptr %186, i64 %189
  store i32 0, ptr %191, align 4, !tbaa !81
  %192 = getelementptr inbounds i32, ptr %187, i64 %189
  store i32 0, ptr %192, align 4, !tbaa !81
  %193 = add nuw nsw i64 %189, 1
  %194 = load i32, ptr %182, align 8, !tbaa !108
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %188, label %197, !prof !118, !llvm.loop !121

197:                                              ; preds = %188, %179
  %198 = phi i32 [ %180, %179 ], [ %194, %188 ]
  %199 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %200 = icmp eq ptr %199, null
  br i1 %200, label %223, label %201, !prof !112

201:                                              ; preds = %197
  %202 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %217, !prof !113

204:                                              ; preds = %201, %204
  %205 = phi i64 [ %209, %204 ], [ 0, %201 ]
  %206 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %207 = getelementptr inbounds ptr, ptr %206, i64 %205
  %208 = load ptr, ptr %207, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %208, i32 noundef 0, i32 noundef 1) #29
  %209 = add nuw nsw i64 %205, 1
  %210 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %204, label %213, !prof !114, !llvm.loop !122

213:                                              ; preds = %204
  %214 = trunc i64 %209 to i32
  %215 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %216 = load ptr, ptr @prm, align 8, !tbaa !90
  br label %217

217:                                              ; preds = %213, %201
  %218 = phi ptr [ %181, %201 ], [ %216, %213 ]
  %219 = phi ptr [ %199, %201 ], [ %215, %213 ]
  %220 = phi i32 [ 0, %201 ], [ %214, %213 ]
  store i32 %220, ptr %6, align 4, !tbaa !81
  tail call void @free(ptr noundef %219) #29
  %221 = getelementptr inbounds %struct.parm, ptr %218, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !108
  br label %223

223:                                              ; preds = %217, %197
  %224 = phi i32 [ %222, %217 ], [ %198, %197 ]
  store i32 -1, ptr @nb_pairs, align 4, !tbaa !81
  %225 = load ptr, ptr @upairs, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %225, i32 noundef 0, i32 noundef %224) #29
  %226 = load ptr, ptr @lpairs, align 8, !tbaa !90
  %227 = load ptr, ptr @prm, align 8, !tbaa !90
  %228 = getelementptr inbounds %struct.parm, ptr %227, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !108
  tail call void @free_ivector(ptr noundef %226, i32 noundef 0, i32 noundef %229) #29
  %230 = load ptr, ptr @prm, align 8, !tbaa !90
  %231 = getelementptr inbounds %struct.parm, ptr %230, i64 0, i32 4
  %232 = load i32, ptr %231, align 8, !tbaa !108
  %233 = tail call ptr @ivector(i32 noundef 0, i32 noundef %232) #29
  store ptr %233, ptr @upairs, align 8, !tbaa !90
  %234 = load ptr, ptr @prm, align 8, !tbaa !90
  %235 = getelementptr inbounds %struct.parm, ptr %234, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !108
  %237 = tail call ptr @ivector(i32 noundef 0, i32 noundef %236) #29
  store ptr %237, ptr @lpairs, align 8, !tbaa !90
  %238 = load ptr, ptr @prm, align 8, !tbaa !90
  %239 = getelementptr inbounds %struct.parm, ptr %238, i64 0, i32 4
  %240 = load i32, ptr %239, align 8, !tbaa !108
  %241 = sext i32 %240 to i64
  %242 = shl nsw i64 %241, 3
  %243 = tail call noalias ptr @malloc(i64 noundef %242) #30
  store ptr %243, ptr @pairlist, align 8, !tbaa !90
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %254, !prof !116

245:                                              ; preds = %223
  %246 = load ptr, ptr @nabout, align 8, !tbaa !90
  %247 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 45, i64 1, ptr %246)
  %248 = load ptr, ptr @nabout, align 8, !tbaa !90
  %249 = tail call i32 @fflush(ptr noundef %248) #25
  %250 = tail call i32 @mpierror(i32 noundef -1) #25
  %251 = load ptr, ptr @prm, align 8, !tbaa !90
  %252 = getelementptr inbounds %struct.parm, ptr %251, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !108
  br label %254

254:                                              ; preds = %245, %223
  %255 = phi i32 [ %253, %245 ], [ %240, %223 ]
  %256 = phi ptr [ %251, %245 ], [ %238, %223 ]
  %257 = getelementptr inbounds %struct.parm, ptr %256, i64 0, i32 4
  %258 = icmp sgt i32 %255, 0
  br i1 %258, label %259, label %272, !prof !117

259:                                              ; preds = %254
  %260 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %261 = load ptr, ptr @upairs, align 8, !tbaa !90
  %262 = load ptr, ptr @lpairs, align 8, !tbaa !90
  br label %263

263:                                              ; preds = %259, %263
  %264 = phi i64 [ 0, %259 ], [ %268, %263 ]
  %265 = getelementptr inbounds ptr, ptr %260, i64 %264
  store ptr null, ptr %265, align 8, !tbaa !90
  %266 = getelementptr inbounds i32, ptr %261, i64 %264
  store i32 0, ptr %266, align 4, !tbaa !81
  %267 = getelementptr inbounds i32, ptr %262, i64 %264
  store i32 0, ptr %267, align 4, !tbaa !81
  %268 = add nuw nsw i64 %264, 1
  %269 = load i32, ptr %257, align 8, !tbaa !108
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %263, label %272, !prof !118, !llvm.loop !123

272:                                              ; preds = %263, %254
  %273 = load ptr, ptr @frozen, align 8, !tbaa !90
  %274 = tail call i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr noundef %273) #29
  store i32 %274, ptr @nfrozen, align 4, !tbaa !81
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276, !prof !124

276:                                              ; preds = %272
  %277 = load ptr, ptr @nabout, align 8, !tbaa !90
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.57, i32 noundef %274, ptr noundef %1) #25
  br label %279

279:                                              ; preds = %276, %272
  %280 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  %281 = icmp eq ptr %280, null
  br i1 %281, label %300, label %282, !prof !112

282:                                              ; preds = %279
  %283 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %297, !prof !113

285:                                              ; preds = %282, %285
  %286 = phi i64 [ %290, %285 ], [ 0, %282 ]
  %287 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  %288 = getelementptr inbounds ptr, ptr %287, i64 %286
  %289 = load ptr, ptr %288, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %289, i32 noundef 0, i32 noundef 1) #29
  %290 = add nuw nsw i64 %286, 1
  %291 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %285, label %294, !prof !114, !llvm.loop !125

294:                                              ; preds = %285
  %295 = trunc i64 %290 to i32
  %296 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  br label %297

297:                                              ; preds = %294, %282
  %298 = phi ptr [ %280, %282 ], [ %296, %294 ]
  %299 = phi i32 [ 0, %282 ], [ %295, %294 ]
  store i32 %299, ptr %6, align 4, !tbaa !81
  tail call void @free(ptr noundef %298) #29
  br label %300

300:                                              ; preds = %297, %279
  %301 = load ptr, ptr @prm, align 8, !tbaa !90
  %302 = getelementptr inbounds %struct.parm, ptr %301, i64 0, i32 4
  %303 = load i32, ptr %302, align 8, !tbaa !108
  %304 = sext i32 %303 to i64
  %305 = shl nsw i64 %304, 3
  %306 = tail call noalias ptr @malloc(i64 noundef %305) #30
  store ptr %306, ptr @N14pearlist, align 8, !tbaa !90
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %317, !prof !116

308:                                              ; preds = %300
  %309 = load ptr, ptr @nabout, align 8, !tbaa !90
  %310 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 48, i64 1, ptr %309)
  %311 = load ptr, ptr @nabout, align 8, !tbaa !90
  %312 = tail call i32 @fflush(ptr noundef %311) #25
  %313 = tail call i32 @mpierror(i32 noundef -1) #25
  %314 = load ptr, ptr @prm, align 8, !tbaa !90
  %315 = getelementptr inbounds %struct.parm, ptr %314, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !108
  br label %317

317:                                              ; preds = %308, %300
  %318 = phi i32 [ %316, %308 ], [ %303, %300 ]
  %319 = phi ptr [ %314, %308 ], [ %301, %300 ]
  %320 = icmp sgt i32 %318, 0
  br i1 %320, label %321, label %370, !prof !117

321:                                              ; preds = %317
  %322 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  br label %323

323:                                              ; preds = %321, %361
  %324 = phi ptr [ %319, %321 ], [ %362, %361 ]
  %325 = phi ptr [ %322, %321 ], [ %363, %361 ]
  %326 = phi i64 [ 0, %321 ], [ %365, %361 ]
  %327 = phi i32 [ 0, %321 ], [ %364, %361 ]
  %328 = getelementptr inbounds ptr, ptr %325, i64 %326
  store ptr null, ptr %328, align 8, !tbaa !90
  %329 = getelementptr inbounds %struct.parm, ptr %324, i64 0, i32 91
  %330 = load ptr, ptr %329, align 8, !tbaa !126
  %331 = getelementptr inbounds i32, ptr %330, i64 %326
  %332 = load i32, ptr %331, align 4, !tbaa !81
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %361, !prof !127

334:                                              ; preds = %323
  %335 = tail call ptr @ivector(i32 noundef 0, i32 noundef %332) #29
  %336 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  %337 = getelementptr inbounds ptr, ptr %336, i64 %326
  store ptr %335, ptr %337, align 8, !tbaa !90
  %338 = load ptr, ptr @prm, align 8, !tbaa !90
  %339 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 91
  %340 = load ptr, ptr %339, align 8, !tbaa !126
  %341 = getelementptr inbounds i32, ptr %340, i64 %326
  %342 = load i32, ptr %341, align 4, !tbaa !81
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %358, !prof !128

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 92
  %346 = load ptr, ptr %345, align 8, !tbaa !129
  %347 = sext i32 %327 to i64
  %348 = getelementptr i32, ptr %346, i64 %347
  br label %349

349:                                              ; preds = %344, %349
  %350 = phi i64 [ 0, %344 ], [ %354, %349 ]
  %351 = getelementptr i32, ptr %348, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !81
  %353 = getelementptr inbounds i32, ptr %335, i64 %350
  store i32 %352, ptr %353, align 4, !tbaa !81
  %354 = add nuw nsw i64 %350, 1
  %355 = load i32, ptr %341, align 4, !tbaa !81
  %356 = sext i32 %355 to i64
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %349, label %358, !prof !130, !llvm.loop !131

358:                                              ; preds = %349, %334
  %359 = phi i32 [ %342, %334 ], [ %355, %349 ]
  %360 = add nsw i32 %359, %327
  br label %361

361:                                              ; preds = %323, %358
  %362 = phi ptr [ %338, %358 ], [ %324, %323 ]
  %363 = phi ptr [ %336, %358 ], [ %325, %323 ]
  %364 = phi i32 [ %360, %358 ], [ %327, %323 ]
  %365 = add nuw nsw i64 %326, 1
  %366 = getelementptr inbounds %struct.parm, ptr %362, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !108
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %365, %368
  br i1 %369, label %323, label %370, !prof !118, !llvm.loop !132

370:                                              ; preds = %361, %317
  %371 = phi ptr [ %319, %317 ], [ %362, %361 ]
  %372 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %373 = icmp eq ptr %372, null
  br i1 %373, label %394, label %374, !prof !112

374:                                              ; preds = %370
  %375 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %390, !prof !113

377:                                              ; preds = %374, %377
  %378 = phi i64 [ %382, %377 ], [ 0, %374 ]
  %379 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %380 = getelementptr inbounds ptr, ptr %379, i64 %378
  %381 = load ptr, ptr %380, align 8, !tbaa !90
  tail call void @free_ivector(ptr noundef %381, i32 noundef 0, i32 noundef 1) #29
  %382 = add nuw nsw i64 %378, 1
  %383 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %384 = sext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %377, label %386, !prof !114, !llvm.loop !133

386:                                              ; preds = %377
  %387 = trunc i64 %382 to i32
  %388 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %389 = load ptr, ptr @prm, align 8, !tbaa !90
  br label %390

390:                                              ; preds = %386, %374
  %391 = phi ptr [ %371, %374 ], [ %389, %386 ]
  %392 = phi ptr [ %372, %374 ], [ %388, %386 ]
  %393 = phi i32 [ 0, %374 ], [ %387, %386 ]
  store i32 %393, ptr %6, align 4, !tbaa !81
  tail call void @free(ptr noundef %392) #29
  br label %394

394:                                              ; preds = %390, %370
  %395 = phi ptr [ %391, %390 ], [ %371, %370 ]
  %396 = getelementptr inbounds %struct.parm, ptr %395, i64 0, i32 4
  %397 = load i32, ptr %396, align 8, !tbaa !108
  %398 = sext i32 %397 to i64
  %399 = shl nsw i64 %398, 3
  %400 = tail call noalias ptr @malloc(i64 noundef %399) #30
  store ptr %400, ptr @IexclAt, align 8, !tbaa !90
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %411, !prof !116

402:                                              ; preds = %394
  %403 = load ptr, ptr @nabout, align 8, !tbaa !90
  %404 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %403)
  %405 = load ptr, ptr @nabout, align 8, !tbaa !90
  %406 = tail call i32 @fflush(ptr noundef %405) #25
  %407 = tail call i32 @mpierror(i32 noundef -1) #25
  %408 = load ptr, ptr @prm, align 8, !tbaa !90
  %409 = getelementptr inbounds %struct.parm, ptr %408, i64 0, i32 4
  %410 = load i32, ptr %409, align 8, !tbaa !108
  br label %411

411:                                              ; preds = %402, %394
  %412 = phi i32 [ %410, %402 ], [ %397, %394 ]
  %413 = phi ptr [ %408, %402 ], [ %395, %394 ]
  %414 = icmp sgt i32 %412, 0
  br i1 %414, label %415, label %462, !prof !117

415:                                              ; preds = %411
  %416 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  br label %417

417:                                              ; preds = %415, %452
  %418 = phi ptr [ %413, %415 ], [ %453, %452 ]
  %419 = phi ptr [ %416, %415 ], [ %455, %452 ]
  %420 = phi i64 [ 0, %415 ], [ %457, %452 ]
  %421 = phi i32 [ 0, %415 ], [ %456, %452 ]
  %422 = getelementptr inbounds ptr, ptr %419, i64 %420
  store ptr null, ptr %422, align 8, !tbaa !90
  %423 = getelementptr inbounds %struct.parm, ptr %418, i64 0, i32 60
  %424 = load ptr, ptr %423, align 8, !tbaa !134
  %425 = getelementptr inbounds i32, ptr %424, i64 %420
  %426 = load i32, ptr %425, align 4, !tbaa !81
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %452, !prof !135

428:                                              ; preds = %417
  %429 = tail call ptr @ivector(i32 noundef 0, i32 noundef %426) #29
  %430 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %431 = getelementptr inbounds ptr, ptr %430, i64 %420
  store ptr %429, ptr %431, align 8, !tbaa !90
  %432 = load ptr, ptr @prm, align 8, !tbaa !90
  %433 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 60
  %434 = load ptr, ptr %433, align 8, !tbaa !134
  %435 = getelementptr inbounds i32, ptr %434, i64 %420
  %436 = load i32, ptr %435, align 4, !tbaa !81
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %452, !prof !136

438:                                              ; preds = %428
  %439 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 63
  %440 = load ptr, ptr %439, align 8, !tbaa !137
  %441 = sext i32 %421 to i64
  %442 = getelementptr i32, ptr %440, i64 %441
  br label %443

443:                                              ; preds = %438, %443
  %444 = phi i64 [ 0, %438 ], [ %448, %443 ]
  %445 = getelementptr i32, ptr %442, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !81
  %447 = getelementptr inbounds i32, ptr %429, i64 %444
  store i32 %446, ptr %447, align 4, !tbaa !81
  %448 = add nuw nsw i64 %444, 1
  %449 = load i32, ptr %435, align 4, !tbaa !81
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %443, label %452, !prof !138, !llvm.loop !139

452:                                              ; preds = %443, %428, %417
  %453 = phi ptr [ %432, %428 ], [ %418, %417 ], [ %432, %443 ]
  %454 = phi i32 [ %436, %428 ], [ %426, %417 ], [ %449, %443 ]
  %455 = phi ptr [ %430, %428 ], [ %419, %417 ], [ %430, %443 ]
  %456 = add nsw i32 %454, %421
  %457 = add nuw nsw i64 %420, 1
  %458 = getelementptr inbounds %struct.parm, ptr %453, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !108
  %460 = sext i32 %459 to i64
  %461 = icmp slt i64 %457, %460
  br i1 %461, label %417, label %462, !prof !118, !llvm.loop !140

462:                                              ; preds = %452, %411
  %463 = phi ptr [ %413, %411 ], [ %453, %452 ]
  %464 = phi i32 [ %412, %411 ], [ %459, %452 ]
  store double 0.000000e+00, ptr @tdiagd, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tdiag, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tlevel, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tnewton, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tcholesky, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tdgeev, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tmmetwo, align 8, !tbaa !93
  store double 0.000000e+00, ptr @tmmeone, align 8, !tbaa !93
  store i32 -3, ptr %6, align 4, !tbaa !81
  %465 = load i32, ptr @mme_init.nold, align 4, !tbaa !81
  %466 = icmp sgt i32 %464, %465
  br i1 %466, label %467, label %470, !prof !112

467:                                              ; preds = %462
  %468 = call fastcc double @mme34(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %6) #25
  %469 = load ptr, ptr @prm, align 8, !tbaa !90
  br label %470

470:                                              ; preds = %467, %462
  %471 = phi ptr [ %469, %467 ], [ %463, %462 ]
  %472 = getelementptr inbounds %struct.parm, ptr %471, i64 0, i32 4
  %473 = load i32, ptr %472, align 8, !tbaa !108
  store i32 %473, ptr @mme_init.nold, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  ret i32 0
}

; Function Attrs: optsize
declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @writebinposhdr(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @set_cons_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @set_belly_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @mme34(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !prof !141 !PGOFuncName !142 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #26
  %11 = load ptr, ptr @prm, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !108
  %14 = sext i32 %13 to i64
  %15 = load i32, ptr %2, align 4, !tbaa !81
  switch i32 %15, label %42 [
    i32 -3, label %16
    i32 0, label %34
  ], !prof !143

16:                                               ; preds = %3
  %17 = load ptr, ptr @lpairs, align 8, !tbaa !90
  %18 = load ptr, ptr @upairs, align 8, !tbaa !90
  %19 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %20 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 52
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 51
  %24 = load ptr, ptr %23, align 8, !tbaa !145
  %25 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !146
  %27 = call fastcc double @egb(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %0, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #25
  %28 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %29 = icmp eq ptr %28, null
  br i1 %29, label %357, label %30, !prof !147

30:                                               ; preds = %16
  %31 = load i1, ptr @dim, align 4
  %32 = select i1 %31, i64 4, i64 3
  %33 = mul nsw i64 %32, %14
  tail call void @free_vector(ptr noundef nonnull %28, i64 noundef 0, i64 noundef %33) #29
  store ptr null, ptr @mme34.grad, align 8, !tbaa !90
  br label %357

34:                                               ; preds = %3
  %35 = load ptr, ptr @nabout, align 8, !tbaa !90
  %36 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 20, i64 1, ptr %35)
  %37 = load ptr, ptr @nabout, align 8, !tbaa !90
  %38 = tail call i32 @fflush(ptr noundef %37) #25
  %39 = load i32, ptr %2, align 4, !tbaa !81
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !148

41:                                               ; preds = %34
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !93
  br label %42

42:                                               ; preds = %3, %41, %34
  %43 = phi i32 [ 0, %41 ], [ %39, %34 ], [ %15, %3 ]
  %44 = load ptr, ptr @chknm, align 8, !tbaa !90
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46, !prof !149

46:                                               ; preds = %42
  %47 = icmp sgt i32 %43, 0
  %48 = urem i32 %43, 10000
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr @prm, align 8, !tbaa !90
  %53 = getelementptr inbounds %struct.parm, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !108
  tail call void @checkpoint(ptr noundef nonnull %44, i32 noundef %54, ptr noundef %0, i32 noundef %43) #25
  br label %55

55:                                               ; preds = %51, %46, %42
  %56 = load i32, ptr @nb_pairs, align 4, !tbaa !81
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58, !prof !150

58:                                               ; preds = %55
  %59 = load i32, ptr %2, align 4, !tbaa !81
  %60 = icmp sgt i32 %59, 0
  %61 = urem i32 %59, 10
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %60, %62
  br i1 %63, label %64, label %75, !prof !151

64:                                               ; preds = %58, %55
  %65 = load ptr, ptr @lpairs, align 8, !tbaa !90
  %66 = load ptr, ptr @upairs, align 8, !tbaa !90
  %67 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %68 = load ptr, ptr @prm, align 8, !tbaa !90
  %69 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !108
  %71 = load i1, ptr @dim, align 4
  %72 = select i1 %71, i32 4, i32 3
  %73 = load ptr, ptr @frozen, align 8, !tbaa !90
  %74 = tail call i32 @nblist(ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %0, i32 noundef 0, i32 noundef 1, double noundef 2.000000e+01, i32 noundef %70, i32 noundef %72, ptr noundef %73) #29
  store i32 %74, ptr @nb_pairs, align 4, !tbaa !81
  br label %75

75:                                               ; preds = %64, %58
  %76 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83, !prof !150

78:                                               ; preds = %75
  %79 = load i1, ptr @dim, align 4
  %80 = select i1 %79, i64 4, i64 3
  %81 = mul nsw i64 %80, %14
  %82 = tail call ptr @vector(i64 noundef 0, i64 noundef %81) #29
  store ptr %82, ptr @mme34.grad, align 8, !tbaa !90
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi ptr [ %82, %78 ], [ %76, %75 ]
  %85 = load i1, ptr @dim, align 4
  %86 = select i1 %85, i32 4, i32 3
  %87 = load ptr, ptr @prm, align 8, !tbaa !90
  %88 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !108
  %90 = mul nsw i32 %89, %86
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95, !prof !152

92:                                               ; preds = %83
  %93 = zext nneg i32 %90 to i64
  %94 = shl nuw nsw i64 %93, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %84, i8 0, i64 %94, i1 false), !tbaa !93
  br label %95

95:                                               ; preds = %92, %83
  %96 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !153
  %98 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 66
  %99 = load ptr, ptr %98, align 8, !tbaa !154
  %100 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 67
  %101 = load ptr, ptr %100, align 8, !tbaa !155
  %102 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 68
  %103 = load ptr, ptr %102, align 8, !tbaa !156
  %104 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 39
  %105 = load ptr, ptr %104, align 8, !tbaa !157
  %106 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 40
  %107 = load ptr, ptr %106, align 8, !tbaa !158
  %108 = tail call fastcc double @ebond(i32 noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105, ptr noundef %107, ptr noundef %0, ptr noundef %84) #25
  %109 = load ptr, ptr @prm, align 8, !tbaa !90
  %110 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 7
  %111 = load i32, ptr %110, align 4, !tbaa !159
  %112 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 69
  %113 = load ptr, ptr %112, align 8, !tbaa !160
  %114 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 70
  %115 = load ptr, ptr %114, align 8, !tbaa !161
  %116 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 71
  %117 = load ptr, ptr %116, align 8, !tbaa !162
  %118 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 39
  %119 = load ptr, ptr %118, align 8, !tbaa !157
  %120 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 40
  %121 = load ptr, ptr %120, align 8, !tbaa !158
  %122 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %123 = tail call fastcc double @ebond(i32 noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %0, ptr noundef %122) #25
  %124 = fadd double %108, %123
  %125 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 3
  store double %124, ptr %125, align 8, !tbaa !93
  %126 = load ptr, ptr @prm, align 8, !tbaa !90
  %127 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 8
  %128 = load i32, ptr %127, align 8, !tbaa !163
  %129 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 72
  %130 = load ptr, ptr %129, align 8, !tbaa !164
  %131 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 73
  %132 = load ptr, ptr %131, align 8, !tbaa !165
  %133 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 74
  %134 = load ptr, ptr %133, align 8, !tbaa !166
  %135 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 75
  %136 = load ptr, ptr %135, align 8, !tbaa !167
  %137 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 41
  %138 = load ptr, ptr %137, align 8, !tbaa !168
  %139 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 42
  %140 = load ptr, ptr %139, align 8, !tbaa !169
  %141 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %142 = tail call fastcc double @eangl(i32 noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %134, ptr noundef %136, ptr noundef %138, ptr noundef %140, ptr noundef %0, ptr noundef %141) #25
  %143 = load ptr, ptr @prm, align 8, !tbaa !90
  %144 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 17
  %145 = load i32, ptr %144, align 4, !tbaa !170
  %146 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 76
  %147 = load ptr, ptr %146, align 8, !tbaa !171
  %148 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 77
  %149 = load ptr, ptr %148, align 8, !tbaa !172
  %150 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 78
  %151 = load ptr, ptr %150, align 8, !tbaa !173
  %152 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 79
  %153 = load ptr, ptr %152, align 8, !tbaa !174
  %154 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 41
  %155 = load ptr, ptr %154, align 8, !tbaa !168
  %156 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 42
  %157 = load ptr, ptr %156, align 8, !tbaa !169
  %158 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %159 = tail call fastcc double @eangl(i32 noundef %145, ptr noundef %147, ptr noundef %149, ptr noundef %151, ptr noundef %153, ptr noundef %155, ptr noundef %157, ptr noundef %0, ptr noundef %158) #25
  %160 = fadd double %142, %159
  %161 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 4
  store double %160, ptr %161, align 16, !tbaa !93
  %162 = load ptr, ptr @prm, align 8, !tbaa !90
  %163 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 10
  %164 = load i32, ptr %163, align 8, !tbaa !175
  %165 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 80
  %166 = load ptr, ptr %165, align 8, !tbaa !176
  %167 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 81
  %168 = load ptr, ptr %167, align 8, !tbaa !177
  %169 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 82
  %170 = load ptr, ptr %169, align 8, !tbaa !178
  %171 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 83
  %172 = load ptr, ptr %171, align 8, !tbaa !179
  %173 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 84
  %174 = load ptr, ptr %173, align 8, !tbaa !180
  %175 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 43
  %176 = load ptr, ptr %175, align 8, !tbaa !181
  %177 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 44
  %178 = load ptr, ptr %177, align 8, !tbaa !182
  %179 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 45
  %180 = load ptr, ptr %179, align 8, !tbaa !183
  %181 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %182 = tail call fastcc double @ephi(i32 noundef %164, ptr noundef %166, ptr noundef %168, ptr noundef %170, ptr noundef %172, ptr noundef %174, ptr noundef %176, ptr noundef %178, ptr noundef %180, ptr noundef %0, ptr noundef %181) #25
  %183 = load ptr, ptr @prm, align 8, !tbaa !90
  %184 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 11
  %185 = load i32, ptr %184, align 4, !tbaa !184
  %186 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 85
  %187 = load ptr, ptr %186, align 8, !tbaa !185
  %188 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 86
  %189 = load ptr, ptr %188, align 8, !tbaa !186
  %190 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 87
  %191 = load ptr, ptr %190, align 8, !tbaa !187
  %192 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 88
  %193 = load ptr, ptr %192, align 8, !tbaa !188
  %194 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 89
  %195 = load ptr, ptr %194, align 8, !tbaa !189
  %196 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 43
  %197 = load ptr, ptr %196, align 8, !tbaa !181
  %198 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 44
  %199 = load ptr, ptr %198, align 8, !tbaa !182
  %200 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 45
  %201 = load ptr, ptr %200, align 8, !tbaa !183
  %202 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %203 = tail call fastcc double @ephi(i32 noundef %185, ptr noundef %187, ptr noundef %189, ptr noundef %191, ptr noundef %193, ptr noundef %195, ptr noundef %197, ptr noundef %199, ptr noundef %201, ptr noundef %0, ptr noundef %202) #25
  %204 = fadd double %182, %203
  %205 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 5
  store double %204, ptr %205, align 8, !tbaa !93
  %206 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 6
  store double 0.000000e+00, ptr %206, align 16, !tbaa !93
  %207 = load ptr, ptr @lpairs, align 8, !tbaa !90
  %208 = load ptr, ptr @prm, align 8, !tbaa !90
  %209 = getelementptr inbounds %struct.parm, ptr %208, i64 0, i32 91
  %210 = load ptr, ptr %209, align 8, !tbaa !126
  %211 = load ptr, ptr @N14pearlist, align 8, !tbaa !90
  %212 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  call fastcc void @nbond(ptr noundef %207, ptr noundef %210, ptr noundef %211, i32 noundef 1, ptr noundef %0, ptr noundef %212, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef 2.000000e+00, double noundef 1.200000e+00) #25
  %213 = load double, ptr %6, align 8, !tbaa !93
  %214 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 7
  store double %213, ptr %214, align 8, !tbaa !93
  %215 = load double, ptr %7, align 8, !tbaa !93
  %216 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 8
  store double %215, ptr %216, align 16, !tbaa !93
  %217 = load i32, ptr @nconstrained, align 4, !tbaa !81
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219, !prof !149

219:                                              ; preds = %95
  %220 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %221 = tail call fastcc double @econs(ptr noundef %0, ptr noundef %220) #25
  br label %222

222:                                              ; preds = %95, %219
  %223 = phi double [ %221, %219 ], [ 0.000000e+00, %95 ]
  %224 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 9
  store double %223, ptr %224, align 8, !tbaa !93
  %225 = load i32, ptr @gb, align 4, !tbaa !81
  %226 = icmp eq i32 %225, 0
  %227 = load ptr, ptr @lpairs, align 8, !tbaa !90
  %228 = load ptr, ptr @upairs, align 8, !tbaa !90
  %229 = load ptr, ptr @pairlist, align 8, !tbaa !90
  %230 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  br i1 %226, label %242, label %231, !prof !190

231:                                              ; preds = %222
  %232 = load ptr, ptr @prm, align 8, !tbaa !90
  %233 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 52
  %234 = load ptr, ptr %233, align 8, !tbaa !144
  %235 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 51
  %236 = load ptr, ptr %235, align 8, !tbaa !145
  %237 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 37
  %238 = load ptr, ptr %237, align 8, !tbaa !146
  %239 = call fastcc double @egb(ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %0, ptr noundef %230, ptr noundef %234, ptr noundef %236, ptr noundef %238, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #25
  %240 = load double, ptr %8, align 8, !tbaa !93
  %241 = load double, ptr %9, align 8, !tbaa !93
  br label %243

242:                                              ; preds = %222
  call fastcc void @nbond(ptr noundef %227, ptr noundef %228, ptr noundef %229, i32 noundef 0, ptr noundef %0, ptr noundef %230, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00) #25
  br label %243

243:                                              ; preds = %242, %231
  %244 = phi double [ 0.000000e+00, %242 ], [ %239, %231 ]
  %245 = phi double [ 0.000000e+00, %242 ], [ %240, %231 ]
  %246 = phi double [ 0.000000e+00, %242 ], [ %241, %231 ]
  %247 = load double, ptr %5, align 8, !tbaa !93
  %248 = load double, ptr %4, align 8, !tbaa !93
  %249 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  store double %248, ptr %249, align 8
  %250 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  store double %247, ptr %250, align 16
  %251 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  store double %244, ptr %251, align 16
  %252 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 11
  store double %245, ptr %252, align 8
  %253 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 12
  store double %246, ptr %253, align 16
  %254 = load i1, ptr @dim, align 4
  %255 = select i1 %254, i32 4, i32 3
  %256 = load ptr, ptr @prm, align 8, !tbaa !90
  %257 = getelementptr inbounds %struct.parm, ptr %256, i64 0, i32 4
  %258 = load i32, ptr %257, align 8, !tbaa !108
  %259 = mul nsw i32 %258, %255
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %264, !prof !152

261:                                              ; preds = %243
  %262 = load ptr, ptr @mme34.grad, align 8, !tbaa !90
  %263 = zext nneg i32 %259 to i64
  br label %269

264:                                              ; preds = %269, %243
  %265 = icmp sgt i32 %258, 0
  br i1 %265, label %266, label %276, !prof !152

266:                                              ; preds = %264
  %267 = load ptr, ptr @frozen, align 8, !tbaa !90
  %268 = zext nneg i32 %258 to i64
  br label %279

269:                                              ; preds = %261, %269
  %270 = phi i64 [ 0, %261 ], [ %274, %269 ]
  %271 = getelementptr inbounds double, ptr %262, i64 %270
  %272 = load double, ptr %271, align 8, !tbaa !93
  %273 = getelementptr inbounds double, ptr %1, i64 %270
  store double %272, ptr %273, align 8, !tbaa !93
  %274 = add nuw nsw i64 %270, 1
  %275 = icmp eq i64 %274, %263
  br i1 %275, label %264, label %269, !prof !191, !llvm.loop !192

276:                                              ; preds = %293, %264
  br i1 %260, label %277, label %304, !prof !152

277:                                              ; preds = %276
  %278 = zext nneg i32 %259 to i64
  br label %296

279:                                              ; preds = %266, %293
  %280 = phi i64 [ 0, %266 ], [ %294, %293 ]
  %281 = getelementptr inbounds i32, ptr %267, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !81
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %293, label %284, !prof !193

284:                                              ; preds = %279
  %285 = zext nneg i32 %255 to i64
  %286 = mul nuw nsw i64 %280, %285
  %287 = getelementptr double, ptr %1, i64 %286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %287, i8 0, i64 24, i1 false)
  br i1 %254, label %288, label %293

288:                                              ; preds = %284
  %289 = shl i64 %280, 2
  %290 = and i64 %289, 4294967292
  %291 = or disjoint i64 %290, 3
  %292 = getelementptr inbounds double, ptr %1, i64 %291
  store double 0.000000e+00, ptr %292, align 8, !tbaa !93
  br label %293

293:                                              ; preds = %279, %288, %284
  %294 = add nuw nsw i64 %280, 1
  %295 = icmp eq i64 %294, %268
  br i1 %295, label %276, label %279, !prof !194, !llvm.loop !195

296:                                              ; preds = %277, %296
  %297 = phi i64 [ 0, %277 ], [ %302, %296 ]
  %298 = phi double [ 0.000000e+00, %277 ], [ %301, %296 ]
  %299 = getelementptr inbounds double, ptr %1, i64 %297
  %300 = load double, ptr %299, align 8, !tbaa !93
  %301 = tail call double @llvm.fmuladd.f64(double %300, double %300, double %298)
  %302 = add nuw nsw i64 %297, 1
  %303 = icmp eq i64 %302, %278
  br i1 %303, label %304, label %296, !prof !191, !llvm.loop !196

304:                                              ; preds = %296, %276
  %305 = phi double [ 0.000000e+00, %276 ], [ %301, %296 ]
  %306 = sitofp i32 %259 to double
  %307 = fdiv double %305, %306
  %308 = tail call double @sqrt(double noundef %307) #29
  br label %309

309:                                              ; preds = %304, %309
  %310 = phi i64 [ 1, %304 ], [ %315, %309 ]
  %311 = phi double [ 0.000000e+00, %304 ], [ %314, %309 ]
  %312 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 %310
  %313 = load double, ptr %312, align 8, !tbaa !93
  %314 = fadd double %313, %311
  %315 = add nuw nsw i64 %310, 1
  %316 = icmp eq i64 %315, 13
  br i1 %316, label %317, label %309, !prof !197, !llvm.loop !198

317:                                              ; preds = %309
  %318 = load i32, ptr %2, align 4, !tbaa !81
  %319 = icmp sgt i32 %318, -1
  br i1 %319, label %320, label %331, !prof !149

320:                                              ; preds = %317
  %321 = icmp eq i32 %318, 0
  %322 = load i32, ptr @max_step, align 4
  %323 = icmp eq i32 %318, %322
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %357, !prof !199

325:                                              ; preds = %320
  %326 = load ptr, ptr @nabout, align 8, !tbaa !90
  %327 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.66, i32 noundef %318, double noundef %314) #25
  %328 = load ptr, ptr @nabout, align 8, !tbaa !90
  %329 = tail call i32 @fflush(ptr noundef %328) #25
  %330 = load i32, ptr %2, align 4, !tbaa !81
  br label %331

331:                                              ; preds = %325, %317
  %332 = phi i32 [ %318, %317 ], [ %330, %325 ]
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %334, label %357, !prof !200

334:                                              ; preds = %331
  %335 = load ptr, ptr @nabout, align 8, !tbaa !90
  %336 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.67, double noundef %124) #25
  %337 = load ptr, ptr @nabout, align 8, !tbaa !90
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.68, double noundef %160) #25
  %339 = load ptr, ptr @nabout, align 8, !tbaa !90
  %340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.69, double noundef %204) #25
  %341 = load ptr, ptr @nabout, align 8, !tbaa !90
  %342 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.70, double noundef %213) #25
  %343 = load ptr, ptr @nabout, align 8, !tbaa !90
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.71, double noundef %215) #25
  %345 = load ptr, ptr @nabout, align 8, !tbaa !90
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.72, double noundef %248) #25
  %347 = load ptr, ptr @nabout, align 8, !tbaa !90
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.73, double noundef %247) #25
  %349 = load ptr, ptr @nabout, align 8, !tbaa !90
  %350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %349, ptr noundef nonnull @.str.74, double noundef %244) #25
  %351 = load ptr, ptr @nabout, align 8, !tbaa !90
  %352 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.75, double noundef %223) #25
  %353 = load ptr, ptr @nabout, align 8, !tbaa !90
  %354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %353, ptr noundef nonnull @.str.76, double noundef %245) #25
  %355 = load ptr, ptr @nabout, align 8, !tbaa !90
  %356 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %355, ptr noundef nonnull @.str.77, double noundef %314) #25
  br label %357

357:                                              ; preds = %320, %334, %331, %30, %16
  %358 = phi double [ 0.000000e+00, %16 ], [ 0.000000e+00, %30 ], [ %314, %331 ], [ %314, %334 ], [ %314, %320 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret double %358
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !201 {
  store i1 false, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme4(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !79 {
  store i1 true, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret double %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @mm_set_checkpoint(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = tail call fastcc ptr @spec_strdup(ptr noundef %2) #25
  store ptr %3, ptr @chknm, align 8, !tbaa !90
  %4 = load ptr, ptr @nabout, align 8, !tbaa !90
  %5 = load ptr, ptr %0, align 8, !tbaa !90
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.60, ptr noundef %5) #25
  %7 = load ptr, ptr @nabout, align 8, !tbaa !90
  %8 = tail call i32 @fflush(ptr noundef %7) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !79 !PGOFuncName !202 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #29
  br label %8

8:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @md(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 !prof !105 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  %10 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr @md.nold, align 4
  %13 = icmp slt i32 %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %26, !prof !203

15:                                               ; preds = %6
  tail call void @free(ptr noundef %10) #29
  %16 = sext i32 %0 to i64
  %17 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 8) #31
  store ptr %17, ptr @md.minv, align 8, !tbaa !90
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26, !prof !204

19:                                               ; preds = %15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !90
  %21 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 34, i64 1, ptr %20) #32
  %22 = load ptr, ptr @stderr, align 8, !tbaa !90
  %23 = tail call i32 @fflush(ptr noundef %22) #25
  %24 = tail call i32 @mpierror(i32 noundef -1) #25
  %25 = load i32, ptr @md.nold, align 4
  br label %26

26:                                               ; preds = %6, %15, %19
  %27 = phi i32 [ %12, %6 ], [ %12, %15 ], [ %25, %19 ]
  %28 = load ptr, ptr @md.xold, align 8, !tbaa !90
  %29 = icmp eq ptr %28, null
  %30 = icmp slt i32 %27, %0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %43, !prof !203

32:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #29
  %33 = sext i32 %0 to i64
  %34 = tail call noalias ptr @calloc(i64 noundef %33, i64 noundef 8) #31
  store ptr %34, ptr @md.xold, align 8, !tbaa !90
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43, !prof !204

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !90
  %38 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %37) #32
  %39 = load ptr, ptr @stderr, align 8, !tbaa !90
  %40 = tail call i32 @fflush(ptr noundef %39) #25
  %41 = tail call i32 @mpierror(i32 noundef -1) #25
  %42 = load i32, ptr @md.nold, align 4
  br label %43

43:                                               ; preds = %36, %32, %26
  %44 = phi i32 [ %42, %36 ], [ %27, %32 ], [ %27, %26 ]
  %45 = load ptr, ptr @md.accel, align 8, !tbaa !90
  %46 = icmp eq ptr %45, null
  %47 = icmp slt i32 %44, %0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %59, !prof !203

49:                                               ; preds = %43
  tail call void @free(ptr noundef %45) #29
  %50 = sext i32 %0 to i64
  %51 = tail call noalias ptr @calloc(i64 noundef %50, i64 noundef 8) #31
  store ptr %51, ptr @md.accel, align 8, !tbaa !90
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %59, !prof !204

53:                                               ; preds = %49
  %54 = load ptr, ptr @stderr, align 8, !tbaa !90
  %55 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 35, i64 1, ptr %54) #32
  %56 = load ptr, ptr @stderr, align 8, !tbaa !90
  %57 = tail call i32 @fflush(ptr noundef %56) #25
  %58 = tail call i32 @mpierror(i32 noundef -1) #25
  br label %59

59:                                               ; preds = %43, %49, %53
  store i32 %0, ptr @md.nold, align 4, !tbaa !81
  %60 = load i32, ptr @nfrozen, align 4, !tbaa !81
  %61 = mul i32 %60, -3
  %62 = add i32 %61, %0
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 0x3F50477081F334C0
  %65 = fmul double %64, 1.000000e+02
  store double 0.000000e+00, ptr %8, align 8, !tbaa !93
  %66 = load ptr, ptr @prm, align 8, !tbaa !90
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %94, !prof !116

68:                                               ; preds = %59
  %69 = icmp sgt i32 %0, 0
  br i1 %69, label %70, label %138, !prof !205

70:                                               ; preds = %68
  %71 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %72 = zext nneg i32 %0 to i64
  %73 = add nuw nsw i64 %72, 1
  %74 = and i64 %73, 4294967294
  %75 = add nsw i64 %72, -1
  %76 = insertelement <2 x i64> poison, i64 %75, i64 0
  %77 = shufflevector <2 x i64> %76, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %78

78:                                               ; preds = %90, %70
  %79 = phi i64 [ 0, %70 ], [ %91, %90 ]
  %80 = phi <2 x i64> [ <i64 0, i64 1>, %70 ], [ %92, %90 ]
  %81 = icmp ule <2 x i64> %80, %77
  %82 = extractelement <2 x i1> %81, i64 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds double, ptr %71, i64 %79
  store double 1.000000e-01, ptr %84, align 8, !tbaa !93
  br label %85

85:                                               ; preds = %83, %78
  %86 = extractelement <2 x i1> %81, i64 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or disjoint i64 %79, 1
  %89 = getelementptr inbounds double, ptr %71, i64 %88
  store double 1.000000e-01, ptr %89, align 8, !tbaa !93
  br label %90

90:                                               ; preds = %87, %85
  %91 = add i64 %79, 2
  %92 = add <2 x i64> %80, <i64 2, i64 2>
  %93 = icmp eq i64 %91, %74
  br i1 %93, label %96, label %78, !llvm.loop !206

94:                                               ; preds = %59
  %95 = load ptr, ptr @md.minv, align 8, !tbaa !90
  tail call fastcc void @get_masses(ptr noundef %95) #25
  br label %96

96:                                               ; preds = %90, %94
  %97 = icmp sgt i32 %0, 0
  br i1 %97, label %98, label %138, !prof !148

98:                                               ; preds = %96
  %99 = zext nneg i32 %0 to i64
  %100 = load ptr, ptr @frozen, align 8, !tbaa !90
  %101 = load i1, ptr @dim, align 4
  br label %102

102:                                              ; preds = %98, %132
  %103 = phi i1 [ %101, %98 ], [ %133, %132 ]
  %104 = phi ptr [ %100, %98 ], [ %134, %132 ]
  %105 = phi i64 [ 0, %98 ], [ %136, %132 ]
  %106 = phi double [ 0.000000e+00, %98 ], [ %135, %132 ]
  %107 = select i1 %103, i32 4, i32 3
  %108 = trunc i64 %105 to i32
  %109 = udiv i32 %108, %107
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %104, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !81
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !209

114:                                              ; preds = %102
  %115 = getelementptr inbounds double, ptr %4, i64 %105
  store double 0.000000e+00, ptr %115, align 8, !tbaa !93
  br label %132

116:                                              ; preds = %102
  %117 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %118 = getelementptr inbounds double, ptr %117, i64 %105
  %119 = load double, ptr %118, align 8, !tbaa !93
  %120 = fmul double %119, 0x3FB96F9FCB0C026C
  %121 = call double @sqrt(double noundef %120) #29
  store double %121, ptr %7, align 8, !tbaa !93
  %122 = call double @gauss(ptr noundef nonnull %8, ptr noundef nonnull %7) #29
  %123 = getelementptr inbounds double, ptr %4, i64 %105
  store double %122, ptr %123, align 8, !tbaa !93
  %124 = fmul double %122, %122
  %125 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %126 = getelementptr inbounds double, ptr %125, i64 %105
  %127 = load double, ptr %126, align 8, !tbaa !93
  %128 = fdiv double %124, %127
  %129 = fadd double %106, %128
  %130 = load ptr, ptr @frozen, align 8, !tbaa !90
  %131 = load i1, ptr @dim, align 4
  br label %132

132:                                              ; preds = %114, %116
  %133 = phi i1 [ %103, %114 ], [ %131, %116 ]
  %134 = phi ptr [ %104, %114 ], [ %130, %116 ]
  %135 = phi double [ %106, %114 ], [ %129, %116 ]
  %136 = add nuw nsw i64 %105, 1
  %137 = icmp eq i64 %136, %99
  br i1 %137, label %140, label %102, !prof !210, !llvm.loop !211

138:                                              ; preds = %96, %68
  store i32 0, ptr %9, align 4, !tbaa !81
  %139 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br label %158

140:                                              ; preds = %132
  store i32 0, ptr %9, align 4, !tbaa !81
  %141 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br i1 %97, label %142, label %158, !prof !148

142:                                              ; preds = %140
  %143 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %144 = load ptr, ptr @md.accel, align 8, !tbaa !90
  %145 = zext nneg i32 %0 to i64
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %156, %146 ]
  %148 = getelementptr inbounds double, ptr %3, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !93
  %150 = fneg double %149
  %151 = getelementptr inbounds double, ptr %143, i64 %147
  %152 = load double, ptr %151, align 8, !tbaa !93
  %153 = fmul double %152, %150
  %154 = fmul double %153, 0x3F84F227D028A1DF
  %155 = getelementptr inbounds double, ptr %144, i64 %147
  store double %154, ptr %155, align 8, !tbaa !93
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, %145
  br i1 %157, label %158, label %146, !prof !210, !llvm.loop !212

158:                                              ; preds = %146, %138, %140
  %159 = phi double [ 0.000000e+00, %138 ], [ %135, %140 ], [ %135, %146 ]
  %160 = phi i1 [ false, %138 ], [ false, %140 ], [ %97, %146 ]
  store i32 %1, ptr @max_step, align 4, !tbaa !81
  store i32 1, ptr %9, align 4, !tbaa !81
  %161 = icmp slt i32 %1, 1
  br i1 %161, label %252, label %162, !prof !213

162:                                              ; preds = %158
  %163 = zext nneg i32 %0 to i64
  %164 = zext nneg i32 %0 to i64
  %165 = zext nneg i32 %0 to i64
  %166 = zext nneg i32 %0 to i64
  br label %167

167:                                              ; preds = %162, %245
  %168 = phi double [ %159, %162 ], [ %246, %245 ]
  %169 = fmul double %168, 5.000000e-01
  %170 = fcmp ogt double %169, 1.000000e-02
  br i1 %170, label %171, label %176, !prof !214

171:                                              ; preds = %167
  %172 = fdiv double %65, %169
  %173 = fadd double %172, -1.000000e+00
  %174 = call double @llvm.fmuladd.f64(double %173, double 2.500000e-03, double 1.000000e+00)
  %175 = call double @sqrt(double noundef %174) #29
  br label %176

176:                                              ; preds = %167, %171
  %177 = phi double [ %175, %171 ], [ 1.000000e+00, %167 ]
  br i1 %160, label %178, label %207, !prof !215

178:                                              ; preds = %176
  %179 = load ptr, ptr @md.xold, align 8, !tbaa !90
  br label %183

180:                                              ; preds = %183
  br i1 %160, label %181, label %207, !prof !148

181:                                              ; preds = %180
  %182 = load ptr, ptr @md.accel, align 8, !tbaa !90
  br label %190

183:                                              ; preds = %178, %183
  %184 = phi i64 [ 0, %178 ], [ %188, %183 ]
  %185 = getelementptr inbounds double, ptr %2, i64 %184
  %186 = load double, ptr %185, align 8, !tbaa !93
  %187 = getelementptr inbounds double, ptr %179, i64 %184
  store double %186, ptr %187, align 8, !tbaa !93
  %188 = add nuw nsw i64 %184, 1
  %189 = icmp eq i64 %188, %163
  br i1 %189, label %180, label %183, !prof !216, !llvm.loop !217

190:                                              ; preds = %181, %190
  %191 = phi i64 [ 0, %181 ], [ %205, %190 ]
  %192 = getelementptr inbounds double, ptr %4, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !93
  %194 = getelementptr inbounds double, ptr %182, i64 %191
  %195 = load double, ptr %194, align 8, !tbaa !93
  %196 = fadd double %193, %195
  %197 = fmul double %177, %196
  %198 = fcmp ogt double %197, 1.000000e+01
  %199 = select i1 %198, double 1.000000e+01, double %197, !prof !218
  %200 = fcmp olt double %199, -1.000000e+01
  %201 = select i1 %200, double -1.000000e+01, double %199, !prof !219
  store double %201, ptr %192, align 8, !tbaa !93
  %202 = getelementptr inbounds double, ptr %2, i64 %191
  %203 = load double, ptr %202, align 8, !tbaa !93
  %204 = call double @llvm.fmuladd.f64(double %201, double 0x3F94F227D028A1DF, double %203)
  store double %204, ptr %202, align 8, !tbaa !93
  %205 = add nuw nsw i64 %191, 1
  %206 = icmp eq i64 %205, %164
  br i1 %206, label %209, label %190, !prof !216, !llvm.loop !220

207:                                              ; preds = %180, %176
  %208 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br label %245

209:                                              ; preds = %190
  %210 = call double %5(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br i1 %160, label %211, label %245, !prof !148

211:                                              ; preds = %209
  %212 = load ptr, ptr @md.minv, align 8, !tbaa !90
  %213 = load ptr, ptr @md.accel, align 8, !tbaa !90
  br label %217

214:                                              ; preds = %217
  br i1 %160, label %215, label %245, !prof !148

215:                                              ; preds = %214
  %216 = load ptr, ptr @md.minv, align 8, !tbaa !90
  br label %233

217:                                              ; preds = %211, %217
  %218 = phi i64 [ 0, %211 ], [ %231, %217 ]
  %219 = getelementptr inbounds double, ptr %3, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !93
  %221 = fneg double %220
  %222 = getelementptr inbounds double, ptr %212, i64 %218
  %223 = load double, ptr %222, align 8, !tbaa !93
  %224 = fmul double %223, %221
  %225 = fmul double %224, 0x3F84F227D028A1DF
  %226 = getelementptr inbounds double, ptr %213, i64 %218
  store double %225, ptr %226, align 8, !tbaa !93
  %227 = getelementptr inbounds double, ptr %4, i64 %218
  %228 = load double, ptr %227, align 8, !tbaa !93
  %229 = fadd double %225, %228
  %230 = fmul double %177, %229
  store double %230, ptr %227, align 8, !tbaa !93
  %231 = add nuw nsw i64 %218, 1
  %232 = icmp eq i64 %231, %165
  br i1 %232, label %214, label %217, !prof !216, !llvm.loop !221

233:                                              ; preds = %215, %233
  %234 = phi i64 [ 0, %215 ], [ %243, %233 ]
  %235 = phi double [ 0.000000e+00, %215 ], [ %242, %233 ]
  %236 = getelementptr inbounds double, ptr %4, i64 %234
  %237 = load double, ptr %236, align 8, !tbaa !93
  %238 = fmul double %237, %237
  %239 = getelementptr inbounds double, ptr %216, i64 %234
  %240 = load double, ptr %239, align 8, !tbaa !93
  %241 = fdiv double %238, %240
  %242 = fadd double %235, %241
  %243 = add nuw nsw i64 %234, 1
  %244 = icmp eq i64 %243, %166
  br i1 %244, label %245, label %233, !prof !216, !llvm.loop !222

245:                                              ; preds = %233, %209, %207, %214
  %246 = phi double [ 0.000000e+00, %214 ], [ 0.000000e+00, %207 ], [ 0.000000e+00, %209 ], [ %242, %233 ]
  %247 = load double, ptr @t, align 8, !tbaa !93
  %248 = fadd double %247, 1.000000e-03
  store double %248, ptr @t, align 8, !tbaa !93
  %249 = load i32, ptr %9, align 4, !tbaa !81
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %9, align 4, !tbaa !81
  %251 = icmp slt i32 %249, %1
  br i1 %251, label %167, label %252, !prof !223, !llvm.loop !224

252:                                              ; preds = %245, %158
  store i32 -3, ptr %9, align 4, !tbaa !81
  %253 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_masses(ptr nocapture noundef writeonly %0) unnamed_addr #19 !prof !105 !PGOFuncName !225 {
  %2 = load ptr, ptr @prm, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !108
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28, !prof !117

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = load i1, ptr @dim, align 4
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %6, %23
  %12 = phi i64 [ 0, %6 ], [ %26, %23 ]
  %13 = phi i32 [ 0, %6 ], [ %25, %23 ]
  %14 = getelementptr inbounds double, ptr %8, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !93
  %16 = fdiv double 1.000000e+00, %15
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  store double %16, ptr %18, align 8, !tbaa !93
  %19 = getelementptr double, ptr %18, i64 1
  store double %16, ptr %19, align 8, !tbaa !93
  %20 = getelementptr double, ptr %18, i64 2
  store double %16, ptr %20, align 8, !tbaa !93
  br i1 %9, label %21, label %23, !prof !227

21:                                               ; preds = %11
  %22 = getelementptr double, ptr %18, i64 3
  store double %16, ptr %22, align 8, !tbaa !93
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ 4, %21 ], [ 3, %11 ]
  %25 = add nuw nsw i32 %24, %13
  %26 = add nuw nsw i64 %12, 1
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %28, label %11, !prof !228, !llvm.loop !229

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare double @gauss(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @egb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, i32 noundef %12) unnamed_addr #2 !prof !230 !PGOFuncName !231 {
  %14 = load ptr, ptr @prm, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !108
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %40, label %19, !prof !232

19:                                               ; preds = %13
  %20 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !233

22:                                               ; preds = %19
  tail call void @free_vector(ptr noundef nonnull %20, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.reff, align 8, !tbaa !90
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @egb.iexw, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !233

26:                                               ; preds = %23
  %27 = add i32 %16, 1
  tail call void @free_ivector(ptr noundef nonnull %24, i32 noundef -1, i32 noundef %27) #29
  store ptr null, ptr @egb.iexw, align 8, !tbaa !90
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !233

31:                                               ; preds = %28
  tail call void @free_vector(ptr noundef nonnull %29, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.sumdeijda, align 8, !tbaa !90
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr @egb.psi, align 8, !tbaa !90
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !234

35:                                               ; preds = %32
  tail call void @free_vector(ptr noundef nonnull %33, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.psi, align 8, !tbaa !90
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @egb.reqack, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %879, label %39, !prof !233

39:                                               ; preds = %36
  tail call void @free_ivector(ptr noundef nonnull %37, i32 noundef 0, i32 noundef 1) #29
  store ptr null, ptr @egb.reqack, align 8, !tbaa !90
  br label %879

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 58
  %42 = load double, ptr %41, align 8, !tbaa !235
  %43 = fadd double %42, 2.000000e+01
  %44 = fmul double %43, %43
  %45 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49, !prof !236

47:                                               ; preds = %40
  %48 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %48, ptr @egb.reff, align 8, !tbaa !90
  br label %49

49:                                               ; preds = %47, %40
  %50 = load ptr, ptr @egb.iexw, align 8, !tbaa !90
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55, !prof !236

52:                                               ; preds = %49
  %53 = add i32 %16, 1
  %54 = tail call ptr @ivector(i32 noundef -1, i32 noundef %53) #29
  store ptr %54, ptr @egb.iexw, align 8, !tbaa !90
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60, !prof !236

58:                                               ; preds = %55
  %59 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %59, ptr @egb.sumdeijda, align 8, !tbaa !90
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr @egb.psi, align 8, !tbaa !90
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67, !prof !237

63:                                               ; preds = %60
  %64 = load i32, ptr @gb, align 4
  switch i32 %64, label %67 [
    i32 5, label %65
    i32 2, label %65
  ]

65:                                               ; preds = %63, %63
  %66 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %66, ptr @egb.psi, align 8, !tbaa !90
  br label %67

67:                                               ; preds = %63, %65, %60
  %68 = load ptr, ptr @egb.reqack, align 8, !tbaa !90
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !236

70:                                               ; preds = %67
  %71 = tail call ptr @ivector(i32 noundef 0, i32 noundef 1) #29
  store ptr %71, ptr @egb.reqack, align 8, !tbaa !90
  br label %72

72:                                               ; preds = %67, %70
  %73 = load ptr, ptr @prm, align 8, !tbaa !90
  %74 = getelementptr inbounds %struct.parm, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !108
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %79, label %77, !prof !149

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.parm, ptr %73, i64 0, i32 4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !93
  br label %293

79:                                               ; preds = %72, %279
  %80 = phi i64 [ %280, %279 ], [ 0, %72 ]
  %81 = phi double [ %96, %279 ], [ 0.000000e+00, %72 ]
  %82 = phi double [ %249, %279 ], [ undef, %72 ]
  %83 = load i1, ptr @dim, align 4
  %84 = select i1 %83, i64 4, i64 3
  %85 = mul nuw nsw i64 %84, %80
  %86 = getelementptr inbounds double, ptr %3, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !93
  %88 = getelementptr double, ptr %86, i64 1
  %89 = load double, ptr %88, align 8, !tbaa !93
  %90 = getelementptr double, ptr %86, i64 2
  %91 = load double, ptr %90, align 8, !tbaa !93
  br i1 %83, label %92, label %95, !prof !238

92:                                               ; preds = %79
  %93 = getelementptr double, ptr %86, i64 3
  %94 = load double, ptr %93, align 8, !tbaa !93
  br label %95

95:                                               ; preds = %92, %79
  %96 = phi double [ %94, %92 ], [ %81, %79 ]
  %97 = getelementptr inbounds double, ptr %6, i64 %80
  %98 = load double, ptr %97, align 8, !tbaa !93
  %99 = fadd double %98, 0xBFB70A3D70A3D70A
  %100 = fdiv double 1.000000e+00, %99
  %101 = getelementptr inbounds i32, ptr %0, i64 %80
  %102 = getelementptr inbounds i32, ptr %1, i64 %80
  %103 = load i32, ptr %101, align 4, !tbaa !81
  %104 = load i32, ptr %102, align 4, !tbaa !81
  %105 = add nsw i32 %104, %103
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %247, !prof !239

107:                                              ; preds = %95
  %108 = getelementptr inbounds ptr, ptr %2, i64 %80
  %109 = fmul double %100, 5.000000e-01
  br label %110

110:                                              ; preds = %107, %239
  %111 = phi i64 [ 0, %107 ], [ %241, %239 ]
  %112 = phi double [ %82, %107 ], [ %149, %239 ]
  %113 = phi double [ 0.000000e+00, %107 ], [ %240, %239 ]
  %114 = load ptr, ptr %108, align 8, !tbaa !90
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %122, !prof !240

116:                                              ; preds = %110
  %117 = load ptr, ptr @nabout, align 8, !tbaa !90
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.80, i32 noundef 0) #25
  %119 = load ptr, ptr @nabout, align 8, !tbaa !90
  %120 = tail call i32 @fflush(ptr noundef %119) #25
  %121 = load ptr, ptr %108, align 8, !tbaa !90
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi ptr [ %121, %116 ], [ %114, %110 ]
  %124 = getelementptr inbounds i32, ptr %123, i64 %111
  %125 = load i32, ptr %124, align 4, !tbaa !81
  %126 = load i1, ptr @dim, align 4
  %127 = select i1 %126, i32 4, i32 3
  %128 = mul nsw i32 %127, %125
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %3, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !93
  %132 = fsub double %87, %131
  %133 = getelementptr double, ptr %130, i64 1
  %134 = load double, ptr %133, align 8, !tbaa !93
  %135 = fsub double %89, %134
  %136 = getelementptr double, ptr %130, i64 2
  %137 = load double, ptr %136, align 8, !tbaa !93
  %138 = fsub double %91, %137
  %139 = fmul double %135, %135
  %140 = tail call double @llvm.fmuladd.f64(double %132, double %132, double %139)
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %138, double %140)
  br i1 %126, label %142, label %147, !prof !240

142:                                              ; preds = %122
  %143 = getelementptr double, ptr %130, i64 3
  %144 = load double, ptr %143, align 8, !tbaa !93
  %145 = fsub double %96, %144
  %146 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %141)
  br label %147

147:                                              ; preds = %142, %122
  %148 = phi double [ %146, %142 ], [ %141, %122 ]
  %149 = phi double [ %145, %142 ], [ %112, %122 ]
  %150 = fcmp ogt double %148, %44
  br i1 %150, label %239, label %151, !prof !241

151:                                              ; preds = %147
  %152 = tail call double @sqrt(double noundef %148) #29
  %153 = fdiv double 1.000000e+00, %152
  %154 = fmul double %148, %153
  %155 = sext i32 %125 to i64
  %156 = getelementptr inbounds double, ptr %5, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !93
  %158 = getelementptr inbounds double, ptr %6, i64 %155
  %159 = load double, ptr %158, align 8, !tbaa !93
  %160 = fadd double %159, 0xBFB70A3D70A3D70A
  %161 = fmul double %157, %160
  %162 = fmul double %161, %161
  %163 = fadd double %161, 2.000000e+01
  %164 = fcmp ogt double %154, %163
  br i1 %164, label %239, label %165, !prof !242

165:                                              ; preds = %151
  %166 = fsub double 2.000000e+01, %161
  %167 = fcmp ogt double %154, %166
  br i1 %167, label %168, label %181, !prof !243

168:                                              ; preds = %165
  %169 = fsub double %154, %161
  %170 = fdiv double 1.000000e+00, %169
  %171 = fmul double %154, 2.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %171, double %170, double 1.000000e+00)
  %173 = tail call double @llvm.fmuladd.f64(double %154, double -8.000000e+01, double %148)
  %174 = fsub double %173, %162
  %175 = tail call double @llvm.fmuladd.f64(double %174, double 0x3F647AE147AE147C, double %172)
  %176 = fmul double %169, 5.000000e-02
  %177 = tail call double @log(double noundef %176) #29
  %178 = tail call double @llvm.fmuladd.f64(double %177, double 2.000000e+00, double %175)
  %179 = fmul double %153, -1.250000e-01
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double %113)
  br label %239

181:                                              ; preds = %165
  %182 = fmul double %161, 4.000000e+00
  %183 = fcmp ogt double %154, %182
  br i1 %183, label %184, label %195, !prof !244

184:                                              ; preds = %181
  %185 = fmul double %153, %153
  %186 = fmul double %185, %162
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 0x3FDD1745D1745D17, double 0x3FDC71C71C71C71C)
  %188 = tail call double @llvm.fmuladd.f64(double %186, double %187, double 0x3FDB6DB6DB6DB6DB)
  %189 = tail call double @llvm.fmuladd.f64(double %186, double %188, double 4.000000e-01)
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %189, double 0x3FD5555555555555)
  %191 = fneg double %161
  %192 = fmul double %186, %191
  %193 = fmul double %185, %192
  %194 = tail call double @llvm.fmuladd.f64(double %193, double %190, double %113)
  br label %239

195:                                              ; preds = %181
  %196 = fadd double %99, %161
  %197 = fcmp ogt double %154, %196
  br i1 %197, label %198, label %208, !prof !245

198:                                              ; preds = %195
  %199 = fsub double %148, %162
  %200 = fdiv double %161, %199
  %201 = fmul double %153, 5.000000e-01
  %202 = fsub double %154, %161
  %203 = fadd double %154, %161
  %204 = fdiv double %202, %203
  %205 = tail call double @log(double noundef %204) #29
  %206 = tail call double @llvm.fmuladd.f64(double %201, double %205, double %200)
  %207 = tail call double @llvm.fmuladd.f64(double %206, double -5.000000e-01, double %113)
  br label %239

208:                                              ; preds = %195
  %209 = fsub double %99, %161
  %210 = tail call double @llvm.fabs.f64(double %209)
  %211 = fcmp ogt double %154, %210
  br i1 %211, label %212, label %226, !prof !246

212:                                              ; preds = %208
  %213 = fmul double %109, %153
  %214 = tail call double @llvm.fmuladd.f64(double %99, double %99, double %148)
  %215 = fsub double %214, %162
  %216 = fmul double %213, %215
  %217 = fadd double %154, %161
  %218 = fdiv double 1.000000e+00, %217
  %219 = fsub double 2.000000e+00, %216
  %220 = fneg double %218
  %221 = tail call double @llvm.fmuladd.f64(double %100, double %219, double %220)
  %222 = fmul double %99, %218
  %223 = tail call double @log(double noundef %222) #29
  %224 = tail call double @llvm.fmuladd.f64(double %153, double %223, double %221)
  %225 = tail call double @llvm.fmuladd.f64(double %224, double -2.500000e-01, double %113)
  br label %239

226:                                              ; preds = %208
  %227 = fcmp olt double %99, %161
  br i1 %227, label %228, label %239, !prof !247

228:                                              ; preds = %226
  %229 = fsub double %148, %162
  %230 = fdiv double %161, %229
  %231 = tail call double @llvm.fmuladd.f64(double %100, double 2.000000e+00, double %230)
  %232 = fmul double %153, 5.000000e-01
  %233 = fsub double %161, %154
  %234 = fadd double %154, %161
  %235 = fdiv double %233, %234
  %236 = tail call double @log(double noundef %235) #29
  %237 = tail call double @llvm.fmuladd.f64(double %232, double %236, double %231)
  %238 = tail call double @llvm.fmuladd.f64(double %237, double -5.000000e-01, double %113)
  br label %239

239:                                              ; preds = %168, %198, %226, %228, %212, %184, %151, %147
  %240 = phi double [ %113, %147 ], [ %113, %151 ], [ %180, %168 ], [ %194, %184 ], [ %207, %198 ], [ %225, %212 ], [ %238, %228 ], [ %113, %226 ]
  %241 = add nuw nsw i64 %111, 1
  %242 = load i32, ptr %101, align 4, !tbaa !81
  %243 = load i32, ptr %102, align 4, !tbaa !81
  %244 = add nsw i32 %243, %242
  %245 = sext i32 %244 to i64
  %246 = icmp slt i64 %241, %245
  br i1 %246, label %110, label %247, !prof !248, !llvm.loop !249

247:                                              ; preds = %239, %95
  %248 = phi double [ 0.000000e+00, %95 ], [ %240, %239 ]
  %249 = phi double [ %82, %95 ], [ %149, %239 ]
  %250 = load i32, ptr @gb, align 4, !tbaa !81
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %259, !prof !250

252:                                              ; preds = %247
  %253 = fadd double %100, %248
  %254 = fdiv double 1.000000e+00, %253
  %255 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %256 = getelementptr inbounds double, ptr %255, i64 %80
  store double %254, ptr %256, align 8, !tbaa !93
  %257 = fcmp olt double %254, 0.000000e+00
  br i1 %257, label %258, label %279, !prof !238

258:                                              ; preds = %252
  store double 3.000000e+01, ptr %256, align 8, !tbaa !93
  br label %279

259:                                              ; preds = %247
  %260 = fneg double %99
  %261 = fmul double %248, %260
  %262 = load ptr, ptr @egb.psi, align 8, !tbaa !90
  %263 = getelementptr inbounds double, ptr %262, i64 %80
  store double %261, ptr %263, align 8, !tbaa !93
  %264 = load double, ptr @gbalpha, align 8, !tbaa !93
  %265 = load double, ptr @gbbeta, align 8, !tbaa !93
  %266 = fneg double %265
  %267 = tail call double @llvm.fmuladd.f64(double %266, double %261, double %264)
  %268 = load double, ptr @gbgamma, align 8, !tbaa !93
  %269 = fmul double %261, %268
  %270 = tail call double @llvm.fmuladd.f64(double %269, double %261, double %267)
  %271 = fmul double %261, %270
  %272 = tail call double @tanh(double noundef %271) #29
  %273 = load double, ptr %97, align 8, !tbaa !93
  %274 = fdiv double %272, %273
  %275 = fsub double %100, %274
  %276 = fdiv double 1.000000e+00, %275
  %277 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %278 = getelementptr inbounds double, ptr %277, i64 %80
  store double %276, ptr %278, align 8, !tbaa !93
  br label %279

279:                                              ; preds = %259, %258, %252
  %280 = add nuw nsw i64 %80, 1
  %281 = load ptr, ptr @prm, align 8, !tbaa !90
  %282 = getelementptr inbounds %struct.parm, ptr %281, i64 0, i32 4
  %283 = load i32, ptr %282, align 8, !tbaa !108
  %284 = sext i32 %283 to i64
  %285 = icmp slt i64 %280, %284
  br i1 %285, label %79, label %286, !prof !251, !llvm.loop !252

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.parm, ptr %281, i64 0, i32 4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !93
  %288 = icmp sgt i32 %283, 0
  br i1 %288, label %289, label %293, !prof !148

289:                                              ; preds = %286
  %290 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %291 = zext nneg i32 %283 to i64
  %292 = shl nuw nsw i64 %291, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %290, i8 0, i64 %292, i1 false), !tbaa !93
  br label %299

293:                                              ; preds = %77, %286
  %294 = phi ptr [ %78, %77 ], [ %287, %286 ]
  %295 = phi i32 [ %75, %77 ], [ %283, %286 ]
  %296 = phi double [ 0.000000e+00, %77 ], [ %96, %286 ]
  %297 = phi double [ undef, %77 ], [ %249, %286 ]
  %298 = icmp sgt i32 %295, -1
  br i1 %298, label %299, label %875, !prof !253

299:                                              ; preds = %289, %293
  %300 = phi double [ %249, %289 ], [ %297, %293 ]
  %301 = phi double [ %96, %289 ], [ %296, %293 ]
  %302 = phi ptr [ %287, %289 ], [ %294, %293 ]
  %303 = load ptr, ptr @egb.iexw, align 8, !tbaa !90
  br label %306

304:                                              ; preds = %306
  %305 = icmp sgt i32 %310, 0
  br i1 %305, label %315, label %875, !prof !148

306:                                              ; preds = %299, %306
  %307 = phi i64 [ -1, %299 ], [ %309, %306 ]
  %308 = getelementptr inbounds i32, ptr %303, i64 %307
  store i32 -1, ptr %308, align 4, !tbaa !81
  %309 = add nsw i64 %307, 1
  %310 = load i32, ptr %302, align 8, !tbaa !108
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %306, label %304, !prof !254, !llvm.loop !255

313:                                              ; preds = %588
  %314 = icmp sgt i32 %598, 0
  br i1 %314, label %601, label %875, !prof !148

315:                                              ; preds = %304, %588
  %316 = phi i64 [ %595, %588 ], [ 0, %304 ]
  %317 = phi double [ %594, %588 ], [ 0.000000e+00, %304 ]
  %318 = phi double [ %593, %588 ], [ 0.000000e+00, %304 ]
  %319 = phi double [ %592, %588 ], [ 0.000000e+00, %304 ]
  %320 = phi double [ %591, %588 ], [ %301, %304 ]
  %321 = phi double [ %590, %588 ], [ %300, %304 ]
  %322 = phi double [ %589, %588 ], [ undef, %304 ]
  %323 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %324 = getelementptr inbounds double, ptr %323, i64 %316
  %325 = load double, ptr %324, align 8, !tbaa !93
  %326 = getelementptr inbounds double, ptr %7, i64 %316
  %327 = load double, ptr %326, align 8, !tbaa !93
  %328 = load ptr, ptr @frozen, align 8, !tbaa !90
  %329 = getelementptr inbounds i32, ptr %328, i64 %316
  %330 = load i32, ptr %329, align 4, !tbaa !81
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %350, !prof !250

332:                                              ; preds = %315
  %333 = fmul double %325, -0.000000e+00
  %334 = tail call double @exp(double noundef %333) #29
  %335 = fdiv double %334, 7.850000e+01
  %336 = fsub double 1.000000e+00, %335
  %337 = fmul double %327, 5.000000e-01
  %338 = fmul double %327, %337
  %339 = fmul double %338, %336
  %340 = fdiv double %339, %325
  %341 = fsub double %317, %340
  %342 = fmul double %338, -0.000000e+00
  %343 = fmul double %335, %342
  %344 = tail call double @llvm.fmuladd.f64(double %343, double %325, double %339)
  %345 = fadd double %344, 0.000000e+00
  %346 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %347 = getelementptr inbounds double, ptr %346, i64 %316
  %348 = load double, ptr %347, align 8, !tbaa !93
  %349 = fadd double %348, %345
  store double %349, ptr %347, align 8, !tbaa !93
  br label %350

350:                                              ; preds = %332, %315
  %351 = phi double [ %317, %315 ], [ %341, %332 ]
  %352 = getelementptr inbounds i32, ptr %1, i64 %316
  %353 = load i32, ptr %352, align 4, !tbaa !81
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %588, label %355, !prof !256

355:                                              ; preds = %350
  %356 = load i1, ptr @dim, align 4
  %357 = select i1 %356, i32 4, i32 3
  %358 = trunc i64 %316 to i32
  %359 = mul nuw nsw i32 %357, %358
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds double, ptr %3, i64 %360
  %362 = load <2 x double>, ptr %361, align 8, !tbaa !93
  %363 = add nuw nsw i32 %359, 2
  %364 = zext nneg i32 %363 to i64
  %365 = getelementptr inbounds double, ptr %3, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !93
  br i1 %356, label %367, label %370, !prof !257

367:                                              ; preds = %355
  %368 = getelementptr double, ptr %361, i64 3
  %369 = load double, ptr %368, align 8, !tbaa !93
  br label %370

370:                                              ; preds = %367, %355
  %371 = phi double [ %369, %367 ], [ %320, %355 ]
  %372 = load ptr, ptr @prm, align 8, !tbaa !90
  %373 = getelementptr inbounds %struct.parm, ptr %372, i64 0, i32 5
  %374 = load i32, ptr %373, align 4, !tbaa !258
  %375 = getelementptr inbounds %struct.parm, ptr %372, i64 0, i32 59
  %376 = load ptr, ptr %375, align 8, !tbaa !259
  %377 = getelementptr inbounds i32, ptr %376, i64 %316
  %378 = load i32, ptr %377, align 4, !tbaa !81
  %379 = add nsw i32 %378, -1
  %380 = mul nsw i32 %379, %374
  %381 = getelementptr inbounds %struct.parm, ptr %372, i64 0, i32 60
  %382 = load ptr, ptr %381, align 8, !tbaa !134
  %383 = getelementptr inbounds i32, ptr %382, i64 %316
  %384 = load i32, ptr %383, align 4, !tbaa !81
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %402, !prof !260

386:                                              ; preds = %370
  %387 = load ptr, ptr @egb.iexw, align 8, !tbaa !90
  %388 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %389 = getelementptr inbounds ptr, ptr %388, i64 %316
  %390 = load ptr, ptr %389, align 8, !tbaa !90
  %391 = getelementptr i32, ptr %387, i64 -1
  br label %392

392:                                              ; preds = %386, %392
  %393 = phi i64 [ 0, %386 ], [ %398, %392 ]
  %394 = getelementptr inbounds i32, ptr %390, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !81
  %396 = sext i32 %395 to i64
  %397 = getelementptr i32, ptr %391, i64 %396
  store i32 %358, ptr %397, align 4, !tbaa !81
  %398 = add nuw nsw i64 %393, 1
  %399 = load i32, ptr %383, align 4, !tbaa !81
  %400 = sext i32 %399 to i64
  %401 = icmp slt i64 %398, %400
  br i1 %401, label %392, label %402, !prof !261, !llvm.loop !262

402:                                              ; preds = %392, %370
  %403 = getelementptr inbounds i32, ptr %0, i64 %316
  %404 = load i32, ptr %403, align 4, !tbaa !81
  %405 = getelementptr inbounds ptr, ptr %2, i64 %316
  %406 = sext i32 %404 to i64
  br label %407

407:                                              ; preds = %402, %571
  %408 = phi i1 [ %356, %402 ], [ %554, %571 ]
  %409 = phi i64 [ %406, %402 ], [ %572, %571 ]
  %410 = phi double [ %351, %402 ], [ %477, %571 ]
  %411 = phi double [ %318, %402 ], [ %547, %571 ]
  %412 = phi double [ %319, %402 ], [ %546, %571 ]
  %413 = phi double [ 0.000000e+00, %402 ], [ %553, %571 ]
  %414 = phi double [ 0.000000e+00, %402 ], [ %560, %571 ]
  %415 = phi double [ %321, %402 ], [ %455, %571 ]
  %416 = phi double [ %322, %402 ], [ %559, %571 ]
  %417 = phi <2 x double> [ zeroinitializer, %402 ], [ %552, %571 ]
  %418 = load ptr, ptr %405, align 8, !tbaa !90
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %427, !prof !263

420:                                              ; preds = %407
  %421 = load ptr, ptr @nabout, align 8, !tbaa !90
  %422 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %421, ptr noundef nonnull @.str.82, i32 noundef 0) #25
  %423 = load ptr, ptr @nabout, align 8, !tbaa !90
  %424 = tail call i32 @fflush(ptr noundef %423) #25
  %425 = load ptr, ptr %405, align 8, !tbaa !90
  %426 = load i1, ptr @dim, align 4
  br label %427

427:                                              ; preds = %420, %407
  %428 = phi i1 [ %426, %420 ], [ %408, %407 ]
  %429 = phi ptr [ %425, %420 ], [ %418, %407 ]
  %430 = getelementptr inbounds i32, ptr %429, i64 %409
  %431 = load i32, ptr %430, align 4, !tbaa !81
  %432 = select i1 %428, i32 4, i32 3
  %433 = mul nsw i32 %432, %431
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds double, ptr %3, i64 %434
  %436 = load <2 x double>, ptr %435, align 8, !tbaa !93
  %437 = fsub <2 x double> %362, %436
  %438 = add nsw i32 %433, 2
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double, ptr %3, i64 %439
  %441 = load double, ptr %440, align 8, !tbaa !93
  %442 = fsub double %366, %441
  %443 = fmul <2 x double> %437, %437
  %444 = extractelement <2 x double> %443, i64 1
  %445 = extractelement <2 x double> %437, i64 0
  %446 = tail call double @llvm.fmuladd.f64(double %445, double %445, double %444)
  %447 = tail call double @llvm.fmuladd.f64(double %442, double %442, double %446)
  br i1 %428, label %448, label %453, !prof !263

448:                                              ; preds = %427
  %449 = getelementptr double, ptr %435, i64 3
  %450 = load double, ptr %449, align 8, !tbaa !93
  %451 = fsub double %371, %450
  %452 = tail call double @llvm.fmuladd.f64(double %451, double %451, double %447)
  br label %453

453:                                              ; preds = %448, %427
  %454 = phi double [ %452, %448 ], [ %447, %427 ]
  %455 = phi double [ %451, %448 ], [ %415, %427 ]
  %456 = sext i32 %431 to i64
  %457 = getelementptr inbounds double, ptr %7, i64 %456
  %458 = load double, ptr %457, align 8, !tbaa !93
  %459 = fmul double %327, %458
  %460 = load ptr, ptr @egb.reff, align 8, !tbaa !90
  %461 = getelementptr inbounds double, ptr %460, i64 %456
  %462 = load double, ptr %461, align 8, !tbaa !93
  %463 = fmul double %325, %462
  %464 = fneg double %454
  %465 = fmul double %463, 4.000000e+00
  %466 = fdiv double %464, %465
  %467 = tail call double @exp(double noundef %466) #29
  %468 = tail call double @llvm.fmuladd.f64(double %463, double %467, double %454)
  %469 = tail call double @sqrt(double noundef %468) #29
  %470 = fdiv double 1.000000e+00, %469
  %471 = fdiv double -0.000000e+00, %470
  %472 = tail call double @exp(double noundef %471) #29
  %473 = fdiv double %472, 7.850000e+01
  %474 = fsub double 1.000000e+00, %473
  %475 = fneg double %459
  %476 = fmul double %474, %475
  %477 = tail call double @llvm.fmuladd.f64(double %476, double %470, double %410)
  %478 = fmul double %470, %470
  %479 = fmul double %470, %478
  %480 = fmul double %459, %479
  %481 = tail call double @llvm.fmuladd.f64(double %471, double %473, double %474)
  %482 = fmul double %480, %481
  %483 = tail call double @llvm.fmuladd.f64(double %467, double -2.500000e-01, double 1.000000e+00)
  %484 = fmul double %483, %482
  %485 = fmul double %467, 5.000000e-01
  %486 = fmul double %485, %482
  %487 = tail call double @llvm.fmuladd.f64(double %454, double 2.500000e-01, double %463)
  %488 = fmul double %487, %486
  %489 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %490 = getelementptr inbounds double, ptr %489, i64 %316
  %491 = load double, ptr %490, align 8, !tbaa !93
  %492 = tail call double @llvm.fmuladd.f64(double %325, double %488, double %491)
  store double %492, ptr %490, align 8, !tbaa !93
  %493 = getelementptr inbounds double, ptr %489, i64 %456
  %494 = load double, ptr %493, align 8, !tbaa !93
  %495 = tail call double @llvm.fmuladd.f64(double %462, double %488, double %494)
  store double %495, ptr %493, align 8, !tbaa !93
  %496 = load ptr, ptr @egb.iexw, align 8, !tbaa !90
  %497 = getelementptr inbounds i32, ptr %496, i64 %456
  %498 = load i32, ptr %497, align 4, !tbaa !81
  %499 = zext i32 %498 to i64
  %500 = icmp eq i64 %316, %499
  br i1 %500, label %544, label %501, !prof !264

501:                                              ; preds = %453
  %502 = tail call double @sqrt(double noundef %454) #29
  %503 = fdiv double 1.000000e+00, %502
  %504 = fmul double %503, %503
  %505 = fmul double %459, %503
  %506 = fadd double %411, %505
  %507 = fneg double %505
  %508 = tail call double @llvm.fmuladd.f64(double %507, double %504, double %484)
  %509 = load ptr, ptr @prm, align 8, !tbaa !90
  %510 = getelementptr inbounds %struct.parm, ptr %509, i64 0, i32 61
  %511 = load ptr, ptr %510, align 8, !tbaa !265
  %512 = getelementptr inbounds %struct.parm, ptr %509, i64 0, i32 59
  %513 = load ptr, ptr %512, align 8, !tbaa !259
  %514 = getelementptr inbounds i32, ptr %513, i64 %456
  %515 = load i32, ptr %514, align 4, !tbaa !81
  %516 = add nsw i32 %515, %380
  %517 = sext i32 %516 to i64
  %518 = getelementptr i32, ptr %511, i64 %517
  %519 = getelementptr i32, ptr %518, i64 -1
  %520 = load i32, ptr %519, align 4, !tbaa !81
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %522, label %544, !prof !266

522:                                              ; preds = %501
  %523 = add nsw i32 %520, -1
  %524 = fmul double %504, %504
  %525 = fmul double %504, %524
  %526 = getelementptr inbounds %struct.parm, ptr %509, i64 0, i32 48
  %527 = load ptr, ptr %526, align 8, !tbaa !267
  %528 = zext nneg i32 %523 to i64
  %529 = getelementptr inbounds double, ptr %527, i64 %528
  %530 = load double, ptr %529, align 8, !tbaa !93
  %531 = fmul double %525, %530
  %532 = getelementptr inbounds %struct.parm, ptr %509, i64 0, i32 47
  %533 = load ptr, ptr %532, align 8, !tbaa !268
  %534 = getelementptr inbounds double, ptr %533, i64 %528
  %535 = load double, ptr %534, align 8, !tbaa !93
  %536 = fmul double %525, %535
  %537 = fmul double %525, %536
  %538 = fsub double %537, %531
  %539 = fadd double %412, %538
  %540 = fmul double %531, -6.000000e+00
  %541 = tail call double @llvm.fmuladd.f64(double %537, double 1.200000e+01, double %540)
  %542 = fneg double %541
  %543 = tail call double @llvm.fmuladd.f64(double %542, double %504, double %508)
  br label %544

544:                                              ; preds = %501, %522, %453
  %545 = phi double [ %543, %522 ], [ %508, %501 ], [ %484, %453 ]
  %546 = phi double [ %539, %522 ], [ %412, %501 ], [ %412, %453 ]
  %547 = phi double [ %506, %522 ], [ %506, %501 ], [ %411, %453 ]
  %548 = insertelement <2 x double> poison, double %545, i64 0
  %549 = shufflevector <2 x double> %548, <2 x double> poison, <2 x i32> zeroinitializer
  %550 = fmul <2 x double> %437, %549
  %551 = fmul double %442, %545
  %552 = fadd <2 x double> %417, %550
  %553 = fadd double %413, %551
  %554 = load i1, ptr @dim, align 4
  br i1 %554, label %555, label %558, !prof !263

555:                                              ; preds = %544
  %556 = fmul double %455, %545
  %557 = fadd double %414, %556
  br label %558

558:                                              ; preds = %555, %544
  %559 = phi double [ %556, %555 ], [ %416, %544 ]
  %560 = phi double [ %557, %555 ], [ %414, %544 ]
  %561 = getelementptr inbounds double, ptr %4, i64 %434
  %562 = load <2 x double>, ptr %561, align 8, !tbaa !93
  %563 = fsub <2 x double> %562, %550
  store <2 x double> %563, ptr %561, align 8, !tbaa !93
  %564 = getelementptr inbounds double, ptr %4, i64 %439
  %565 = load double, ptr %564, align 8, !tbaa !93
  %566 = fsub double %565, %551
  store double %566, ptr %564, align 8, !tbaa !93
  br i1 %554, label %567, label %571, !prof !263

567:                                              ; preds = %558
  %568 = getelementptr double, ptr %561, i64 3
  %569 = load double, ptr %568, align 8, !tbaa !93
  %570 = fsub double %569, %559
  store double %570, ptr %568, align 8, !tbaa !93
  br label %571

571:                                              ; preds = %558, %567
  %572 = add nsw i64 %409, 1
  %573 = load i32, ptr %403, align 4, !tbaa !81
  %574 = add nsw i32 %573, %353
  %575 = sext i32 %574 to i64
  %576 = icmp slt i64 %572, %575
  br i1 %576, label %407, label %577, !prof !269, !llvm.loop !270

577:                                              ; preds = %571
  %578 = getelementptr inbounds double, ptr %4, i64 %360
  %579 = load <2 x double>, ptr %578, align 8, !tbaa !93
  %580 = fadd <2 x double> %552, %579
  store <2 x double> %580, ptr %578, align 8, !tbaa !93
  %581 = getelementptr inbounds double, ptr %4, i64 %364
  %582 = load double, ptr %581, align 8, !tbaa !93
  %583 = fadd double %553, %582
  store double %583, ptr %581, align 8, !tbaa !93
  br i1 %554, label %584, label %588, !prof !257

584:                                              ; preds = %577
  %585 = getelementptr double, ptr %578, i64 3
  %586 = load double, ptr %585, align 8, !tbaa !93
  %587 = fadd double %560, %586
  store double %587, ptr %585, align 8, !tbaa !93
  br label %588

588:                                              ; preds = %577, %584, %350
  %589 = phi double [ %322, %350 ], [ %559, %584 ], [ %559, %577 ]
  %590 = phi double [ %321, %350 ], [ %455, %584 ], [ %455, %577 ]
  %591 = phi double [ %320, %350 ], [ %371, %584 ], [ %371, %577 ]
  %592 = phi double [ %319, %350 ], [ %546, %584 ], [ %546, %577 ]
  %593 = phi double [ %318, %350 ], [ %547, %584 ], [ %547, %577 ]
  %594 = phi double [ %351, %350 ], [ %477, %584 ], [ %477, %577 ]
  %595 = add nuw nsw i64 %316, 1
  %596 = load ptr, ptr @prm, align 8, !tbaa !90
  %597 = getelementptr inbounds %struct.parm, ptr %596, i64 0, i32 4
  %598 = load i32, ptr %597, align 8, !tbaa !108
  %599 = sext i32 %598 to i64
  %600 = icmp slt i64 %595, %599
  br i1 %600, label %315, label %313, !prof !251, !llvm.loop !271

601:                                              ; preds = %313, %866
  %602 = phi i64 [ %869, %866 ], [ 0, %313 ]
  %603 = phi double [ %868, %866 ], [ %591, %313 ]
  %604 = phi double [ %867, %866 ], [ %590, %313 ]
  %605 = getelementptr inbounds i32, ptr %0, i64 %602
  %606 = load i32, ptr %605, align 4, !tbaa !81
  %607 = getelementptr inbounds i32, ptr %1, i64 %602
  %608 = load i32, ptr %607, align 4, !tbaa !81
  %609 = add i32 %608, %606
  %610 = load ptr, ptr @frozen, align 8, !tbaa !90
  %611 = getelementptr inbounds i32, ptr %610, i64 %602
  %612 = load i32, ptr %611, align 4, !tbaa !81
  %613 = icmp ne i32 %612, 0
  %614 = icmp slt i32 %609, 1
  %615 = select i1 %613, i1 true, i1 %614
  br i1 %615, label %866, label %616, !prof !272

616:                                              ; preds = %601
  %617 = load i1, ptr @dim, align 4
  %618 = select i1 %617, i32 4, i32 3
  %619 = trunc i64 %602 to i32
  %620 = mul nuw nsw i32 %618, %619
  %621 = zext nneg i32 %620 to i64
  %622 = getelementptr inbounds double, ptr %3, i64 %621
  %623 = load <2 x double>, ptr %622, align 8, !tbaa !93
  %624 = add nuw nsw i32 %620, 2
  %625 = zext nneg i32 %624 to i64
  %626 = getelementptr inbounds double, ptr %3, i64 %625
  %627 = load double, ptr %626, align 8, !tbaa !93
  br i1 %617, label %628, label %631, !prof !238

628:                                              ; preds = %616
  %629 = getelementptr double, ptr %622, i64 3
  %630 = load double, ptr %629, align 8, !tbaa !93
  br label %631

631:                                              ; preds = %628, %616
  %632 = phi double [ %630, %628 ], [ %603, %616 ]
  %633 = getelementptr inbounds double, ptr %6, i64 %602
  %634 = load double, ptr %633, align 8, !tbaa !93
  %635 = fadd double %634, 0xBFB70A3D70A3D70A
  %636 = fdiv double 1.000000e+00, %635
  %637 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !90
  %638 = getelementptr inbounds double, ptr %637, i64 %602
  %639 = load double, ptr %638, align 8, !tbaa !93
  %640 = load i32, ptr @gb, align 4, !tbaa !81
  %641 = icmp sgt i32 %640, 1
  br i1 %641, label %642, label %673, !prof !238

642:                                              ; preds = %631
  %643 = load double, ptr @gbalpha, align 8, !tbaa !93
  %644 = load double, ptr @gbbeta, align 8, !tbaa !93
  %645 = load ptr, ptr @egb.psi, align 8, !tbaa !90
  %646 = getelementptr inbounds double, ptr %645, i64 %602
  %647 = load double, ptr %646, align 8, !tbaa !93
  %648 = fneg double %644
  %649 = tail call double @llvm.fmuladd.f64(double %648, double %647, double %643)
  %650 = load double, ptr @gbgamma, align 8, !tbaa !93
  %651 = fmul double %647, %650
  %652 = tail call double @llvm.fmuladd.f64(double %651, double %647, double %649)
  %653 = fmul double %647, %652
  %654 = tail call double @tanh(double noundef %653) #29
  %655 = load double, ptr @gbalpha, align 8, !tbaa !93
  %656 = load double, ptr @gbbeta, align 8, !tbaa !93
  %657 = load ptr, ptr @egb.psi, align 8, !tbaa !90
  %658 = getelementptr inbounds double, ptr %657, i64 %602
  %659 = load double, ptr %658, align 8, !tbaa !93
  %660 = fmul double %656, -2.000000e+00
  %661 = tail call double @llvm.fmuladd.f64(double %660, double %659, double %655)
  %662 = load double, ptr @gbgamma, align 8, !tbaa !93
  %663 = fmul double %662, 3.000000e+00
  %664 = fmul double %659, %663
  %665 = tail call double @llvm.fmuladd.f64(double %664, double %659, double %661)
  %666 = fneg double %654
  %667 = tail call double @llvm.fmuladd.f64(double %666, double %654, double 1.000000e+00)
  %668 = fmul double %667, %665
  %669 = fmul double %635, %668
  %670 = load double, ptr %633, align 8, !tbaa !93
  %671 = fdiv double %669, %670
  %672 = fmul double %639, %671
  br label %673

673:                                              ; preds = %631, %642
  %674 = phi double [ %672, %642 ], [ %639, %631 ]
  %675 = getelementptr inbounds ptr, ptr %2, i64 %602
  %676 = fneg double %635
  %677 = zext nneg i32 %609 to i64
  br label %678

678:                                              ; preds = %673, %845
  %679 = phi i64 [ 0, %673 ], [ %849, %845 ]
  %680 = phi double [ 0.000000e+00, %673 ], [ %847, %845 ]
  %681 = phi double [ 0.000000e+00, %673 ], [ %846, %845 ]
  %682 = phi double [ %604, %673 ], [ %720, %845 ]
  %683 = phi <2 x double> [ zeroinitializer, %673 ], [ %848, %845 ]
  %684 = load ptr, ptr %675, align 8, !tbaa !90
  %685 = icmp eq ptr %684, null
  br i1 %685, label %686, label %692, !prof !240

686:                                              ; preds = %678
  %687 = load ptr, ptr @nabout, align 8, !tbaa !90
  %688 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %687, ptr noundef nonnull @.str.83, i32 noundef 0) #25
  %689 = load ptr, ptr @nabout, align 8, !tbaa !90
  %690 = tail call i32 @fflush(ptr noundef %689) #25
  %691 = load ptr, ptr %675, align 8, !tbaa !90
  br label %692

692:                                              ; preds = %686, %678
  %693 = phi ptr [ %691, %686 ], [ %684, %678 ]
  %694 = getelementptr inbounds i32, ptr %693, i64 %679
  %695 = load i32, ptr %694, align 4, !tbaa !81
  %696 = load i1, ptr @dim, align 4
  %697 = select i1 %696, i32 4, i32 3
  %698 = mul nsw i32 %697, %695
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds double, ptr %3, i64 %699
  %701 = load <2 x double>, ptr %700, align 8, !tbaa !93
  %702 = fsub <2 x double> %623, %701
  %703 = add nsw i32 %698, 2
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds double, ptr %3, i64 %704
  %706 = load double, ptr %705, align 8, !tbaa !93
  %707 = fsub double %627, %706
  %708 = fmul <2 x double> %702, %702
  %709 = extractelement <2 x double> %708, i64 1
  %710 = extractelement <2 x double> %702, i64 0
  %711 = tail call double @llvm.fmuladd.f64(double %710, double %710, double %709)
  %712 = tail call double @llvm.fmuladd.f64(double %707, double %707, double %711)
  br i1 %696, label %713, label %718, !prof !240

713:                                              ; preds = %692
  %714 = getelementptr double, ptr %700, i64 3
  %715 = load double, ptr %714, align 8, !tbaa !93
  %716 = fsub double %632, %715
  %717 = tail call double @llvm.fmuladd.f64(double %716, double %716, double %712)
  br label %718

718:                                              ; preds = %713, %692
  %719 = phi double [ %717, %713 ], [ %712, %692 ]
  %720 = phi double [ %716, %713 ], [ %682, %692 ]
  %721 = fcmp ogt double %719, %44
  br i1 %721, label %845, label %722, !prof !241

722:                                              ; preds = %718
  %723 = tail call double @sqrt(double noundef %719) #29
  %724 = fdiv double 1.000000e+00, %723
  %725 = fmul double %724, %724
  %726 = fmul double %719, %724
  %727 = sext i32 %695 to i64
  %728 = getelementptr inbounds double, ptr %5, i64 %727
  %729 = load double, ptr %728, align 8, !tbaa !93
  %730 = getelementptr inbounds double, ptr %6, i64 %727
  %731 = load double, ptr %730, align 8, !tbaa !93
  %732 = fadd double %731, 0xBFB70A3D70A3D70A
  %733 = fmul double %729, %732
  %734 = fmul double %733, %733
  %735 = fadd double %733, 2.000000e+01
  %736 = fcmp ogt double %726, %735
  br i1 %736, label %845, label %737, !prof !242

737:                                              ; preds = %722
  %738 = fsub double 2.000000e+01, %733
  %739 = fcmp ogt double %726, %738
  br i1 %739, label %740, label %752, !prof !243

740:                                              ; preds = %737
  %741 = fsub double %726, %733
  %742 = fdiv double 1.000000e+00, %741
  %743 = fmul double %724, %725
  %744 = fmul double %743, 1.250000e-01
  %745 = fadd double %719, %734
  %746 = tail call double @llvm.fmuladd.f64(double %742, double %742, double 0xBF647AE147AE147C)
  %747 = fmul double %742, 2.000000e+01
  %748 = tail call double @log(double noundef %747) #29
  %749 = fmul double %748, -2.000000e+00
  %750 = tail call double @llvm.fmuladd.f64(double %745, double %746, double %749)
  %751 = fmul double %744, %750
  br label %821

752:                                              ; preds = %737
  %753 = fmul double %733, 4.000000e+00
  %754 = fcmp ogt double %726, %753
  br i1 %754, label %755, label %765, !prof !244

755:                                              ; preds = %752
  %756 = fmul double %725, %734
  %757 = tail call double @llvm.fmuladd.f64(double %756, double 0x4015D1745D1745D1, double 0x4011C71C71C71C72)
  %758 = tail call double @llvm.fmuladd.f64(double %756, double %757, double 0x400B6DB6DB6DB6DB)
  %759 = tail call double @llvm.fmuladd.f64(double %756, double %758, double 2.400000e+00)
  %760 = tail call double @llvm.fmuladd.f64(double %756, double %759, double 0x3FF5555555555555)
  %761 = fmul double %733, %756
  %762 = fmul double %725, %761
  %763 = fmul double %725, %762
  %764 = fmul double %763, %760
  br label %821

765:                                              ; preds = %752
  %766 = fadd double %635, %733
  %767 = fcmp ogt double %726, %766
  br i1 %767, label %768, label %781, !prof !245

768:                                              ; preds = %765
  %769 = fsub double %719, %734
  %770 = fdiv double 1.000000e+00, %769
  %771 = fmul double %733, %770
  %772 = tail call double @llvm.fmuladd.f64(double %725, double -5.000000e-01, double %770)
  %773 = fmul double %724, 2.500000e-01
  %774 = fmul double %773, %725
  %775 = fsub double %726, %733
  %776 = fadd double %726, %733
  %777 = fdiv double %775, %776
  %778 = tail call double @log(double noundef %777) #29
  %779 = fmul double %774, %778
  %780 = tail call double @llvm.fmuladd.f64(double %771, double %772, double %779)
  br label %821

781:                                              ; preds = %765
  %782 = fsub double %635, %733
  %783 = tail call double @llvm.fabs.f64(double %782)
  %784 = fcmp ogt double %726, %783
  br i1 %784, label %785, label %803, !prof !246

785:                                              ; preds = %781
  %786 = fadd double %726, %733
  %787 = fdiv double 1.000000e+00, %786
  %788 = fmul double %724, %725
  %789 = tail call double @llvm.fmuladd.f64(double %676, double %635, double %719)
  %790 = fadd double %789, %734
  %791 = fmul double %790, -5.000000e-01
  %792 = fmul double %788, %791
  %793 = fmul double %636, %792
  %794 = fmul double %724, %787
  %795 = fsub double %787, %724
  %796 = fmul double %794, %795
  %797 = tail call double @llvm.fmuladd.f64(double %793, double %636, double %796)
  %798 = fmul double %635, %787
  %799 = tail call double @log(double noundef %798) #29
  %800 = fneg double %788
  %801 = tail call double @llvm.fmuladd.f64(double %800, double %799, double %797)
  %802 = fmul double %801, -2.500000e-01
  br label %821

803:                                              ; preds = %781
  %804 = fcmp olt double %635, %733
  br i1 %804, label %805, label %821, !prof !247

805:                                              ; preds = %803
  %806 = fsub double %719, %734
  %807 = fdiv double 1.000000e+00, %806
  %808 = fmul double %725, %733
  %809 = fmul double %733, -2.000000e+00
  %810 = fmul double %809, %807
  %811 = fmul double %807, %810
  %812 = tail call double @llvm.fmuladd.f64(double %808, double %807, double %811)
  %813 = fsub double %733, %726
  %814 = fadd double %726, %733
  %815 = fdiv double %813, %814
  %816 = tail call double @log(double noundef %815) #29
  %817 = fmul double %725, -5.000000e-01
  %818 = fmul double %724, %817
  %819 = tail call double @llvm.fmuladd.f64(double %818, double %816, double %812)
  %820 = fmul double %819, -5.000000e-01
  br label %821

821:                                              ; preds = %803, %755, %785, %805, %768, %740
  %822 = phi double [ %751, %740 ], [ %764, %755 ], [ %780, %768 ], [ %802, %785 ], [ %820, %805 ], [ 0.000000e+00, %803 ]
  %823 = insertelement <2 x double> poison, double %822, i64 0
  %824 = shufflevector <2 x double> %823, <2 x double> poison, <2 x i32> zeroinitializer
  %825 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %702, <2 x double> %824, <2 x double> %683)
  %826 = tail call double @llvm.fmuladd.f64(double %707, double %822, double %680)
  %827 = load i1, ptr @dim, align 4
  br i1 %827, label %828, label %830, !prof !273

828:                                              ; preds = %821
  %829 = tail call double @llvm.fmuladd.f64(double %720, double %822, double %681)
  br label %830

830:                                              ; preds = %828, %821
  %831 = phi double [ %829, %828 ], [ %681, %821 ]
  %832 = fmul double %674, %822
  %833 = getelementptr inbounds double, ptr %4, i64 %699
  %834 = load <2 x double>, ptr %833, align 8, !tbaa !93
  %835 = insertelement <2 x double> poison, double %832, i64 0
  %836 = shufflevector <2 x double> %835, <2 x double> poison, <2 x i32> zeroinitializer
  %837 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %702, <2 x double> %836, <2 x double> %834)
  store <2 x double> %837, ptr %833, align 8, !tbaa !93
  %838 = getelementptr inbounds double, ptr %4, i64 %704
  %839 = load double, ptr %838, align 8, !tbaa !93
  %840 = tail call double @llvm.fmuladd.f64(double %707, double %832, double %839)
  store double %840, ptr %838, align 8, !tbaa !93
  br i1 %827, label %841, label %845, !prof !273

841:                                              ; preds = %830
  %842 = getelementptr double, ptr %833, i64 3
  %843 = load double, ptr %842, align 8, !tbaa !93
  %844 = tail call double @llvm.fmuladd.f64(double %720, double %832, double %843)
  store double %844, ptr %842, align 8, !tbaa !93
  br label %845

845:                                              ; preds = %830, %841, %722, %718
  %846 = phi double [ %681, %718 ], [ %681, %722 ], [ %831, %841 ], [ %831, %830 ]
  %847 = phi double [ %680, %718 ], [ %680, %722 ], [ %826, %841 ], [ %826, %830 ]
  %848 = phi <2 x double> [ %683, %718 ], [ %683, %722 ], [ %825, %841 ], [ %825, %830 ]
  %849 = add nuw nsw i64 %679, 1
  %850 = icmp eq i64 %849, %677
  br i1 %850, label %851, label %678, !prof !274, !llvm.loop !275

851:                                              ; preds = %845
  %852 = getelementptr inbounds double, ptr %4, i64 %621
  %853 = fneg double %674
  %854 = load <2 x double>, ptr %852, align 8, !tbaa !93
  %855 = insertelement <2 x double> poison, double %853, i64 0
  %856 = shufflevector <2 x double> %855, <2 x double> poison, <2 x i32> zeroinitializer
  %857 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %856, <2 x double> %848, <2 x double> %854)
  store <2 x double> %857, ptr %852, align 8, !tbaa !93
  %858 = getelementptr inbounds double, ptr %4, i64 %625
  %859 = load double, ptr %858, align 8, !tbaa !93
  %860 = tail call double @llvm.fmuladd.f64(double %853, double %847, double %859)
  store double %860, ptr %858, align 8, !tbaa !93
  %861 = load i1, ptr @dim, align 4
  br i1 %861, label %862, label %866, !prof !238

862:                                              ; preds = %851
  %863 = getelementptr double, ptr %852, i64 3
  %864 = load double, ptr %863, align 8, !tbaa !93
  %865 = tail call double @llvm.fmuladd.f64(double %853, double %846, double %864)
  store double %865, ptr %863, align 8, !tbaa !93
  br label %866

866:                                              ; preds = %851, %862, %601
  %867 = phi double [ %604, %601 ], [ %720, %862 ], [ %720, %851 ]
  %868 = phi double [ %603, %601 ], [ %632, %862 ], [ %632, %851 ]
  %869 = add nuw nsw i64 %602, 1
  %870 = load ptr, ptr @prm, align 8, !tbaa !90
  %871 = getelementptr inbounds %struct.parm, ptr %870, i64 0, i32 4
  %872 = load i32, ptr %871, align 8, !tbaa !108
  %873 = sext i32 %872 to i64
  %874 = icmp slt i64 %869, %873
  br i1 %874, label %601, label %875, !prof !251, !llvm.loop !276

875:                                              ; preds = %866, %293, %304, %313
  %876 = phi double [ %594, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %594, %866 ]
  %877 = phi double [ %593, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %593, %866 ]
  %878 = phi double [ %592, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %592, %866 ]
  store double %877, ptr %9, align 8, !tbaa !93
  store double %878, ptr %8, align 8, !tbaa !93
  store double 0.000000e+00, ptr %11, align 8, !tbaa !93
  br label %879

879:                                              ; preds = %36, %39, %875
  %880 = phi double [ %876, %875 ], [ 0.000000e+00, %39 ], [ 0.000000e+00, %36 ]
  ret double %880
}

; Function Attrs: optsize
declare i32 @nblist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @ebond(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #20 !prof !277 !PGOFuncName !278 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %101, !prof !279

10:                                               ; preds = %8
  %11 = zext nneg i32 %0 to i64
  %12 = load i1, ptr @dim, align 4
  br label %13

13:                                               ; preds = %10, %98
  %14 = phi i1 [ %12, %10 ], [ %89, %98 ]
  %15 = phi i64 [ 0, %10 ], [ %99, %98 ]
  %16 = phi double [ 0.000000e+00, %10 ], [ %71, %98 ]
  %17 = phi double [ undef, %10 ], [ %60, %98 ]
  %18 = select i1 %14, i32 4, i32 3
  %19 = getelementptr inbounds i32, ptr %1, i64 %15
  %20 = load i32, ptr %19, align 4, !tbaa !81
  %21 = mul nsw i32 %18, %20
  %22 = sdiv i32 %21, 3
  %23 = getelementptr inbounds i32, ptr %2, i64 %15
  %24 = load i32, ptr %23, align 4, !tbaa !81
  %25 = mul nsw i32 %24, %18
  %26 = sdiv i32 %25, 3
  %27 = getelementptr inbounds i32, ptr %3, i64 %15
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds double, ptr %6, i64 %30
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds double, ptr %6, i64 %32
  %34 = load <2 x double>, ptr %31, align 8, !tbaa !93
  %35 = load <2 x double>, ptr %33, align 8, !tbaa !93
  %36 = fsub <2 x double> %34, %35
  %37 = add nsw i32 %22, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %6, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !93
  %41 = add nsw i32 %26, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %6, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !93
  %45 = fsub double %40, %44
  %46 = fmul <2 x double> %36, %36
  %47 = extractelement <2 x double> %46, i64 1
  %48 = extractelement <2 x double> %36, i64 0
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %47)
  %50 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %49)
  br i1 %14, label %51, label %58, !prof !280

51:                                               ; preds = %13
  %52 = getelementptr double, ptr %31, i64 3
  %53 = load double, ptr %52, align 8, !tbaa !93
  %54 = getelementptr double, ptr %33, i64 3
  %55 = load double, ptr %54, align 8, !tbaa !93
  %56 = fsub double %53, %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %50)
  br label %58

58:                                               ; preds = %51, %13
  %59 = phi double [ %57, %51 ], [ %50, %13 ]
  %60 = phi double [ %56, %51 ], [ %17, %13 ]
  %61 = tail call double @sqrt(double noundef %59) #29
  %62 = fdiv double 2.000000e+00, %61
  %63 = sext i32 %29 to i64
  %64 = getelementptr inbounds double, ptr %5, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !93
  %66 = fsub double %61, %65
  %67 = getelementptr inbounds double, ptr %4, i64 %63
  %68 = load double, ptr %67, align 8, !tbaa !93
  %69 = fmul double %68, %66
  %70 = fmul double %66, %69
  %71 = fadd double %16, %70
  %72 = fmul double %62, %69
  %73 = getelementptr inbounds double, ptr %7, i64 %30
  %74 = load <2 x double>, ptr %73, align 8, !tbaa !93
  %75 = insertelement <2 x double> poison, double %72, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %76, <2 x double> %74)
  store <2 x double> %77, ptr %73, align 8, !tbaa !93
  %78 = getelementptr inbounds double, ptr %7, i64 %38
  %79 = load double, ptr %78, align 8, !tbaa !93
  %80 = tail call double @llvm.fmuladd.f64(double %45, double %72, double %79)
  store double %80, ptr %78, align 8, !tbaa !93
  %81 = getelementptr inbounds double, ptr %7, i64 %32
  %82 = fneg <2 x double> %36
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !93
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %76, <2 x double> %83)
  store <2 x double> %84, ptr %81, align 8, !tbaa !93
  %85 = getelementptr inbounds double, ptr %7, i64 %42
  %86 = load double, ptr %85, align 8, !tbaa !93
  %87 = fneg double %45
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %72, double %86)
  store double %88, ptr %85, align 8, !tbaa !93
  %89 = load i1, ptr @dim, align 4
  br i1 %89, label %90, label %98, !prof !280

90:                                               ; preds = %58
  %91 = getelementptr double, ptr %73, i64 3
  %92 = load double, ptr %91, align 8, !tbaa !93
  %93 = tail call double @llvm.fmuladd.f64(double %60, double %72, double %92)
  store double %93, ptr %91, align 8, !tbaa !93
  %94 = getelementptr double, ptr %81, i64 3
  %95 = load double, ptr %94, align 8, !tbaa !93
  %96 = fneg double %60
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %72, double %95)
  store double %97, ptr %94, align 8, !tbaa !93
  br label %98

98:                                               ; preds = %58, %90
  %99 = add nuw nsw i64 %15, 1
  %100 = icmp eq i64 %99, %11
  br i1 %100, label %101, label %13, !prof !281, !llvm.loop !282

101:                                              ; preds = %98, %8
  %102 = phi double [ 0.000000e+00, %8 ], [ %71, %98 ]
  ret double %102
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @eangl(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) unnamed_addr #20 !prof !277 !PGOFuncName !283 {
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %232, !prof !279

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64
  %13 = load i1, ptr @dim, align 4
  br label %14

14:                                               ; preds = %11, %229
  %15 = phi i1 [ %13, %11 ], [ %211, %229 ]
  %16 = phi i64 [ 0, %11 ], [ %230, %229 ]
  %17 = phi double [ 0.000000e+00, %11 ], [ %151, %229 ]
  %18 = phi <2 x double> [ undef, %11 ], [ %135, %229 ]
  %19 = phi <2 x double> [ undef, %11 ], [ %101, %229 ]
  %20 = select i1 %15, i32 4, i32 3
  %21 = getelementptr inbounds i32, ptr %1, i64 %16
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 3
  %25 = getelementptr inbounds i32, ptr %2, i64 %16
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = mul nsw i32 %26, %20
  %28 = sdiv i32 %27, 3
  %29 = getelementptr inbounds i32, ptr %3, i64 %16
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = mul nsw i32 %30, %20
  %32 = sdiv i32 %31, 3
  %33 = getelementptr inbounds i32, ptr %4, i64 %16
  %34 = load i32, ptr %33, align 4, !tbaa !81
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %24 to i64
  %37 = getelementptr inbounds double, ptr %7, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !93
  %39 = sext i32 %28 to i64
  %40 = getelementptr inbounds double, ptr %7, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !93
  %42 = add nsw i32 %24, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %7, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !93
  %46 = add nsw i32 %28, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %7, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !93
  %50 = add nsw i32 %24, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %7, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !93
  %54 = add nsw i32 %28, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %7, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !93
  %58 = sext i32 %32 to i64
  %59 = getelementptr inbounds double, ptr %7, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !93
  %61 = add nsw i32 %32, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %7, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !93
  %65 = add nsw i32 %32, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %7, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !93
  %69 = insertelement <2 x double> poison, double %60, i64 0
  %70 = insertelement <2 x double> %69, double %38, i64 1
  %71 = insertelement <2 x double> poison, double %41, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fsub <2 x double> %70, %72
  %74 = insertelement <2 x double> poison, double %64, i64 0
  %75 = insertelement <2 x double> %74, double %45, i64 1
  %76 = insertelement <2 x double> poison, double %49, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = fsub <2 x double> %75, %77
  %79 = insertelement <2 x double> poison, double %68, i64 0
  %80 = insertelement <2 x double> %79, double %53, i64 1
  %81 = insertelement <2 x double> poison, double %57, i64 0
  %82 = shufflevector <2 x double> %81, <2 x double> poison, <2 x i32> zeroinitializer
  %83 = fsub <2 x double> %80, %82
  %84 = fmul <2 x double> %78, %78
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %73, <2 x double> %84)
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %83, <2 x double> %83, <2 x double> %85)
  br i1 %15, label %87, label %100, !prof !284

87:                                               ; preds = %14
  %88 = getelementptr double, ptr %37, i64 3
  %89 = load double, ptr %88, align 8, !tbaa !93
  %90 = getelementptr double, ptr %40, i64 3
  %91 = load double, ptr %90, align 8, !tbaa !93
  %92 = getelementptr double, ptr %59, i64 3
  %93 = load double, ptr %92, align 8, !tbaa !93
  %94 = insertelement <2 x double> poison, double %93, i64 0
  %95 = insertelement <2 x double> %94, double %89, i64 1
  %96 = insertelement <2 x double> poison, double %91, i64 0
  %97 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> zeroinitializer
  %98 = fsub <2 x double> %95, %97
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %98, <2 x double> %86)
  br label %100

100:                                              ; preds = %87, %14
  %101 = phi <2 x double> [ %98, %87 ], [ %19, %14 ]
  %102 = phi <2 x double> [ %99, %87 ], [ %86, %14 ]
  %103 = extractelement <2 x double> %102, i64 1
  %104 = tail call double @sqrt(double noundef %103) #29
  %105 = extractelement <2 x double> %102, i64 0
  %106 = tail call double @sqrt(double noundef %105) #29
  %107 = insertelement <2 x double> poison, double %106, i64 0
  %108 = insertelement <2 x double> %107, double %104, i64 1
  %109 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %108
  %110 = extractelement <2 x double> %109, i64 1
  %111 = fmul <2 x double> %73, %109
  %112 = extractelement <2 x double> %111, i64 1
  %113 = fmul <2 x double> %78, %109
  %114 = extractelement <2 x double> %113, i64 1
  %115 = fmul <2 x double> %83, %109
  %116 = extractelement <2 x double> %115, i64 1
  %117 = extractelement <2 x double> %109, i64 0
  %118 = fmul <2 x double> %73, %109
  %119 = extractelement <2 x double> %118, i64 0
  %120 = fmul <2 x double> %78, %109
  %121 = extractelement <2 x double> %120, i64 0
  %122 = fmul <2 x double> %83, %109
  %123 = extractelement <2 x double> %122, i64 0
  %124 = fmul double %114, %121
  %125 = tail call double @llvm.fmuladd.f64(double %112, double %119, double %124)
  %126 = tail call double @llvm.fmuladd.f64(double %116, double %123, double %125)
  %127 = load i1, ptr @dim, align 4
  br i1 %127, label %128, label %133, !prof !284

128:                                              ; preds = %100
  %129 = fmul <2 x double> %101, %109
  %130 = extractelement <2 x double> %129, i64 0
  %131 = extractelement <2 x double> %129, i64 1
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %130, double %126)
  br label %133

133:                                              ; preds = %128, %100
  %134 = phi double [ %132, %128 ], [ %126, %100 ]
  %135 = phi <2 x double> [ %129, %128 ], [ %18, %100 ]
  %136 = fcmp ogt double %134, 1.000000e+00
  br i1 %136, label %140, label %137, !prof !284

137:                                              ; preds = %133
  %138 = fcmp olt double %134, -1.000000e+00
  br i1 %138, label %139, label %140, !prof !285

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %133, %139, %137
  %141 = phi double [ -1.000000e+00, %139 ], [ %134, %137 ], [ 1.000000e+00, %133 ]
  %142 = tail call double @acos(double noundef %141) #29
  %143 = sext i32 %35 to i64
  %144 = getelementptr inbounds double, ptr %6, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !93
  %146 = fsub double %142, %145
  %147 = getelementptr inbounds double, ptr %5, i64 %143
  %148 = load double, ptr %147, align 8, !tbaa !93
  %149 = fmul double %146, %148
  %150 = fmul double %146, %149
  %151 = fadd double %17, %150
  %152 = fadd double %149, %149
  %153 = tail call double @sin(double noundef %142) #29
  %154 = fcmp ogt double %153, 0.000000e+00
  %155 = fcmp olt double %153, 1.000000e-03
  %156 = and i1 %154, %155
  br i1 %156, label %162, label %157, !prof !286

157:                                              ; preds = %140
  %158 = fcmp olt double %153, 0.000000e+00
  br i1 %158, label %159, label %162, !prof !284

159:                                              ; preds = %157
  %160 = fcmp ogt double %153, -1.000000e-03
  br i1 %160, label %161, label %162

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %140, %157, %159, %161
  %163 = phi double [ -1.000000e-03, %161 ], [ %153, %159 ], [ %153, %157 ], [ 1.000000e-03, %140 ]
  %164 = fneg double %152
  %165 = fdiv double %164, %163
  %166 = fmul double %110, %165
  %167 = fneg double %141
  %168 = tail call double @llvm.fmuladd.f64(double %167, double %112, double %119)
  %169 = fmul double %168, %166
  %170 = fmul double %117, %165
  %171 = tail call double @llvm.fmuladd.f64(double %167, double %119, double %112)
  %172 = fmul double %171, %170
  %173 = tail call double @llvm.fmuladd.f64(double %167, double %114, double %121)
  %174 = fmul double %173, %166
  %175 = tail call double @llvm.fmuladd.f64(double %167, double %121, double %114)
  %176 = fmul double %175, %170
  %177 = tail call double @llvm.fmuladd.f64(double %167, double %116, double %123)
  %178 = fmul double %177, %166
  %179 = tail call double @llvm.fmuladd.f64(double %167, double %123, double %116)
  %180 = fmul double %179, %170
  %181 = getelementptr inbounds double, ptr %8, i64 %36
  %182 = load double, ptr %181, align 8, !tbaa !93
  %183 = fadd double %182, %169
  store double %183, ptr %181, align 8, !tbaa !93
  %184 = getelementptr inbounds double, ptr %8, i64 %58
  %185 = load double, ptr %184, align 8, !tbaa !93
  %186 = fadd double %185, %172
  store double %186, ptr %184, align 8, !tbaa !93
  %187 = fadd double %169, %172
  %188 = getelementptr inbounds double, ptr %8, i64 %39
  %189 = load double, ptr %188, align 8, !tbaa !93
  %190 = fsub double %189, %187
  store double %190, ptr %188, align 8, !tbaa !93
  %191 = getelementptr inbounds double, ptr %8, i64 %43
  %192 = load double, ptr %191, align 8, !tbaa !93
  %193 = fadd double %174, %192
  store double %193, ptr %191, align 8, !tbaa !93
  %194 = getelementptr inbounds double, ptr %8, i64 %62
  %195 = load double, ptr %194, align 8, !tbaa !93
  %196 = fadd double %176, %195
  store double %196, ptr %194, align 8, !tbaa !93
  %197 = fadd double %174, %176
  %198 = getelementptr inbounds double, ptr %8, i64 %47
  %199 = load double, ptr %198, align 8, !tbaa !93
  %200 = fsub double %199, %197
  store double %200, ptr %198, align 8, !tbaa !93
  %201 = getelementptr inbounds double, ptr %8, i64 %51
  %202 = load double, ptr %201, align 8, !tbaa !93
  %203 = fadd double %178, %202
  store double %203, ptr %201, align 8, !tbaa !93
  %204 = getelementptr inbounds double, ptr %8, i64 %66
  %205 = load double, ptr %204, align 8, !tbaa !93
  %206 = fadd double %180, %205
  store double %206, ptr %204, align 8, !tbaa !93
  %207 = fadd double %178, %180
  %208 = getelementptr inbounds double, ptr %8, i64 %55
  %209 = load double, ptr %208, align 8, !tbaa !93
  %210 = fsub double %209, %207
  store double %210, ptr %208, align 8, !tbaa !93
  %211 = load i1, ptr @dim, align 4
  br i1 %211, label %212, label %229, !prof !284

212:                                              ; preds = %162
  %213 = extractelement <2 x double> %135, i64 0
  %214 = extractelement <2 x double> %135, i64 1
  %215 = tail call double @llvm.fmuladd.f64(double %167, double %214, double %213)
  %216 = fmul double %215, %166
  %217 = tail call double @llvm.fmuladd.f64(double %167, double %213, double %214)
  %218 = fmul double %217, %170
  %219 = getelementptr double, ptr %181, i64 3
  %220 = load double, ptr %219, align 8, !tbaa !93
  %221 = fadd double %216, %220
  store double %221, ptr %219, align 8, !tbaa !93
  %222 = getelementptr double, ptr %184, i64 3
  %223 = load double, ptr %222, align 8, !tbaa !93
  %224 = fadd double %218, %223
  store double %224, ptr %222, align 8, !tbaa !93
  %225 = fadd double %216, %218
  %226 = getelementptr double, ptr %188, i64 3
  %227 = load double, ptr %226, align 8, !tbaa !93
  %228 = fsub double %227, %225
  store double %228, ptr %226, align 8, !tbaa !93
  br label %229

229:                                              ; preds = %162, %212
  %230 = add nuw nsw i64 %16, 1
  %231 = icmp eq i64 %230, %12
  br i1 %231, label %232, label %14, !prof !287, !llvm.loop !288

232:                                              ; preds = %229, %9
  %233 = phi double [ 0.000000e+00, %9 ], [ %151, %229 ]
  ret double %233
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @ephi(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef %10) unnamed_addr #2 !prof !277 !PGOFuncName !289 {
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %572, !prof !279

13:                                               ; preds = %11
  %14 = zext nneg i32 %0 to i64
  %15 = load i1, ptr @dim, align 4
  br label %16

16:                                               ; preds = %13, %569
  %17 = phi i1 [ %15, %13 ], [ %544, %569 ]
  %18 = phi i64 [ 0, %13 ], [ %570, %569 ]
  %19 = phi double [ undef, %13 ], [ %150, %569 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %514, %569 ]
  %21 = phi <4 x double> [ zeroinitializer, %13 ], [ %336, %569 ]
  %22 = phi <2 x double> [ undef, %13 ], [ %153, %569 ]
  %23 = select i1 %17, i32 4, i32 3
  %24 = getelementptr inbounds i32, ptr %1, i64 %18
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = mul nsw i32 %23, %25
  %27 = sdiv i32 %26, 3
  %28 = getelementptr inbounds i32, ptr %2, i64 %18
  %29 = load i32, ptr %28, align 4, !tbaa !81
  %30 = mul nsw i32 %29, %23
  %31 = sdiv i32 %30, 3
  %32 = getelementptr inbounds i32, ptr %3, i64 %18
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = mul nsw i32 %34, %23
  %36 = udiv i32 %35, 3
  %37 = getelementptr inbounds i32, ptr %4, i64 %18
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = mul nsw i32 %39, %23
  %41 = udiv i32 %40, 3
  %42 = getelementptr inbounds i32, ptr %5, i64 %18
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = add nsw i32 %43, -1
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds double, ptr %9, i64 %45
  %47 = sext i32 %27 to i64
  %48 = getelementptr inbounds double, ptr %9, i64 %47
  %49 = add nsw i32 %31, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %9, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !93
  %53 = add nsw i32 %27, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %9, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !93
  %57 = zext nneg i32 %36 to i64
  %58 = getelementptr inbounds double, ptr %9, i64 %57
  %59 = add nuw nsw i32 %36, 2
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %9, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !93
  %63 = insertelement <2 x double> poison, double %52, i64 0
  %64 = insertelement <2 x double> %63, double %62, i64 1
  %65 = insertelement <2 x double> poison, double %56, i64 0
  %66 = insertelement <2 x double> %65, double %52, i64 1
  %67 = fsub <2 x double> %64, %66
  %68 = zext nneg i32 %41 to i64
  %69 = getelementptr inbounds double, ptr %9, i64 %68
  %70 = load <2 x double>, ptr %46, align 8, !tbaa !93
  %71 = load <2 x double>, ptr %48, align 8, !tbaa !93
  %72 = fsub <2 x double> %70, %71
  %73 = load <2 x double>, ptr %58, align 8, !tbaa !93
  %74 = fsub <2 x double> %73, %70
  %75 = load <2 x double>, ptr %69, align 8, !tbaa !93
  %76 = fsub <2 x double> %75, %73
  %77 = add nuw nsw i32 %41, 2
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %9, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !93
  %81 = fsub double %80, %62
  br i1 %17, label %82, label %127, !prof !290

82:                                               ; preds = %16
  %83 = getelementptr double, ptr %46, i64 3
  %84 = load double, ptr %83, align 8, !tbaa !93
  %85 = getelementptr double, ptr %48, i64 3
  %86 = load double, ptr %85, align 8, !tbaa !93
  %87 = getelementptr double, ptr %58, i64 3
  %88 = load double, ptr %87, align 8, !tbaa !93
  %89 = getelementptr double, ptr %69, i64 3
  %90 = load double, ptr %89, align 8, !tbaa !93
  %91 = fsub double %90, %88
  %92 = insertelement <2 x double> poison, double %84, i64 0
  %93 = insertelement <2 x double> %92, double %88, i64 1
  %94 = insertelement <2 x double> poison, double %86, i64 0
  %95 = insertelement <2 x double> %94, double %84, i64 1
  %96 = fsub <2 x double> %93, %95
  %97 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %98 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 3>
  %99 = fmul <2 x double> %97, %98
  %100 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 0, i32 2>
  %101 = shufflevector <2 x double> %74, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %101, <2 x double> %99)
  %103 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %104 = insertelement <2 x double> %103, double %81, i64 1
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %104, <2 x double> %102)
  %106 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %107 = insertelement <2 x double> %106, double %91, i64 1
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %107, <2 x double> %105)
  %109 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 1, i32 3>
  %110 = fmul <2 x double> %109, %109
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %100, <2 x double> %110)
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %67, <2 x double> %111)
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %96, <2 x double> %112)
  %114 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %115 = fmul <2 x double> %114, %98
  %116 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %117 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %117, <2 x double> %115)
  %119 = insertelement <2 x double> %67, double %81, i64 1
  %120 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %121 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %119, <2 x double> %120, <2 x double> %118)
  %122 = insertelement <2 x double> %96, double %91, i64 1
  %123 = shufflevector <2 x double> %122, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %122, <2 x double> %123, <2 x double> %121)
  %125 = shufflevector <2 x double> %107, <2 x double> %96, <2 x i32> <i32 1, i32 2>
  %126 = extractelement <2 x double> %96, i64 1
  br label %149

127:                                              ; preds = %16
  %128 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %129 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 3>
  %130 = fmul <2 x double> %128, %129
  %131 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 0, i32 2>
  %132 = shufflevector <2 x double> %74, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %133 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %131, <2 x double> %132, <2 x double> %130)
  %134 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %135 = insertelement <2 x double> %134, double %81, i64 1
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %135, <2 x double> %133)
  %137 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 1, i32 3>
  %138 = fmul <2 x double> %137, %137
  %139 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %131, <2 x double> %131, <2 x double> %138)
  %140 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %67, <2 x double> %139)
  %141 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %142 = fmul <2 x double> %141, %129
  %143 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %144 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %143, <2 x double> %144, <2 x double> %142)
  %146 = insertelement <2 x double> %67, double %81, i64 1
  %147 = shufflevector <2 x double> %146, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %148 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %147, <2 x double> %145)
  br label %149

149:                                              ; preds = %127, %82
  %150 = phi double [ %126, %82 ], [ %19, %127 ]
  %151 = phi <2 x double> [ %113, %82 ], [ %140, %127 ]
  %152 = phi <2 x double> [ %108, %82 ], [ %136, %127 ]
  %153 = phi <2 x double> [ %125, %82 ], [ %22, %127 ]
  %154 = phi <2 x double> [ %124, %82 ], [ %148, %127 ]
  %155 = fneg <2 x double> %152
  %156 = extractelement <2 x double> %154, i64 0
  %157 = fneg double %156
  %158 = extractelement <2 x double> %151, i64 1
  %159 = fmul double %158, %157
  %160 = extractelement <2 x double> %152, i64 0
  %161 = extractelement <2 x double> %152, i64 1
  %162 = tail call double @llvm.fmuladd.f64(double %160, double %161, double %159)
  %163 = fmul double %81, %158
  %164 = extractelement <2 x double> %67, i64 1
  %165 = extractelement <2 x double> %155, i64 1
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %164, double %163)
  %167 = fmul double %156, -2.000000e+00
  %168 = extractelement <2 x double> %67, i64 0
  %169 = fmul double %168, %161
  %170 = tail call double @llvm.fmuladd.f64(double %160, double %81, double %169)
  %171 = tail call double @llvm.fmuladd.f64(double %167, double %164, double %170)
  %172 = fneg double %158
  %173 = fmul double %168, %172
  %174 = tail call double @llvm.fmuladd.f64(double %160, double %164, double %173)
  %175 = extractelement <2 x double> %154, i64 1
  %176 = fneg double %175
  %177 = fmul double %81, %161
  %178 = tail call double @llvm.fmuladd.f64(double %176, double %164, double %177)
  %179 = fmul double %164, %165
  %180 = tail call double @llvm.fmuladd.f64(double %158, double %81, double %179)
  %181 = fmul <2 x double> %152, %155
  %182 = shufflevector <2 x double> %151, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %183 = shufflevector <2 x double> %182, <2 x double> %154, <2 x i32> <i32 0, i32 3>
  %184 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %151, <2 x double> %183, <2 x double> %181)
  %185 = extractelement <2 x double> %184, i64 0
  %186 = extractelement <2 x double> %184, i64 1
  %187 = fmul double %186, %185
  %188 = tail call double @sqrt(double noundef %187) #29
  %189 = fdiv double 1.000000e+00, %188
  %190 = fmul double %162, %189
  %191 = fmul double %190, 5.000000e-01
  %192 = fmul double %189, %191
  %193 = fmul <2 x double> %184, <double 2.000000e+00, double -2.000000e+00>
  %194 = extractelement <2 x double> %193, i64 0
  %195 = fmul double %178, %194
  %196 = fmul double %180, %194
  %197 = extractelement <2 x double> %155, i64 0
  %198 = fmul double %164, %197
  %199 = tail call double @llvm.fmuladd.f64(double %158, double %168, double %198)
  %200 = extractelement <2 x double> %193, i64 1
  %201 = fmul double %199, %200
  %202 = fmul double %186, 2.000000e+00
  %203 = fmul <2 x double> %67, %155
  %204 = extractelement <2 x double> %203, i64 0
  %205 = extractelement <2 x double> %151, i64 0
  %206 = tail call double @llvm.fmuladd.f64(double %205, double %164, double %204)
  %207 = fmul double %202, %206
  %208 = fneg double %201
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %192, double %166)
  %210 = fmul double %189, %209
  %211 = fneg double %166
  %212 = fsub double %211, %171
  %213 = fsub double %195, %201
  %214 = fsub double %213, %207
  %215 = fneg double %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double %192, double %212)
  %217 = fmul double %189, %216
  %218 = fsub double %171, %174
  %219 = fneg double %195
  %220 = fsub double %219, %196
  %221 = fadd double %207, %220
  %222 = fneg double %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %192, double %218)
  %224 = fmul double %189, %223
  %225 = insertelement <2 x double> poison, double %172, i64 0
  %226 = shufflevector <2 x double> %225, <2 x double> poison, <2 x i32> zeroinitializer
  %227 = fmul <2 x double> %72, %226
  %228 = shufflevector <2 x double> %152, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %74, <2 x double> %227)
  %230 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %231 = fmul <2 x double> %74, %230
  %232 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %76, <2 x double> %231)
  %233 = shufflevector <2 x double> %193, <2 x double> poison, <2 x i32> zeroinitializer
  %234 = fmul <2 x double> %232, %233
  %235 = shufflevector <2 x double> %152, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %236 = fmul <2 x double> %72, %235
  %237 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %76, <2 x double> %236)
  %238 = insertelement <2 x double> poison, double %167, i64 0
  %239 = shufflevector <2 x double> %238, <2 x double> poison, <2 x i32> zeroinitializer
  %240 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %239, <2 x double> %74, <2 x double> %237)
  %241 = fmul <2 x double> %76, %235
  %242 = insertelement <2 x double> poison, double %176, i64 0
  %243 = shufflevector <2 x double> %242, <2 x double> poison, <2 x i32> zeroinitializer
  %244 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %243, <2 x double> %74, <2 x double> %241)
  %245 = fmul <2 x double> %244, %233
  %246 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %247 = fmul <2 x double> %72, %246
  %248 = shufflevector <2 x double> %151, <2 x double> poison, <2 x i32> zeroinitializer
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %248, <2 x double> %74, <2 x double> %247)
  %250 = insertelement <2 x double> poison, double %202, i64 0
  %251 = shufflevector <2 x double> %250, <2 x double> poison, <2 x i32> zeroinitializer
  %252 = fmul <2 x double> %251, %249
  %253 = fmul <2 x double> %76, %182
  %254 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %230, <2 x double> %74, <2 x double> %253)
  %255 = fmul <2 x double> %74, %246
  %256 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %72, <2 x double> %255)
  %257 = shufflevector <2 x double> %193, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %258 = fmul <2 x double> %256, %257
  %259 = fneg <2 x double> %258
  %260 = insertelement <2 x double> poison, double %192, i64 0
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> zeroinitializer
  %262 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %259, <2 x double> %261, <2 x double> %254)
  %263 = insertelement <2 x double> poison, double %189, i64 0
  %264 = shufflevector <2 x double> %263, <2 x double> poison, <2 x i32> zeroinitializer
  %265 = fmul <2 x double> %264, %262
  %266 = fneg <2 x double> %254
  %267 = fsub <2 x double> %266, %240
  %268 = fsub <2 x double> %245, %258
  %269 = fsub <2 x double> %268, %252
  %270 = fneg <2 x double> %269
  %271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %270, <2 x double> %261, <2 x double> %267)
  %272 = fmul <2 x double> %264, %271
  %273 = fneg <2 x double> %245
  %274 = fsub <2 x double> %240, %229
  %275 = fsub <2 x double> %273, %234
  %276 = fadd <2 x double> %252, %275
  %277 = fneg <2 x double> %276
  %278 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %277, <2 x double> %261, <2 x double> %274)
  %279 = fmul <2 x double> %264, %278
  %280 = fneg <2 x double> %234
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> %261, <2 x double> %229)
  %282 = fmul <2 x double> %264, %281
  %283 = fneg double %196
  %284 = tail call double @llvm.fmuladd.f64(double %283, double %192, double %174)
  %285 = fmul double %189, %284
  %286 = load i1, ptr @dim, align 4
  br i1 %286, label %287, label %335, !prof !290

287:                                              ; preds = %149
  %288 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %289 = extractelement <2 x double> %153, i64 0
  %290 = fmul double %158, %289
  %291 = tail call double @llvm.fmuladd.f64(double %165, double %150, double %290)
  %292 = extractelement <2 x double> %153, i64 1
  %293 = fmul double %161, %292
  %294 = tail call double @llvm.fmuladd.f64(double %160, double %289, double %293)
  %295 = tail call double @llvm.fmuladd.f64(double %167, double %150, double %294)
  %296 = fmul double %292, %172
  %297 = tail call double @llvm.fmuladd.f64(double %160, double %150, double %296)
  %298 = fmul double %161, %289
  %299 = tail call double @llvm.fmuladd.f64(double %176, double %150, double %298)
  %300 = fmul double %194, %299
  %301 = insertelement <2 x double> poison, double %150, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = fmul <2 x double> %302, %288
  %304 = fmul double %292, %197
  %305 = tail call double @llvm.fmuladd.f64(double %205, double %150, double %304)
  %306 = fmul double %202, %305
  %307 = fneg double %291
  %308 = fsub double %307, %295
  %309 = fsub double %295, %297
  %310 = fneg double %300
  %311 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %153, <2 x double> %303)
  %312 = fmul <2 x double> %193, %311
  %313 = insertelement <2 x double> poison, double %310, i64 0
  %314 = insertelement <2 x double> %313, double %300, i64 1
  %315 = fsub <2 x double> %314, %312
  %316 = insertelement <2 x double> poison, double %306, i64 0
  %317 = shufflevector <2 x double> %316, <2 x double> poison, <2 x i32> zeroinitializer
  %318 = fadd <2 x double> %315, %317
  %319 = fsub <2 x double> %315, %317
  %320 = shufflevector <2 x double> %318, <2 x double> %319, <2 x i32> <i32 0, i32 3>
  %321 = shufflevector <2 x double> %312, <2 x double> %320, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %322 = shufflevector <2 x double> %312, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %323 = shufflevector <4 x double> %321, <4 x double> %322, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %324 = fneg <4 x double> %323
  %325 = insertelement <4 x double> poison, double %192, i64 0
  %326 = shufflevector <4 x double> %325, <4 x double> poison, <4 x i32> zeroinitializer
  %327 = insertelement <4 x double> poison, double %297, i64 0
  %328 = insertelement <4 x double> %327, double %309, i64 1
  %329 = insertelement <4 x double> %328, double %308, i64 2
  %330 = insertelement <4 x double> %329, double %291, i64 3
  %331 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %324, <4 x double> %326, <4 x double> %330)
  %332 = insertelement <4 x double> poison, double %189, i64 0
  %333 = shufflevector <4 x double> %332, <4 x double> poison, <4 x i32> zeroinitializer
  %334 = fmul <4 x double> %333, %331
  br label %335

335:                                              ; preds = %287, %149
  %336 = phi <4 x double> [ %334, %287 ], [ %21, %149 ]
  %337 = load ptr, ptr @prm, align 8, !tbaa !90
  %338 = getelementptr inbounds %struct.parm, ptr %337, i64 0, i32 12
  %339 = load i32, ptr %338, align 8, !tbaa !291
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %443, label %341, !prof !292

341:                                              ; preds = %335
  %342 = load i32, ptr %32, align 4, !tbaa !81
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %443

344:                                              ; preds = %341
  %345 = fcmp ogt double %190, 1.000000e+00
  %346 = select i1 %345, double 1.000000e+00, double %190
  %347 = fcmp olt double %346, -1.000000e+00
  %348 = select i1 %347, double -1.000000e+00, double %346
  %349 = tail call double @acos(double noundef %348) #29
  %350 = fneg double %168
  %351 = extractelement <2 x double> %74, i64 1
  %352 = fmul double %351, %350
  %353 = extractelement <2 x double> %72, i64 1
  %354 = tail call double @llvm.fmuladd.f64(double %353, double %164, double %352)
  %355 = extractelement <2 x double> %72, i64 0
  %356 = fneg double %355
  %357 = fmul double %164, %356
  %358 = extractelement <2 x double> %74, i64 0
  %359 = tail call double @llvm.fmuladd.f64(double %168, double %358, double %357)
  %360 = fneg double %353
  %361 = fmul double %358, %360
  %362 = tail call double @llvm.fmuladd.f64(double %355, double %351, double %361)
  %363 = fneg double %164
  %364 = extractelement <2 x double> %76, i64 1
  %365 = fmul double %364, %363
  %366 = tail call double @llvm.fmuladd.f64(double %351, double %81, double %365)
  %367 = fneg double %358
  %368 = fmul double %81, %367
  %369 = extractelement <2 x double> %76, i64 0
  %370 = tail call double @llvm.fmuladd.f64(double %164, double %369, double %368)
  %371 = fneg double %351
  %372 = fmul double %369, %371
  %373 = tail call double @llvm.fmuladd.f64(double %358, double %364, double %372)
  %374 = fneg double %362
  %375 = fmul double %370, %374
  %376 = tail call double @llvm.fmuladd.f64(double %359, double %373, double %375)
  %377 = fneg double %354
  %378 = fmul double %373, %377
  %379 = tail call double @llvm.fmuladd.f64(double %362, double %366, double %378)
  %380 = fneg double %359
  %381 = fmul double %366, %380
  %382 = tail call double @llvm.fmuladd.f64(double %354, double %370, double %381)
  %383 = fmul double %351, %379
  %384 = tail call double @llvm.fmuladd.f64(double %376, double %358, double %383)
  %385 = tail call double @llvm.fmuladd.f64(double %382, double %164, double %384)
  %386 = fcmp olt double %385, 0.000000e+00
  %387 = fneg double %349
  %388 = select i1 %386, double %387, double %349
  %389 = sext i32 %44 to i64
  %390 = getelementptr inbounds double, ptr %8, i64 %389
  %391 = load double, ptr %390, align 8, !tbaa !93
  %392 = fsub double %388, %391
  %393 = fcmp ogt double %392, 0x400921FB5A7ED197
  %394 = select i1 %393, double 0x400921FB5A7ED197, double %392
  %395 = fcmp olt double %394, 0xC00921FB5A7ED197
  %396 = select i1 %395, double 0xC00921FB5A7ED197, double %394
  %397 = getelementptr inbounds double, ptr %6, i64 %389
  %398 = load double, ptr %397, align 8, !tbaa !93
  %399 = fmul double %398, %396
  %400 = fmul double %396, %399
  %401 = fadd double %20, %400
  %402 = tail call double @sin(double noundef %388) #29
  %403 = tail call double @llvm.fabs.f64(double %402)
  %404 = fcmp ogt double %403, 1.000000e-03
  br i1 %404, label %405, label %408

405:                                              ; preds = %344
  %406 = fmul double %399, -2.000000e+00
  %407 = fdiv double %406, %402
  br label %513

408:                                              ; preds = %344
  %409 = tail call double @llvm.fabs.f64(double %396)
  %410 = fcmp olt double %409, 1.000000e-01
  br i1 %410, label %411, label %431

411:                                              ; preds = %408
  %412 = load double, ptr %390, align 8, !tbaa !93
  %413 = fcmp oeq double %412, 0.000000e+00
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load double, ptr %397, align 8, !tbaa !93
  %416 = fmul double %415, -2.000000e+00
  %417 = fmul double %388, %388
  %418 = fdiv double %417, 6.000000e+00
  %419 = fadd double %418, 1.000000e+00
  %420 = fmul double %419, %416
  br label %513

421:                                              ; preds = %411
  %422 = tail call double @llvm.fabs.f64(double %412)
  %423 = fcmp oeq double %422, 0x400921FB5A7ED197
  br i1 %423, label %424, label %513

424:                                              ; preds = %421
  %425 = load double, ptr %397, align 8, !tbaa !93
  %426 = fmul double %425, 2.000000e+00
  %427 = fmul double %396, %396
  %428 = fdiv double %427, 6.000000e+00
  %429 = fadd double %428, 1.000000e+00
  %430 = fmul double %429, %426
  br label %513

431:                                              ; preds = %408
  %432 = fcmp ogt double %388, 0.000000e+00
  %433 = fcmp olt double %388, 0x3FF921FB5A7ED197
  %434 = and i1 %432, %433
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = fcmp olt double %388, 0.000000e+00
  %437 = fcmp ogt double %388, 0xBFF921FB5A7ED197
  %438 = and i1 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %435, %431
  %440 = fmul double %399, 1.000000e+03
  br label %513

441:                                              ; preds = %435
  %442 = fmul double %399, -1.000000e+03
  br label %513

443:                                              ; preds = %335, %341, %567
  %444 = phi double [ %514, %567 ], [ %20, %341 ], [ %20, %335 ]
  %445 = phi i32 [ %568, %567 ], [ %44, %341 ], [ %44, %335 ]
  %446 = phi double [ %517, %567 ], [ %190, %341 ], [ %190, %335 ]
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds double, ptr %8, i64 %447
  %449 = load double, ptr %448, align 8, !tbaa !93
  %450 = fadd double %449, -3.142000e+00
  %451 = tail call double @llvm.fabs.f64(double %450)
  %452 = fcmp olt double %451, 1.000000e-02
  %453 = select i1 %452, double -1.000000e+00, double 1.000000e+00, !prof !293
  %454 = getelementptr inbounds double, ptr %6, i64 %447
  %455 = load double, ptr %454, align 8, !tbaa !93
  %456 = getelementptr inbounds double, ptr %7, i64 %447
  %457 = load double, ptr %456, align 8, !tbaa !93
  %458 = tail call double @llvm.fabs.f64(double %457)
  %459 = fptosi double %458 to i32
  switch i32 %459, label %505 [
    i32 1, label %460
    i32 2, label %463
    i32 3, label %470
    i32 4, label %478
    i32 6, label %488
  ], !prof !294

460:                                              ; preds = %443
  %461 = tail call double @llvm.fmuladd.f64(double %453, double %446, double 1.000000e+00)
  %462 = fmul double %455, %453
  br label %508

463:                                              ; preds = %443
  %464 = fmul double %446, 2.000000e+00
  %465 = tail call double @llvm.fmuladd.f64(double %464, double %446, double -1.000000e+00)
  %466 = tail call double @llvm.fmuladd.f64(double %453, double %465, double 1.000000e+00)
  %467 = fmul double %455, %453
  %468 = fmul double %467, 4.000000e+00
  %469 = fmul double %446, %468
  br label %508

470:                                              ; preds = %443
  %471 = fmul double %446, %446
  %472 = fmul double %446, %453
  %473 = tail call double @llvm.fmuladd.f64(double %471, double 4.000000e+00, double -3.000000e+00)
  %474 = tail call double @llvm.fmuladd.f64(double %472, double %473, double 1.000000e+00)
  %475 = fmul double %455, %453
  %476 = tail call double @llvm.fmuladd.f64(double %471, double 1.200000e+01, double -3.000000e+00)
  %477 = fmul double %476, %475
  br label %508

478:                                              ; preds = %443
  %479 = fmul double %446, %446
  %480 = fmul double %479, 8.000000e+00
  %481 = fadd double %479, -1.000000e+00
  %482 = tail call double @llvm.fmuladd.f64(double %480, double %481, double 1.000000e+00)
  %483 = tail call double @llvm.fmuladd.f64(double %453, double %482, double 1.000000e+00)
  %484 = fmul double %455, %453
  %485 = fmul double %446, %484
  %486 = tail call double @llvm.fmuladd.f64(double %479, double 3.200000e+01, double -1.600000e+01)
  %487 = fmul double %486, %485
  br label %508

488:                                              ; preds = %443
  %489 = fmul double %446, %446
  %490 = fmul double %489, 3.200000e+01
  %491 = fmul double %489, %490
  %492 = fmul double %489, -4.800000e+01
  %493 = fmul double %489, %492
  %494 = tail call double @llvm.fmuladd.f64(double %491, double %489, double %493)
  %495 = tail call double @llvm.fmuladd.f64(double %489, double 1.800000e+01, double %494)
  %496 = fadd double %495, -1.000000e+00
  %497 = tail call double @llvm.fmuladd.f64(double %453, double %496, double 1.000000e+00)
  %498 = fmul double %455, %453
  %499 = fmul double %446, %498
  %500 = fmul double %489, 1.920000e+02
  %501 = fneg double %500
  %502 = tail call double @llvm.fmuladd.f64(double %500, double %489, double %501)
  %503 = fadd double %502, 3.600000e+01
  %504 = fmul double %503, %499
  br label %508

505:                                              ; preds = %443
  %506 = load ptr, ptr @stderr, align 8, !tbaa !90
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %506, ptr noundef nonnull @.str.84, i32 noundef %27, i32 noundef %31, i32 noundef %36, i32 noundef %41, double noundef %457) #28
  tail call void @exit(i32 noundef 1) #24
  unreachable

508:                                              ; preds = %488, %478, %470, %463, %460
  %509 = phi double [ %504, %488 ], [ %487, %478 ], [ %477, %470 ], [ %469, %463 ], [ %462, %460 ]
  %510 = phi double [ %497, %488 ], [ %483, %478 ], [ %474, %470 ], [ %466, %463 ], [ %461, %460 ]
  %511 = fmul double %455, %510
  %512 = fadd double %444, %511
  br label %513

513:                                              ; preds = %405, %439, %441, %414, %424, %421, %508
  %514 = phi double [ %512, %508 ], [ %401, %421 ], [ %401, %424 ], [ %401, %414 ], [ %401, %441 ], [ %401, %439 ], [ %401, %405 ]
  %515 = phi i32 [ %445, %508 ], [ %44, %421 ], [ %44, %424 ], [ %44, %414 ], [ %44, %441 ], [ %44, %439 ], [ %44, %405 ]
  %516 = phi double [ %509, %508 ], [ %399, %421 ], [ %430, %424 ], [ %420, %414 ], [ %442, %441 ], [ %440, %439 ], [ %407, %405 ]
  %517 = phi double [ %446, %508 ], [ %348, %421 ], [ %348, %424 ], [ %348, %414 ], [ %348, %441 ], [ %348, %439 ], [ %348, %405 ]
  %518 = getelementptr inbounds double, ptr %10, i64 %47
  %519 = load <2 x double>, ptr %518, align 8, !tbaa !93
  %520 = insertelement <2 x double> poison, double %516, i64 0
  %521 = shufflevector <2 x double> %520, <2 x double> poison, <2 x i32> zeroinitializer
  %522 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %265, <2 x double> %519)
  store <2 x double> %522, ptr %518, align 8, !tbaa !93
  %523 = getelementptr inbounds double, ptr %10, i64 %54
  %524 = load double, ptr %523, align 8, !tbaa !93
  %525 = tail call double @llvm.fmuladd.f64(double %516, double %210, double %524)
  store double %525, ptr %523, align 8, !tbaa !93
  %526 = getelementptr inbounds double, ptr %10, i64 %45
  %527 = load <2 x double>, ptr %526, align 8, !tbaa !93
  %528 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %272, <2 x double> %527)
  store <2 x double> %528, ptr %526, align 8, !tbaa !93
  %529 = getelementptr inbounds double, ptr %10, i64 %50
  %530 = load double, ptr %529, align 8, !tbaa !93
  %531 = tail call double @llvm.fmuladd.f64(double %516, double %217, double %530)
  store double %531, ptr %529, align 8, !tbaa !93
  %532 = getelementptr inbounds double, ptr %10, i64 %57
  %533 = load <2 x double>, ptr %532, align 8, !tbaa !93
  %534 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %279, <2 x double> %533)
  store <2 x double> %534, ptr %532, align 8, !tbaa !93
  %535 = getelementptr inbounds double, ptr %10, i64 %60
  %536 = load double, ptr %535, align 8, !tbaa !93
  %537 = tail call double @llvm.fmuladd.f64(double %516, double %224, double %536)
  store double %537, ptr %535, align 8, !tbaa !93
  %538 = getelementptr inbounds double, ptr %10, i64 %68
  %539 = load <2 x double>, ptr %538, align 8, !tbaa !93
  %540 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %282, <2 x double> %539)
  store <2 x double> %540, ptr %538, align 8, !tbaa !93
  %541 = getelementptr inbounds double, ptr %10, i64 %78
  %542 = load double, ptr %541, align 8, !tbaa !93
  %543 = tail call double @llvm.fmuladd.f64(double %516, double %285, double %542)
  store double %543, ptr %541, align 8, !tbaa !93
  %544 = load i1, ptr @dim, align 4
  br i1 %544, label %545, label %562, !prof !290

545:                                              ; preds = %513
  %546 = getelementptr double, ptr %518, i64 3
  %547 = load double, ptr %546, align 8, !tbaa !93
  %548 = extractelement <4 x double> %336, i64 3
  %549 = tail call double @llvm.fmuladd.f64(double %516, double %548, double %547)
  store double %549, ptr %546, align 8, !tbaa !93
  %550 = getelementptr double, ptr %526, i64 3
  %551 = load double, ptr %550, align 8, !tbaa !93
  %552 = extractelement <4 x double> %336, i64 2
  %553 = tail call double @llvm.fmuladd.f64(double %516, double %552, double %551)
  store double %553, ptr %550, align 8, !tbaa !93
  %554 = getelementptr double, ptr %532, i64 3
  %555 = load double, ptr %554, align 8, !tbaa !93
  %556 = extractelement <4 x double> %336, i64 1
  %557 = tail call double @llvm.fmuladd.f64(double %516, double %556, double %555)
  store double %557, ptr %554, align 8, !tbaa !93
  %558 = getelementptr double, ptr %538, i64 3
  %559 = load double, ptr %558, align 8, !tbaa !93
  %560 = extractelement <4 x double> %336, i64 0
  %561 = tail call double @llvm.fmuladd.f64(double %516, double %560, double %559)
  store double %561, ptr %558, align 8, !tbaa !93
  br label %562

562:                                              ; preds = %545, %513
  %563 = sext i32 %515 to i64
  %564 = getelementptr inbounds double, ptr %7, i64 %563
  %565 = load double, ptr %564, align 8, !tbaa !93
  %566 = fcmp olt double %565, 0.000000e+00
  br i1 %566, label %567, label %569, !prof !290

567:                                              ; preds = %562
  %568 = add nsw i32 %515, 1
  br label %443

569:                                              ; preds = %562
  %570 = add nuw nsw i64 %18, 1
  %571 = icmp eq i64 %570, %14
  br i1 %571, label %572, label %16, !prof !295, !llvm.loop !296

572:                                              ; preds = %569, %11
  %573 = phi double [ 0.000000e+00, %11 ], [ %514, %569 ]
  ret double %573
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nbond(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9) unnamed_addr #2 !prof !297 !PGOFuncName !298 {
  %11 = fdiv double 1.000000e+00, %8
  %12 = fdiv double 1.000000e+00, %9
  %13 = load ptr, ptr @prm, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = tail call ptr @ivector(i32 noundef -1, i32 noundef %15) #29
  %17 = load ptr, ptr @prm, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.parm, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !108
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %27, label %321, !prof !299

21:                                               ; preds = %27
  %22 = icmp sgt i32 %31, 1
  br i1 %22, label %23, label %321, !prof !148

23:                                               ; preds = %21
  %24 = getelementptr i32, ptr %16, i64 -1
  %25 = icmp eq i32 %3, 0
  %26 = insertelement <2 x double> <double 6.000000e+00, double poison>, double %11, i64 1
  br label %34

27:                                               ; preds = %10, %27
  %28 = phi i64 [ %30, %27 ], [ -1, %10 ]
  %29 = getelementptr inbounds i32, ptr %16, i64 %28
  store i32 -1, ptr %29, align 4, !tbaa !81
  %30 = add nsw i64 %28, 1
  %31 = load i32, ptr %18, align 8, !tbaa !108
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %27, label %21, !prof !300, !llvm.loop !301

34:                                               ; preds = %23, %308
  %35 = phi i64 [ 0, %23 ], [ %314, %308 ]
  %36 = phi ptr [ %17, %23 ], [ %315, %308 ]
  %37 = phi double [ undef, %23 ], [ %313, %308 ]
  %38 = phi double [ 0.000000e+00, %23 ], [ %312, %308 ]
  %39 = phi double [ 0.000000e+00, %23 ], [ %311, %308 ]
  %40 = phi double [ 0.000000e+00, %23 ], [ %310, %308 ]
  %41 = phi double [ 0.000000e+00, %23 ], [ %309, %308 ]
  %42 = getelementptr inbounds i32, ptr %1, i64 %35
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %308, label %45, !prof !302

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.parm, ptr %36, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !258
  %48 = getelementptr inbounds %struct.parm, ptr %36, i64 0, i32 59
  %49 = load ptr, ptr %48, align 8, !tbaa !259
  %50 = getelementptr inbounds i32, ptr %49, i64 %35
  %51 = load i32, ptr %50, align 4, !tbaa !81
  %52 = add nsw i32 %51, -1
  %53 = mul nsw i32 %52, %47
  %54 = getelementptr inbounds %struct.parm, ptr %36, i64 0, i32 37
  %55 = load ptr, ptr %54, align 8, !tbaa !146
  %56 = getelementptr inbounds double, ptr %55, i64 %35
  %57 = load double, ptr %56, align 8, !tbaa !93
  %58 = fmul double %12, %57
  %59 = load i1, ptr @dim, align 4
  %60 = select i1 %59, i32 4, i32 3
  %61 = trunc i64 %35 to i32
  %62 = mul nuw nsw i32 %60, %61
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %4, i64 %63
  %65 = load <2 x double>, ptr %64, align 8, !tbaa !93
  %66 = add nuw nsw i32 %62, 2
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %4, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !93
  br i1 %59, label %70, label %73, !prof !303

70:                                               ; preds = %45
  %71 = getelementptr double, ptr %64, i64 3
  %72 = load double, ptr %71, align 8, !tbaa !93
  br label %73

73:                                               ; preds = %70, %45
  %74 = phi double [ %72, %70 ], [ %40, %45 ]
  %75 = phi double [ 0.000000e+00, %70 ], [ %38, %45 ]
  %76 = getelementptr inbounds %struct.parm, ptr %36, i64 0, i32 60
  %77 = load ptr, ptr %76, align 8, !tbaa !134
  %78 = getelementptr inbounds i32, ptr %77, i64 %35
  %79 = load i32, ptr %78, align 4, !tbaa !81
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %95, !prof !304

81:                                               ; preds = %73
  %82 = load ptr, ptr @IexclAt, align 8, !tbaa !90
  %83 = getelementptr inbounds ptr, ptr %82, i64 %35
  %84 = load ptr, ptr %83, align 8, !tbaa !90
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i64 [ 0, %81 ], [ %91, %85 ]
  %87 = getelementptr inbounds i32, ptr %84, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !81
  %89 = sext i32 %88 to i64
  %90 = getelementptr i32, ptr %24, i64 %89
  store i32 %61, ptr %90, align 4, !tbaa !81
  %91 = add nuw nsw i64 %86, 1
  %92 = load i32, ptr %78, align 4, !tbaa !81
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %85, label %95, !prof !305, !llvm.loop !306

95:                                               ; preds = %85, %73
  br i1 %25, label %96, label %99, !prof !307

96:                                               ; preds = %95
  %97 = getelementptr inbounds i32, ptr %0, i64 %35
  %98 = load i32, ptr %97, align 4, !tbaa !81
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ %98, %96 ], [ 0, %95 ]
  %101 = getelementptr inbounds ptr, ptr %2, i64 %35
  %102 = sext i32 %100 to i64
  %103 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  %104 = zext nneg i32 %103 to i64
  br label %105

105:                                              ; preds = %99, %286
  %106 = phi i1 [ %59, %99 ], [ %287, %286 ]
  %107 = phi i1 [ %59, %99 ], [ %288, %286 ]
  %108 = phi i64 [ 0, %99 ], [ %295, %286 ]
  %109 = phi double [ 0.000000e+00, %99 ], [ %293, %286 ]
  %110 = phi double [ %37, %99 ], [ %292, %286 ]
  %111 = phi double [ %75, %99 ], [ %291, %286 ]
  %112 = phi double [ %39, %99 ], [ %290, %286 ]
  %113 = phi double [ %41, %99 ], [ %289, %286 ]
  %114 = phi <2 x double> [ zeroinitializer, %99 ], [ %294, %286 ]
  %115 = load ptr, ptr %101, align 8, !tbaa !90
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %124, !prof !308

117:                                              ; preds = %105
  %118 = load ptr, ptr @nabout, align 8, !tbaa !90
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.85, i32 noundef 0) #25
  %120 = load ptr, ptr @nabout, align 8, !tbaa !90
  %121 = tail call i32 @fflush(ptr noundef %120) #25
  %122 = load ptr, ptr %101, align 8, !tbaa !90
  %123 = load i1, ptr @dim, align 4
  br label %124

124:                                              ; preds = %117, %105
  %125 = phi i1 [ %123, %117 ], [ %106, %105 ]
  %126 = phi i1 [ %123, %117 ], [ %107, %105 ]
  %127 = phi ptr [ %122, %117 ], [ %115, %105 ]
  %128 = add nsw i64 %108, %102
  %129 = getelementptr inbounds i32, ptr %127, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !81
  %131 = select i1 %126, i32 4, i32 3
  %132 = mul nsw i32 %131, %130
  br i1 %25, label %133, label %139, !prof !309

133:                                              ; preds = %124
  %134 = sext i32 %130 to i64
  %135 = getelementptr inbounds i32, ptr %16, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !81
  %137 = zext i32 %136 to i64
  %138 = icmp eq i64 %35, %137
  br i1 %138, label %286, label %139, !prof !310

139:                                              ; preds = %133, %124
  %140 = sext i32 %132 to i64
  %141 = getelementptr inbounds double, ptr %4, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !93
  %143 = add nsw i32 %132, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, ptr %4, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !93
  %147 = insertelement <2 x double> poison, double %142, i64 0
  %148 = insertelement <2 x double> %147, double %146, i64 1
  %149 = fsub <2 x double> %65, %148
  %150 = add nsw i32 %132, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, ptr %4, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !93
  %154 = fsub double %69, %153
  %155 = fmul <2 x double> %149, %149
  %156 = extractelement <2 x double> %155, i64 1
  %157 = extractelement <2 x double> %149, i64 0
  %158 = tail call double @llvm.fmuladd.f64(double %157, double %157, double %156)
  %159 = tail call double @llvm.fmuladd.f64(double %154, double %154, double %158)
  br i1 %126, label %160, label %165, !prof !311

160:                                              ; preds = %139
  %161 = getelementptr double, ptr %141, i64 3
  %162 = load double, ptr %161, align 8, !tbaa !93
  %163 = fsub double %74, %162
  %164 = tail call double @llvm.fmuladd.f64(double %163, double %163, double %159)
  br label %165

165:                                              ; preds = %160, %139
  %166 = phi double [ %163, %160 ], [ %110, %139 ]
  %167 = phi double [ %164, %160 ], [ %159, %139 ]
  %168 = fdiv double 1.000000e+00, %167
  %169 = tail call double @sqrt(double noundef %167) #29
  %170 = fmul double %169, %168
  %171 = load ptr, ptr @prm, align 8, !tbaa !90
  %172 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 37
  %173 = load ptr, ptr %172, align 8, !tbaa !146
  %174 = sext i32 %130 to i64
  %175 = getelementptr inbounds double, ptr %173, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !93
  %177 = fmul double %58, %176
  %178 = fmul double %170, %177
  %179 = fneg double %178
  %180 = fadd double %113, %178
  %181 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 61
  %182 = load ptr, ptr %181, align 8, !tbaa !265
  %183 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 59
  %184 = load ptr, ptr %183, align 8, !tbaa !259
  %185 = getelementptr inbounds i32, ptr %184, i64 %174
  %186 = load i32, ptr %185, align 4, !tbaa !81
  %187 = add nsw i32 %186, %53
  %188 = sext i32 %187 to i64
  %189 = getelementptr i32, ptr %182, i64 %188
  %190 = getelementptr i32, ptr %189, i64 -1
  %191 = load i32, ptr %190, align 4, !tbaa !81
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %204, label %193, !prof !312

193:                                              ; preds = %165
  %194 = fcmp une double %8, 1.000000e+00
  br i1 %194, label %195, label %228

195:                                              ; preds = %193
  %196 = getelementptr inbounds i32, ptr %184, i64 %35
  %197 = load i32, ptr %196, align 4, !tbaa !81
  %198 = tail call i32 @llvm.smax.i32(i32 %197, i32 %186)
  %199 = tail call i32 @llvm.smin.i32(i32 %197, i32 %186)
  %200 = add nsw i32 %198, -1
  %201 = mul nsw i32 %200, %198
  %202 = sdiv i32 %201, 2
  %203 = add nsw i32 %202, %199
  br label %204

204:                                              ; preds = %165, %195
  %205 = phi i32 [ %203, %195 ], [ %191, %165 ]
  %206 = add nsw i32 %205, -1
  %207 = fmul double %168, %168
  %208 = fmul double %168, %207
  %209 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 48
  %210 = load ptr, ptr %209, align 8, !tbaa !267
  %211 = sext i32 %206 to i64
  %212 = getelementptr inbounds double, ptr %210, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !93
  %214 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 47
  %215 = load ptr, ptr %214, align 8, !tbaa !268
  %216 = getelementptr inbounds double, ptr %215, i64 %211
  %217 = load double, ptr %216, align 8, !tbaa !93
  %218 = fmul double %208, %217
  %219 = fmul double %208, %218
  %220 = fmul double %208, %213
  %221 = fsub double %219, %220
  %222 = fmul double %219, -1.200000e+01
  %223 = insertelement <2 x double> poison, double %220, i64 0
  %224 = insertelement <2 x double> %223, double %221, i64 1
  %225 = insertelement <2 x double> poison, double %222, i64 0
  %226 = insertelement <2 x double> %225, double %112, i64 1
  %227 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %224, <2 x double> %26, <2 x double> %226)
  br label %254

228:                                              ; preds = %193
  %229 = insertelement <2 x double> <double 1.000000e+01, double poison>, double %11, i64 1
  %230 = xor i32 %191, -1
  %231 = fmul double %168, %168
  %232 = fmul double %168, %231
  %233 = fmul double %168, %232
  %234 = fmul double %168, %233
  %235 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 50
  %236 = load ptr, ptr %235, align 8, !tbaa !313
  %237 = sext i32 %230 to i64
  %238 = getelementptr inbounds double, ptr %236, i64 %237
  %239 = load double, ptr %238, align 8, !tbaa !93
  %240 = getelementptr inbounds %struct.parm, ptr %171, i64 0, i32 49
  %241 = load ptr, ptr %240, align 8, !tbaa !314
  %242 = getelementptr inbounds double, ptr %241, i64 %237
  %243 = load double, ptr %242, align 8, !tbaa !93
  %244 = fmul double %234, %243
  %245 = fmul double %168, %244
  %246 = fmul double %234, %239
  %247 = fsub double %245, %246
  %248 = fmul double %245, -1.200000e+01
  %249 = insertelement <2 x double> poison, double %246, i64 0
  %250 = insertelement <2 x double> %249, double %247, i64 1
  %251 = insertelement <2 x double> poison, double %248, i64 0
  %252 = insertelement <2 x double> %251, double %112, i64 1
  %253 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %250, <2 x double> %229, <2 x double> %252)
  br label %254

254:                                              ; preds = %204, %228
  %255 = phi <2 x double> [ %227, %204 ], [ %253, %228 ]
  %256 = extractelement <2 x double> %255, i64 0
  %257 = tail call double @llvm.fmuladd.f64(double %256, double %11, double %179)
  %258 = fmul double %170, %257
  %259 = fmul double %170, %258
  %260 = insertelement <2 x double> poison, double %259, i64 0
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> zeroinitializer
  %262 = fmul <2 x double> %149, %261
  %263 = fmul double %154, %259
  %264 = fadd <2 x double> %114, %262
  %265 = fadd double %109, %263
  %266 = getelementptr inbounds double, ptr %5, i64 %140
  %267 = load double, ptr %266, align 8, !tbaa !93
  %268 = extractelement <2 x double> %262, i64 0
  %269 = fsub double %267, %268
  store double %269, ptr %266, align 8, !tbaa !93
  %270 = getelementptr inbounds double, ptr %5, i64 %144
  %271 = load double, ptr %270, align 8, !tbaa !93
  %272 = extractelement <2 x double> %262, i64 1
  %273 = fsub double %271, %272
  store double %273, ptr %270, align 8, !tbaa !93
  %274 = getelementptr inbounds double, ptr %5, i64 %151
  %275 = load double, ptr %274, align 8, !tbaa !93
  %276 = fsub double %275, %263
  store double %276, ptr %274, align 8, !tbaa !93
  %277 = load i1, ptr @dim, align 4
  %278 = extractelement <2 x double> %255, i64 1
  br i1 %277, label %279, label %286, !prof !311

279:                                              ; preds = %254
  %280 = getelementptr double, ptr %5, i64 3
  %281 = fmul double %166, %259
  %282 = fadd double %111, %281
  %283 = getelementptr double, ptr %280, i64 %140
  %284 = load double, ptr %283, align 8, !tbaa !93
  %285 = fsub double %284, %281
  store double %285, ptr %283, align 8, !tbaa !93
  br label %286

286:                                              ; preds = %254, %279, %133
  %287 = phi i1 [ %125, %133 ], [ true, %279 ], [ false, %254 ]
  %288 = phi i1 [ %126, %133 ], [ true, %279 ], [ false, %254 ]
  %289 = phi double [ %113, %133 ], [ %180, %279 ], [ %180, %254 ]
  %290 = phi double [ %112, %133 ], [ %278, %279 ], [ %278, %254 ]
  %291 = phi double [ %111, %133 ], [ %282, %279 ], [ %111, %254 ]
  %292 = phi double [ %110, %133 ], [ %166, %279 ], [ %166, %254 ]
  %293 = phi double [ %109, %133 ], [ %265, %279 ], [ %265, %254 ]
  %294 = phi <2 x double> [ %114, %133 ], [ %264, %279 ], [ %264, %254 ]
  %295 = add nuw nsw i64 %108, 1
  %296 = icmp eq i64 %295, %104
  br i1 %296, label %297, label %105, !prof !315, !llvm.loop !316

297:                                              ; preds = %286
  %298 = getelementptr inbounds double, ptr %5, i64 %63
  %299 = load <2 x double>, ptr %298, align 8, !tbaa !93
  %300 = fadd <2 x double> %294, %299
  store <2 x double> %300, ptr %298, align 8, !tbaa !93
  %301 = getelementptr inbounds double, ptr %5, i64 %67
  %302 = load double, ptr %301, align 8, !tbaa !93
  %303 = fadd double %293, %302
  store double %303, ptr %301, align 8, !tbaa !93
  br i1 %287, label %304, label %308, !prof !303

304:                                              ; preds = %297
  %305 = getelementptr double, ptr %298, i64 3
  %306 = load double, ptr %305, align 8, !tbaa !93
  %307 = fadd double %291, %306
  store double %307, ptr %305, align 8, !tbaa !93
  br label %308

308:                                              ; preds = %297, %304, %34
  %309 = phi double [ %41, %34 ], [ %289, %304 ], [ %289, %297 ]
  %310 = phi double [ %40, %34 ], [ %74, %304 ], [ %74, %297 ]
  %311 = phi double [ %39, %34 ], [ %290, %304 ], [ %290, %297 ]
  %312 = phi double [ %38, %34 ], [ %291, %304 ], [ %291, %297 ]
  %313 = phi double [ %37, %34 ], [ %292, %304 ], [ %292, %297 ]
  %314 = add nuw nsw i64 %35, 1
  %315 = load ptr, ptr @prm, align 8, !tbaa !90
  %316 = getelementptr inbounds %struct.parm, ptr %315, i64 0, i32 4
  %317 = load i32, ptr %316, align 8, !tbaa !108
  %318 = add nsw i32 %317, -1
  %319 = sext i32 %318 to i64
  %320 = icmp slt i64 %314, %319
  br i1 %320, label %34, label %321, !prof !317, !llvm.loop !318

321:                                              ; preds = %308, %10, %21
  %322 = phi double [ 0.000000e+00, %21 ], [ 0.000000e+00, %10 ], [ %309, %308 ]
  %323 = phi double [ 0.000000e+00, %21 ], [ 0.000000e+00, %10 ], [ %311, %308 ]
  %324 = phi i32 [ %31, %21 ], [ %19, %10 ], [ %317, %308 ]
  tail call void @free_ivector(ptr noundef %16, i32 noundef -1, i32 noundef %324) #29
  store double %323, ptr %6, align 8, !tbaa !93
  store double %322, ptr %7, align 8, !tbaa !93
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc double @econs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #19 !prof !79 !PGOFuncName !319 {
  %3 = load ptr, ptr @prm, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.parm, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !108
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %62

7:                                                ; preds = %2
  %8 = load ptr, ptr @constrained, align 8, !tbaa !90
  %9 = load i1, ptr @dim, align 4
  %10 = load ptr, ptr @x0, align 8
  %11 = select i1 %9, i64 4, i64 3
  %12 = zext nneg i32 %5 to i64
  br label %13

13:                                               ; preds = %7, %58
  %14 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %15 = phi double [ 0.000000e+00, %7 ], [ %59, %58 ]
  %16 = getelementptr inbounds i32, ptr %8, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %13
  %20 = mul nuw nsw i64 %11, %14
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = getelementptr inbounds double, ptr %10, i64 %20
  %23 = add nuw nsw i64 %20, 2
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !93
  %26 = getelementptr inbounds double, ptr %10, i64 %23
  %27 = load double, ptr %26, align 8, !tbaa !93
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds double, ptr %1, i64 %20
  %30 = load <2 x double>, ptr %21, align 8, !tbaa !93
  %31 = load <2 x double>, ptr %22, align 8, !tbaa !93
  %32 = fsub <2 x double> %30, %31
  %33 = fmul <2 x double> %32, %32
  %34 = extractelement <2 x double> %33, i64 1
  %35 = extractelement <2 x double> %32, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %34)
  %37 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %37, double 0.000000e+00, double %15)
  %39 = load <2 x double>, ptr %29, align 8, !tbaa !93
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> zeroinitializer, <2 x double> %39)
  store <2 x double> %40, ptr %29, align 8, !tbaa !93
  %41 = getelementptr double, ptr %29, i64 2
  %42 = load double, ptr %41, align 8, !tbaa !93
  %43 = tail call double @llvm.fmuladd.f64(double %28, double 0.000000e+00, double %42)
  store double %43, ptr %41, align 8, !tbaa !93
  br i1 %9, label %44, label %58

44:                                               ; preds = %19
  %45 = shl i64 %14, 2
  %46 = and i64 %45, 4294967292
  %47 = or disjoint i64 %46, 3
  %48 = getelementptr inbounds double, ptr %0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !93
  %50 = getelementptr inbounds double, ptr %10, i64 %47
  %51 = load double, ptr %50, align 8, !tbaa !93
  %52 = fsub double %49, %51
  %53 = fmul double %52, 0.000000e+00
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %52, double %38)
  %55 = getelementptr inbounds double, ptr %1, i64 %47
  %56 = load double, ptr %55, align 8, !tbaa !93
  %57 = tail call double @llvm.fmuladd.f64(double %52, double 0.000000e+00, double %56)
  store double %57, ptr %55, align 8, !tbaa !93
  br label %58

58:                                               ; preds = %13, %44, %19
  %59 = phi double [ %54, %44 ], [ %38, %19 ], [ %15, %13 ]
  %60 = add nuw nsw i64 %14, 1
  %61 = icmp eq i64 %60, %12
  br i1 %61, label %62, label %13, !llvm.loop !320

62:                                               ; preds = %58, %2
  %63 = phi double [ 0.000000e+00, %2 ], [ %59, %58 ]
  ret double %63
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #22

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { cold optsize }
attributes #29 = { nounwind optsize }
attributes #30 = { nounwind optsize allocsize(0) }
attributes #31 = { nounwind optsize allocsize(0,1) }
attributes #32 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!77}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!35 = !{ptr @mpierror, ptr @exit, i64 1}
!36 = !{ptr @reducerror, ptr @mpierror, i64 6016}
!37 = !{ptr @mme_init, ptr @free_ivector, i64 47591}
!38 = !{ptr @mme_init, ptr @ivector, i64 46658}
!39 = !{ptr @mme_init, ptr @set_cons_mask, i64 2}
!40 = !{ptr @mme_init, ptr @free, i64 5}
!41 = !{ptr @mme_init, ptr @malloc, i64 10}
!42 = !{ptr @mme_init, ptr @set_belly_mask, i64 2}
!43 = !{ptr @mme_init, ptr @mme34, i64 1}
!44 = !{ptr @mme34, ptr @egb, i64 128}
!45 = !{ptr @mme34, ptr @free_vector, i64 2}
!46 = !{ptr @mme34, ptr @fwrite, i64 4}
!47 = !{ptr @mme34, ptr @fflush, i64 12}
!48 = !{ptr @mme34, ptr @nblist, i64 27}
!49 = !{ptr @mme34, ptr @vector, i64 3}
!50 = !{ptr @mme34, ptr @ebond, i64 494}
!51 = !{ptr @mme34, ptr @eangl, i64 494}
!52 = !{ptr @mme34, ptr @ephi, i64 494}
!53 = !{ptr @mme34, ptr @nbond, i64 371}
!54 = !{ptr @mme34, ptr @econs, i64 1}
!55 = !{ptr @mme34, ptr @fprintf, i64 19}
!56 = !{ptr @mme, ptr @mme34, i64 250}
!57 = !{ptr @md, ptr @free, i64 3}
!58 = !{ptr @md, ptr @calloc, i64 3}
!59 = !{ptr @md, ptr @get_masses, i64 2}
!60 = !{ptr @md, ptr @gauss, i64 76419}
!61 = !{ptr @egb, ptr @free_vector, i64 5}
!62 = !{ptr @egb, ptr @free_ivector, i64 4}
!63 = !{ptr @egb, ptr @vector, i64 85}
!64 = !{ptr @egb, ptr @ivector, i64 4}
!65 = !{ptr @egb, ptr @fprintf, i64 5}
!66 = !{ptr @egb, ptr @fflush, i64 5}
!67 = !{ptr @egb, ptr @log, i64 1153840949}
!68 = !{ptr @egb, ptr @tanh, i64 2}
!69 = !{ptr @egb, ptr @exp, i64 4025960148}
!70 = !{ptr @eangl, ptr @acos, i64 8592747}
!71 = !{ptr @ephi, ptr @fprintf, i64 1}
!72 = !{ptr @ephi, ptr @exit, i64 1}
!73 = !{ptr @nbond, ptr @ivector, i64 372}
!74 = !{ptr @nbond, ptr @fprintf, i64 1}
!75 = !{ptr @nbond, ptr @fflush, i64 1}
!76 = !{ptr @nbond, ptr @free_ivector, i64 372}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 2509}
!79 = !{!"function_entry_count", i64 0}
!80 = !{!"function_entry_count", i64 26}
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !{!"function_entry_count", i64 400460}
!86 = !{!"function_entry_count", i64 6017}
!87 = !{!"branch_weights", i32 1, i32 6018}
!88 = !{!"function_entry_count", i64 6016}
!89 = !{!"function_entry_count", i64 1}
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !83, i64 0}
!92 = !{!83, !83, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !83, i64 0}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.mustprogress"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !96}
!101 = distinct !{!101, !96}
!102 = distinct !{!102, !96}
!103 = distinct !{!103, !96}
!104 = distinct !{!104, !96}
!105 = !{!"function_entry_count", i64 2}
!106 = !{!107, !91, i64 128}
!107 = !{!"molecule_t", !83, i64 0, !82, i64 96, !91, i64 104, !82, i64 112, !82, i64 116, !82, i64 120, !91, i64 128}
!108 = !{!109, !82, i64 96}
!109 = !{!"parm", !83, i64 0, !82, i64 84, !82, i64 88, !82, i64 92, !82, i64 96, !82, i64 100, !82, i64 104, !82, i64 108, !82, i64 112, !82, i64 116, !82, i64 120, !82, i64 124, !82, i64 128, !82, i64 132, !82, i64 136, !82, i64 140, !82, i64 144, !82, i64 148, !82, i64 152, !82, i64 156, !82, i64 160, !82, i64 164, !82, i64 168, !82, i64 172, !82, i64 176, !82, i64 180, !82, i64 184, !82, i64 188, !82, i64 192, !82, i64 196, !82, i64 200, !82, i64 204, !82, i64 208, !91, i64 216, !91, i64 224, !91, i64 232, !91, i64 240, !91, i64 248, !91, i64 256, !91, i64 264, !91, i64 272, !91, i64 280, !91, i64 288, !91, i64 296, !91, i64 304, !91, i64 312, !91, i64 320, !91, i64 328, !91, i64 336, !91, i64 344, !91, i64 352, !91, i64 360, !91, i64 368, !83, i64 376, !94, i64 400, !94, i64 408, !94, i64 416, !94, i64 424, !94, i64 432, !91, i64 440, !91, i64 448, !91, i64 456, !91, i64 464, !91, i64 472, !91, i64 480, !91, i64 488, !91, i64 496, !91, i64 504, !91, i64 512, !91, i64 520, !91, i64 528, !91, i64 536, !91, i64 544, !91, i64 552, !91, i64 560, !91, i64 568, !91, i64 576, !91, i64 584, !91, i64 592, !91, i64 600, !91, i64 608, !91, i64 616, !91, i64 624, !91, i64 632, !91, i64 640, !91, i64 648, !91, i64 656, !91, i64 664, !91, i64 672, !91, i64 680, !91, i64 688, !91, i64 696, !91, i64 704, !91, i64 712}
!110 = !{!"branch_weights", i32 3, i32 1}
!111 = !{!"branch_weights", i32 9, i32 4, i32 3}
!112 = !{!"branch_weights", i32 2, i32 2}
!113 = !{!"branch_weights", i32 127, i32 1}
!114 = !{!"branch_weights", i32 1217857, i32 127}
!115 = distinct !{!115, !96}
!116 = !{!"branch_weights", i32 1, i32 3}
!117 = !{!"branch_weights", i32 191, i32 1}
!118 = !{!"branch_weights", i32 2435713, i32 191}
!119 = distinct !{!119, !96}
!120 = distinct !{!120, !96}
!121 = distinct !{!121, !96}
!122 = distinct !{!122, !96}
!123 = distinct !{!123, !96}
!124 = !{!"branch_weights", i32 7, i32 1}
!125 = distinct !{!125, !96}
!126 = !{!109, !91, i64 696}
!127 = !{!"branch_weights", i32 31905, i32 6157}
!128 = !{!"branch_weights", i32 31904, i32 1}
!129 = !{!109, !91, i64 704}
!130 = !{!"branch_weights", i32 68141, i32 31904}
!131 = distinct !{!131, !96}
!132 = distinct !{!132, !96}
!133 = distinct !{!133, !96}
!134 = !{!109, !91, i64 448}
!135 = !{!"branch_weights", i32 38061, i32 1}
!136 = !{!"branch_weights", i32 38060, i32 1}
!137 = !{!109, !91, i64 472}
!138 = !{!"branch_weights", i32 171913, i32 38060}
!139 = distinct !{!139, !96}
!140 = distinct !{!140, !96}
!141 = !{!"function_entry_count", i64 251}
!142 = !{!"sff.c:mme34"}
!143 = !{!"branch_weights", i32 367275, i32 6000, i32 6225}
!144 = !{!109, !91, i64 368}
!145 = !{!109, !91, i64 360}
!146 = !{!109, !91, i64 248}
!147 = !{!"branch_weights", i32 2, i32 3}
!148 = !{!"branch_weights", i32 -2147483648, i32 0}
!149 = !{!"branch_weights", i32 249, i32 1}
!150 = !{!"branch_weights", i32 3, i32 247}
!151 = !{!"branch_weights", i32 6125, i32 54883}
!152 = !{!"branch_weights", i32 248, i32 1}
!153 = !{!109, !82, i64 104}
!154 = !{!109, !91, i64 496}
!155 = !{!109, !91, i64 504}
!156 = !{!109, !91, i64 512}
!157 = !{!109, !91, i64 264}
!158 = !{!109, !91, i64 272}
!159 = !{!109, !82, i64 108}
!160 = !{!109, !91, i64 520}
!161 = !{!109, !91, i64 528}
!162 = !{!109, !91, i64 536}
!163 = !{!109, !82, i64 112}
!164 = !{!109, !91, i64 544}
!165 = !{!109, !91, i64 552}
!166 = !{!109, !91, i64 560}
!167 = !{!109, !91, i64 568}
!168 = !{!109, !91, i64 280}
!169 = !{!109, !91, i64 288}
!170 = !{!109, !82, i64 148}
!171 = !{!109, !91, i64 576}
!172 = !{!109, !91, i64 584}
!173 = !{!109, !91, i64 592}
!174 = !{!109, !91, i64 600}
!175 = !{!109, !82, i64 120}
!176 = !{!109, !91, i64 608}
!177 = !{!109, !91, i64 616}
!178 = !{!109, !91, i64 624}
!179 = !{!109, !91, i64 632}
!180 = !{!109, !91, i64 640}
!181 = !{!109, !91, i64 296}
!182 = !{!109, !91, i64 304}
!183 = !{!109, !91, i64 312}
!184 = !{!109, !82, i64 124}
!185 = !{!109, !91, i64 648}
!186 = !{!109, !91, i64 656}
!187 = !{!109, !91, i64 664}
!188 = !{!109, !91, i64 672}
!189 = !{!109, !91, i64 680}
!190 = !{!"branch_weights", i32 125, i32 125}
!191 = !{!"branch_weights", i32 248, i32 14158073}
!192 = distinct !{!192, !96}
!193 = !{!"branch_weights", i32 4719441, i32 1}
!194 = !{!"branch_weights", i32 248, i32 4719193}
!195 = distinct !{!195, !96}
!196 = distinct !{!196, !96}
!197 = !{!"branch_weights", i32 249, i32 2728}
!198 = distinct !{!198, !96}
!199 = !{!"branch_weights", i32 1965, i32 59535}
!200 = !{!"branch_weights", i32 239785489, i32 1907698159}
!201 = !{!"function_entry_count", i64 250}
!202 = !{!"sff.c:spec_strdup"}
!203 = !{!"branch_weights", i32 8, i32 4}
!204 = !{!"branch_weights", i32 1, i32 2}
!205 = !{!"branch_weights", i32 2136298837, i32 11184811}
!206 = distinct !{!206, !96, !207, !208}
!207 = !{!"llvm.loop.isvectorized", i32 1}
!208 = !{!"llvm.loop.unroll.runtime.disable"}
!209 = !{!"branch_weights", i32 114181, i32 1}
!210 = !{!"branch_weights", i32 191, i32 7307393}
!211 = distinct !{!211, !96}
!212 = distinct !{!212, !96}
!213 = !{!"branch_weights", i32 1, i32 191}
!214 = !{!"branch_weights", i32 245, i32 1}
!215 = !{!"branch_weights", i32 244, i32 1}
!216 = !{!"branch_weights", i32 244, i32 13929717}
!217 = distinct !{!217, !96}
!218 = !{!"branch_weights", i32 1034, i32 13928928}
!219 = !{!"branch_weights", i32 971, i32 13928991}
!220 = distinct !{!220, !96}
!221 = distinct !{!221, !96}
!222 = distinct !{!222, !96}
!223 = !{!"branch_weights", i32 15489, i32 191}
!224 = distinct !{!224, !96}
!225 = !{!"sff.c:get_masses"}
!226 = !{!109, !91, i64 256}
!227 = !{!"branch_weights", i32 1, i32 38061}
!228 = !{!"branch_weights", i32 191, i32 2435713}
!229 = distinct !{!229, !96}
!230 = !{!"function_entry_count", i64 127}
!231 = !{!"sff.c:egb"}
!232 = !{!"branch_weights", i32 125, i32 4}
!233 = !{!"branch_weights", i32 3, i32 2}
!234 = !{!"branch_weights", i32 4, i32 1}
!235 = !{!109, !94, i64 432}
!236 = !{!"branch_weights", i32 2, i32 124}
!237 = !{!"branch_weights", i32 125, i32 1}
!238 = !{!"branch_weights", i32 1, i32 2359721}
!239 = !{!"branch_weights", i32 2359720, i32 1}
!240 = !{!"branch_weights", i32 1, i32 -207974399}
!241 = !{!"branch_weights", i32 2779, i32 -207977177}
!242 = !{!"branch_weights", i32 26847, i32 -208004023}
!243 = !{!"branch_weights", i32 513797691, i32 -721801713}
!244 = !{!"branch_weights", i32 -794008463, i32 72206751}
!245 = !{!"branch_weights", i32 57508229, i32 14698523}
!246 = !{!"branch_weights", i32 14698518, i32 6}
!247 = !{!"branch_weights", i32 1, i32 6}
!248 = !{!"branch_weights", i32 -210334119, i32 2359720}
!249 = distinct !{!249, !96}
!250 = !{!"branch_weights", i32 2359721, i32 1}
!251 = !{!"branch_weights", i32 4719193, i32 249}
!252 = distinct !{!252, !96}
!253 = !{!"branch_weights", i32 0, i32 -2147483648}
!254 = !{!"branch_weights", i32 4719441, i32 249}
!255 = distinct !{!255, !96}
!256 = !{!"branch_weights", i32 125, i32 2359597}
!257 = !{!"branch_weights", i32 1, i32 2359597}
!258 = !{!109, !82, i64 100}
!259 = !{!109, !91, i64 440}
!260 = !{!"branch_weights", i32 2359596, i32 1}
!261 = !{!"branch_weights", i32 10658545, i32 2359596}
!262 = distinct !{!262, !96}
!263 = !{!"branch_weights", i32 1, i32 2043496449}
!264 = !{!"branch_weights", i32 12896475, i32 2030599975}
!265 = !{!109, !91, i64 456}
!266 = !{!"branch_weights", i32 2030599975, i32 1}
!267 = !{!109, !91, i64 336}
!268 = !{!109, !91, i64 328}
!269 = !{!"branch_weights", i32 2041136853, i32 2359596}
!270 = distinct !{!270, !96}
!271 = distinct !{!271, !96}
!272 = !{!"branch_weights", i32 2304, i32 -1576079016}
!273 = !{!"branch_weights", i32 1, i32 -208004023}
!274 = !{!"branch_weights", i32 2359720, i32 -210334119}
!275 = distinct !{!275, !96}
!276 = distinct !{!276, !96}
!277 = !{!"function_entry_count", i64 496}
!278 = !{!"sff.c:ebond"}
!279 = !{!"branch_weights", i32 496, i32 1}
!280 = !{!"branch_weights", i32 1, i32 4777473}
!281 = !{!"branch_weights", i32 496, i32 4776977}
!282 = distinct !{!282, !96}
!283 = !{!"sff.c:eangl"}
!284 = !{!"branch_weights", i32 1, i32 8610065}
!285 = !{!"branch_weights", i32 249, i32 2147483399}
!286 = !{!"branch_weights", i32 262, i32 -2032600722}
!287 = !{!"branch_weights", i32 496, i32 8609569}
!288 = distinct !{!288, !96}
!289 = !{!"sff.c:ephi"}
!290 = !{!"branch_weights", i32 1, i32 15426593}
!291 = !{!109, !82, i64 128}
!292 = !{!"branch_weights", i32 15426593, i32 1}
!293 = !{!"branch_weights", i32 5253633, i32 10172961}
!294 = !{!"branch_weights", i32 1, i32 917601, i32 7488609, i32 6131553, i32 888833, i32 1}
!295 = !{!"branch_weights", i32 496, i32 15426097}
!296 = distinct !{!296, !96}
!297 = !{!"function_entry_count", i64 372}
!298 = !{!"sff.c:nbond"}
!299 = !{!"branch_weights", i32 372, i32 1}
!300 = !{!"branch_weights", i32 7079161, i32 372}
!301 = distinct !{!301, !96}
!302 = !{!"branch_weights", i32 763097, i32 6315693}
!303 = !{!"branch_weights", i32 1, i32 6315693}
!304 = !{!"branch_weights", i32 6315692, i32 1}
!305 = !{!"branch_weights", i32 31382913, i32 6315692}
!306 = distinct !{!306, !96}
!307 = !{!"branch_weights", i32 2359597, i32 3956097}
!308 = !{!"branch_weights", i32 1, i32 2054445202}
!309 = !{!"branch_weights", i32 2042039746, i32 12405457}
!310 = !{!"branch_weights", i32 12896497, i32 2029143250}
!311 = !{!"branch_weights", i32 1, i32 2041548706}
!312 = !{!"branch_weights", i32 2041548706, i32 1}
!313 = !{!109, !91, i64 352}
!314 = !{!109, !91, i64 344}
!315 = !{!"branch_weights", i32 6315692, i32 2048129510}
!316 = distinct !{!316, !96}
!317 = !{!"branch_weights", i32 7078417, i32 372}
!318 = distinct !{!318, !96}
!319 = !{!"sff.c:econs"}
!320 = distinct !{!320, !96}
