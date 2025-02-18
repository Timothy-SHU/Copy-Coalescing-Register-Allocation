; ModuleID = 'Compute.C'
source_filename = "Compute.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ComputeNonbondedWorkArrays = type { %class.ResizeArray, %class.ResizeArray.0, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray.1, %class.ResizeArray.1 }
%class.ResizeArray.0 = type { ptr, ptr }
%class.ResizeArray = type { ptr, ptr }
%class.ResizeArray.1 = type { ptr, ptr }
%class.ResizeArrayRaw = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>
%class.ResizeArrayRaw.2 = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>
%class.ResizeArrayRaw.4 = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>
%struct.nonbonded = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x i32], %class.Vector, ptr, ptr, ptr, ptr, i32, i32, double, double, i32, i32, i32, i32 }
%class.Vector = type { double, double, double }
%class.PatchList = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%class.Patch = type <{ i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%class.SelfCompute = type { i32, %class.Pairlists, i32, double }
%class.Pairlists = type { ptr, i32, i32 }
%class.PairCompute = type { i32, i32, i32, i32, %class.Pairlists, i32, double }
%class.Lattice = type <{ %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, i32, [4 x i8] }>

$_ZN26ComputeNonbondedWorkArraysC2Ev = comdat any

$_ZN26ComputeNonbondedWorkArraysD2Ev = comdat any

$_ZN11ResizeArrayI6VectorED2Ev = comdat any

$_ZN11ResizeArrayItED2Ev = comdat any

$_ZN11ResizeArrayIdED2Ev = comdat any

$_ZN11ResizeArrayItED0Ev = comdat any

$_ZN11ResizeArrayIdED0Ev = comdat any

$_ZN14ResizeArrayRawI6VectorE6resizeEi = comdat any

$_ZN11ResizeArrayI6VectorED0Ev = comdat any

$_ZTV11ResizeArrayItE = comdat any

$_ZTS11ResizeArrayItE = comdat any

$_ZTI11ResizeArrayItE = comdat any

$_ZTV11ResizeArrayIdE = comdat any

$_ZTS11ResizeArrayIdE = comdat any

$_ZTI11ResizeArrayIdE = comdat any

$_ZTV11ResizeArrayI6VectorE = comdat any

$_ZTS11ResizeArrayI6VectorE = comdat any

$_ZTI11ResizeArrayI6VectorE = comdat any

@_ZL10workArrays = internal global %class.ComputeNonbondedWorkArrays zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN20ComputeNonbondedUtil6cutoffE = external local_unnamed_addr global double, align 8
@_ZN20ComputeNonbondedUtil12pairlistdistE = external local_unnamed_addr global double, align 8
@_ZN20ComputeNonbondedUtil12hgroupcutoffE = external local_unnamed_addr global double, align 8
@_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil13calcMergeSelfE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil12calcFullSelfE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil14calcSelfEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil8calcSelfE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil19calcMergePairEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil13calcMergePairE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil18calcFullPairEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil12calcFullPairE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil14calcPairEnergyE = external local_unnamed_addr global ptr, align 8
@_ZN20ComputeNonbondedUtil8calcPairE = external local_unnamed_addr global ptr, align 8
@_ZTV11ResizeArrayItE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI11ResizeArrayItE, ptr @_ZN11ResizeArrayItED2Ev, ptr @_ZN11ResizeArrayItED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11ResizeArrayItE = linkonce_odr dso_local constant [17 x i8] c"11ResizeArrayItE\00", comdat, align 1
@_ZTI11ResizeArrayItE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ResizeArrayItE }, comdat, align 8
@_ZTV11ResizeArrayIdE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI11ResizeArrayIdE, ptr @_ZN11ResizeArrayIdED2Ev, ptr @_ZN11ResizeArrayIdED0Ev] }, comdat, align 8
@_ZTS11ResizeArrayIdE = linkonce_odr dso_local constant [17 x i8] c"11ResizeArrayIdE\00", comdat, align 1
@_ZTI11ResizeArrayIdE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ResizeArrayIdE }, comdat, align 8
@_ZTV11ResizeArrayI6VectorE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI11ResizeArrayI6VectorE, ptr @_ZN11ResizeArrayI6VectorED2Ev, ptr @_ZN11ResizeArrayI6VectorED0Ev] }, comdat, align 8
@_ZTS11ResizeArrayI6VectorE = linkonce_odr dso_local constant [23 x i8] c"11ResizeArrayI6VectorE\00", comdat, align 1
@_ZTI11ResizeArrayI6VectorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ResizeArrayI6VectorE }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Compute.C, ptr null }]

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN26ComputeNonbondedWorkArraysC2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
  %3 = getelementptr inbounds %class.ResizeArrayRaw, ptr %2, i64 0, i32 2
  %4 = getelementptr inbounds %class.ResizeArrayRaw, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds %class.ResizeArrayRaw, ptr %2, i64 0, i32 6
  store i32 8, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %class.ResizeArray, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !53
  store i32 0, ptr %3, align 8, !tbaa !55
  %7 = getelementptr inbounds %class.ResizeArrayRaw, ptr %2, i64 0, i32 4
  store i32 1, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 1
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayIdE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !43
  %9 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %10 unwind label %154

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %9, i64 0, i32 2
  %12 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %9, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %9, i64 0, i32 6
  store i32 8, ptr %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 1, i32 1
  store ptr %9, ptr %14, align 8, !tbaa !60
  store i32 0, ptr %11, align 8, !tbaa !62
  %15 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %9, i64 0, i32 4
  store i32 1, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 2
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !43
  %17 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %18 unwind label %156

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.ResizeArrayRaw, ptr %17, i64 0, i32 2
  %20 = getelementptr inbounds %class.ResizeArrayRaw, ptr %17, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %20, align 4, !tbaa !46
  %21 = getelementptr inbounds %class.ResizeArrayRaw, ptr %17, i64 0, i32 6
  store i32 8, ptr %21, align 8, !tbaa !52
  %22 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 2, i32 1
  store ptr %17, ptr %22, align 8, !tbaa !53
  store i32 0, ptr %19, align 8, !tbaa !55
  %23 = getelementptr inbounds %class.ResizeArrayRaw, ptr %17, i64 0, i32 4
  store i32 1, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 3
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !43
  %25 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %26 unwind label %158

26:                                               ; preds = %18
  %27 = getelementptr inbounds %class.ResizeArrayRaw, ptr %25, i64 0, i32 2
  %28 = getelementptr inbounds %class.ResizeArrayRaw, ptr %25, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds %class.ResizeArrayRaw, ptr %25, i64 0, i32 6
  store i32 8, ptr %29, align 8, !tbaa !52
  %30 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 3, i32 1
  store ptr %25, ptr %30, align 8, !tbaa !53
  store i32 0, ptr %27, align 8, !tbaa !55
  %31 = getelementptr inbounds %class.ResizeArrayRaw, ptr %25, i64 0, i32 4
  store i32 1, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 4
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %32, align 8, !tbaa !43
  %33 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %34 unwind label %160

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.ResizeArrayRaw, ptr %33, i64 0, i32 2
  %36 = getelementptr inbounds %class.ResizeArrayRaw, ptr %33, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %36, align 4, !tbaa !46
  %37 = getelementptr inbounds %class.ResizeArrayRaw, ptr %33, i64 0, i32 6
  store i32 8, ptr %37, align 8, !tbaa !52
  %38 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 4, i32 1
  store ptr %33, ptr %38, align 8, !tbaa !53
  store i32 0, ptr %35, align 8, !tbaa !55
  %39 = getelementptr inbounds %class.ResizeArrayRaw, ptr %33, i64 0, i32 4
  store i32 1, ptr %39, align 8, !tbaa !56
  %40 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %40, align 8, !tbaa !43
  %41 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %42 unwind label %162

42:                                               ; preds = %34
  %43 = getelementptr inbounds %class.ResizeArrayRaw, ptr %41, i64 0, i32 2
  %44 = getelementptr inbounds %class.ResizeArrayRaw, ptr %41, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %44, align 4, !tbaa !46
  %45 = getelementptr inbounds %class.ResizeArrayRaw, ptr %41, i64 0, i32 6
  store i32 8, ptr %45, align 8, !tbaa !52
  %46 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 5, i32 1
  store ptr %41, ptr %46, align 8, !tbaa !53
  store i32 0, ptr %43, align 8, !tbaa !55
  %47 = getelementptr inbounds %class.ResizeArrayRaw, ptr %41, i64 0, i32 4
  store i32 1, ptr %47, align 8, !tbaa !56
  %48 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %48, align 8, !tbaa !43
  %49 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %50 unwind label %164

50:                                               ; preds = %42
  %51 = getelementptr inbounds %class.ResizeArrayRaw, ptr %49, i64 0, i32 2
  %52 = getelementptr inbounds %class.ResizeArrayRaw, ptr %49, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %52, align 4, !tbaa !46
  %53 = getelementptr inbounds %class.ResizeArrayRaw, ptr %49, i64 0, i32 6
  store i32 8, ptr %53, align 8, !tbaa !52
  %54 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 6, i32 1
  store ptr %49, ptr %54, align 8, !tbaa !53
  store i32 0, ptr %51, align 8, !tbaa !55
  %55 = getelementptr inbounds %class.ResizeArrayRaw, ptr %49, i64 0, i32 4
  store i32 1, ptr %55, align 8, !tbaa !56
  %56 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 7
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %56, align 8, !tbaa !43
  %57 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %58 unwind label %166

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.ResizeArrayRaw, ptr %57, i64 0, i32 2
  %60 = getelementptr inbounds %class.ResizeArrayRaw, ptr %57, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %60, align 4, !tbaa !46
  %61 = getelementptr inbounds %class.ResizeArrayRaw, ptr %57, i64 0, i32 6
  store i32 8, ptr %61, align 8, !tbaa !52
  %62 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 7, i32 1
  store ptr %57, ptr %62, align 8, !tbaa !53
  store i32 0, ptr %59, align 8, !tbaa !55
  %63 = getelementptr inbounds %class.ResizeArrayRaw, ptr %57, i64 0, i32 4
  store i32 1, ptr %63, align 8, !tbaa !56
  %64 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %64, align 8, !tbaa !43
  %65 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %66 unwind label %168

66:                                               ; preds = %58
  %67 = getelementptr inbounds %class.ResizeArrayRaw, ptr %65, i64 0, i32 2
  %68 = getelementptr inbounds %class.ResizeArrayRaw, ptr %65, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %68, align 4, !tbaa !46
  %69 = getelementptr inbounds %class.ResizeArrayRaw, ptr %65, i64 0, i32 6
  store i32 8, ptr %69, align 8, !tbaa !52
  %70 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 8, i32 1
  store ptr %65, ptr %70, align 8, !tbaa !53
  store i32 0, ptr %67, align 8, !tbaa !55
  %71 = getelementptr inbounds %class.ResizeArrayRaw, ptr %65, i64 0, i32 4
  store i32 1, ptr %71, align 8, !tbaa !56
  %72 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 9
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %72, align 8, !tbaa !43
  %73 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %74 unwind label %170

74:                                               ; preds = %66
  %75 = getelementptr inbounds %class.ResizeArrayRaw, ptr %73, i64 0, i32 2
  %76 = getelementptr inbounds %class.ResizeArrayRaw, ptr %73, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %76, align 4, !tbaa !46
  %77 = getelementptr inbounds %class.ResizeArrayRaw, ptr %73, i64 0, i32 6
  store i32 8, ptr %77, align 8, !tbaa !52
  %78 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 9, i32 1
  store ptr %73, ptr %78, align 8, !tbaa !53
  store i32 0, ptr %75, align 8, !tbaa !55
  %79 = getelementptr inbounds %class.ResizeArrayRaw, ptr %73, i64 0, i32 4
  store i32 1, ptr %79, align 8, !tbaa !56
  %80 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 10
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %80, align 8, !tbaa !43
  %81 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %82 unwind label %172

82:                                               ; preds = %74
  %83 = getelementptr inbounds %class.ResizeArrayRaw, ptr %81, i64 0, i32 2
  %84 = getelementptr inbounds %class.ResizeArrayRaw, ptr %81, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %81, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %84, align 4, !tbaa !46
  %85 = getelementptr inbounds %class.ResizeArrayRaw, ptr %81, i64 0, i32 6
  store i32 8, ptr %85, align 8, !tbaa !52
  %86 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 10, i32 1
  store ptr %81, ptr %86, align 8, !tbaa !53
  store i32 0, ptr %83, align 8, !tbaa !55
  %87 = getelementptr inbounds %class.ResizeArrayRaw, ptr %81, i64 0, i32 4
  store i32 1, ptr %87, align 8, !tbaa !56
  %88 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 11
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %88, align 8, !tbaa !43
  %89 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %90 unwind label %174

90:                                               ; preds = %82
  %91 = getelementptr inbounds %class.ResizeArrayRaw, ptr %89, i64 0, i32 2
  %92 = getelementptr inbounds %class.ResizeArrayRaw, ptr %89, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %92, align 4, !tbaa !46
  %93 = getelementptr inbounds %class.ResizeArrayRaw, ptr %89, i64 0, i32 6
  store i32 8, ptr %93, align 8, !tbaa !52
  %94 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 11, i32 1
  store ptr %89, ptr %94, align 8, !tbaa !53
  store i32 0, ptr %91, align 8, !tbaa !55
  %95 = getelementptr inbounds %class.ResizeArrayRaw, ptr %89, i64 0, i32 4
  store i32 1, ptr %95, align 8, !tbaa !56
  %96 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 12
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %96, align 8, !tbaa !43
  %97 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %98 unwind label %176

98:                                               ; preds = %90
  %99 = getelementptr inbounds %class.ResizeArrayRaw, ptr %97, i64 0, i32 2
  %100 = getelementptr inbounds %class.ResizeArrayRaw, ptr %97, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %100, align 4, !tbaa !46
  %101 = getelementptr inbounds %class.ResizeArrayRaw, ptr %97, i64 0, i32 6
  store i32 8, ptr %101, align 8, !tbaa !52
  %102 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 12, i32 1
  store ptr %97, ptr %102, align 8, !tbaa !53
  store i32 0, ptr %99, align 8, !tbaa !55
  %103 = getelementptr inbounds %class.ResizeArrayRaw, ptr %97, i64 0, i32 4
  store i32 1, ptr %103, align 8, !tbaa !56
  %104 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %104, align 8, !tbaa !43
  %105 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %106 unwind label %178

106:                                              ; preds = %98
  %107 = getelementptr inbounds %class.ResizeArrayRaw, ptr %105, i64 0, i32 2
  %108 = getelementptr inbounds %class.ResizeArrayRaw, ptr %105, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %105, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %108, align 4, !tbaa !46
  %109 = getelementptr inbounds %class.ResizeArrayRaw, ptr %105, i64 0, i32 6
  store i32 8, ptr %109, align 8, !tbaa !52
  %110 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 13, i32 1
  store ptr %105, ptr %110, align 8, !tbaa !53
  store i32 0, ptr %107, align 8, !tbaa !55
  %111 = getelementptr inbounds %class.ResizeArrayRaw, ptr %105, i64 0, i32 4
  store i32 1, ptr %111, align 8, !tbaa !56
  %112 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %112, align 8, !tbaa !43
  %113 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %114 unwind label %180

114:                                              ; preds = %106
  %115 = getelementptr inbounds %class.ResizeArrayRaw, ptr %113, i64 0, i32 2
  %116 = getelementptr inbounds %class.ResizeArrayRaw, ptr %113, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %113, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %116, align 4, !tbaa !46
  %117 = getelementptr inbounds %class.ResizeArrayRaw, ptr %113, i64 0, i32 6
  store i32 8, ptr %117, align 8, !tbaa !52
  %118 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 14, i32 1
  store ptr %113, ptr %118, align 8, !tbaa !53
  store i32 0, ptr %115, align 8, !tbaa !55
  %119 = getelementptr inbounds %class.ResizeArrayRaw, ptr %113, i64 0, i32 4
  store i32 1, ptr %119, align 8, !tbaa !56
  %120 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %120, align 8, !tbaa !43
  %121 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %122 unwind label %182

122:                                              ; preds = %114
  %123 = getelementptr inbounds %class.ResizeArrayRaw, ptr %121, i64 0, i32 2
  %124 = getelementptr inbounds %class.ResizeArrayRaw, ptr %121, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %121, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %124, align 4, !tbaa !46
  %125 = getelementptr inbounds %class.ResizeArrayRaw, ptr %121, i64 0, i32 6
  store i32 8, ptr %125, align 8, !tbaa !52
  %126 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 15, i32 1
  store ptr %121, ptr %126, align 8, !tbaa !53
  store i32 0, ptr %123, align 8, !tbaa !55
  %127 = getelementptr inbounds %class.ResizeArrayRaw, ptr %121, i64 0, i32 4
  store i32 1, ptr %127, align 8, !tbaa !56
  %128 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 16
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %128, align 8, !tbaa !43
  %129 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %130 unwind label %184

130:                                              ; preds = %122
  %131 = getelementptr inbounds %class.ResizeArrayRaw, ptr %129, i64 0, i32 2
  %132 = getelementptr inbounds %class.ResizeArrayRaw, ptr %129, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %129, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %132, align 4, !tbaa !46
  %133 = getelementptr inbounds %class.ResizeArrayRaw, ptr %129, i64 0, i32 6
  store i32 8, ptr %133, align 8, !tbaa !52
  %134 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 16, i32 1
  store ptr %129, ptr %134, align 8, !tbaa !53
  store i32 0, ptr %131, align 8, !tbaa !55
  %135 = getelementptr inbounds %class.ResizeArrayRaw, ptr %129, i64 0, i32 4
  store i32 1, ptr %135, align 8, !tbaa !56
  %136 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 17
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayI6VectorE, i64 0, inrange i32 0, i64 2), ptr %136, align 8, !tbaa !43
  %137 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %138 unwind label %186, !prof !64

138:                                              ; preds = %130
  %139 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %137, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %137, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %139, align 4, !tbaa !65
  %140 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %137, i64 0, i32 6
  store i32 8, ptr %140, align 8, !tbaa !67
  %141 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 17, i32 1
  store ptr %137, ptr %141, align 8, !tbaa !68
  invoke void @_ZN14ResizeArrayRawI6VectorE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %137, i32 noundef 0)
          to label %142 unwind label %186, !prof !64

142:                                              ; preds = %138
  %143 = load ptr, ptr %141, align 8, !tbaa !68
  %144 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %143, i64 0, i32 4
  store i32 1, ptr %144, align 8, !tbaa !70
  %145 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayI6VectorE, i64 0, inrange i32 0, i64 2), ptr %145, align 8, !tbaa !43
  %146 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
          to label %147 unwind label %188, !prof !64

147:                                              ; preds = %142
  %148 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %146, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %146, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %148, align 4, !tbaa !65
  %149 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %146, i64 0, i32 6
  store i32 8, ptr %149, align 8, !tbaa !67
  %150 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 18, i32 1
  store ptr %146, ptr %150, align 8, !tbaa !68
  invoke void @_ZN14ResizeArrayRawI6VectorE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %146, i32 noundef 0)
          to label %151 unwind label %188, !prof !64

151:                                              ; preds = %147
  %152 = load ptr, ptr %150, align 8, !tbaa !68
  %153 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %152, i64 0, i32 4
  store i32 1, ptr %153, align 8, !tbaa !70
  ret void

154:                                              ; preds = %1
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %222

156:                                              ; preds = %10
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %220

158:                                              ; preds = %18
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %218

160:                                              ; preds = %26
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %216

162:                                              ; preds = %34
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %214

164:                                              ; preds = %42
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %212

166:                                              ; preds = %50
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %210

168:                                              ; preds = %58
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %208

170:                                              ; preds = %66
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %206

172:                                              ; preds = %74
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %204

174:                                              ; preds = %82
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %202

176:                                              ; preds = %90
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %200

178:                                              ; preds = %98
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %198

180:                                              ; preds = %106
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %196

182:                                              ; preds = %114
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %194

184:                                              ; preds = %122
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %192

186:                                              ; preds = %138, %130
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %190

188:                                              ; preds = %147, %142
  %189 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %136) #13
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi { ptr, i32 } [ %189, %188 ], [ %187, %186 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %128) #13
  br label %192

192:                                              ; preds = %190, %184
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %185, %184 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %120) #13
  br label %194

194:                                              ; preds = %192, %182
  %195 = phi { ptr, i32 } [ %193, %192 ], [ %183, %182 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %112) #13
  br label %196

196:                                              ; preds = %194, %180
  %197 = phi { ptr, i32 } [ %195, %194 ], [ %181, %180 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %104) #13
  br label %198

198:                                              ; preds = %196, %178
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %179, %178 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %96) #13
  br label %200

200:                                              ; preds = %198, %176
  %201 = phi { ptr, i32 } [ %199, %198 ], [ %177, %176 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %88) #13
  br label %202

202:                                              ; preds = %200, %174
  %203 = phi { ptr, i32 } [ %201, %200 ], [ %175, %174 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %80) #13
  br label %204

204:                                              ; preds = %202, %172
  %205 = phi { ptr, i32 } [ %203, %202 ], [ %173, %172 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %72) #13
  br label %206

206:                                              ; preds = %204, %170
  %207 = phi { ptr, i32 } [ %205, %204 ], [ %171, %170 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %64) #13
  br label %208

208:                                              ; preds = %206, %168
  %209 = phi { ptr, i32 } [ %207, %206 ], [ %169, %168 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %56) #13
  br label %210

210:                                              ; preds = %208, %166
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %167, %166 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %48) #13
  br label %212

212:                                              ; preds = %210, %164
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %165, %164 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #13
  br label %214

214:                                              ; preds = %212, %162
  %215 = phi { ptr, i32 } [ %213, %212 ], [ %163, %162 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #13
  br label %216

216:                                              ; preds = %214, %160
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %161, %160 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #13
  br label %218

218:                                              ; preds = %216, %158
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %159, %158 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #13
  br label %220

220:                                              ; preds = %218, %156
  %221 = phi { ptr, i32 } [ %219, %218 ], [ %157, %156 ]
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %222

222:                                              ; preds = %220, %154
  %223 = phi { ptr, i32 } [ %221, %220 ], [ %155, %154 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  resume { ptr, i32 } %223
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN26ComputeNonbondedWorkArraysD2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #1 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 18
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %3 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 17
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %4 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 16
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  %5 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 15
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %6 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 14
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  %7 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 13
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  %8 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 12
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  %9 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 11
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  %10 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 10
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  %11 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 9
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  %12 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 8
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #13
  %13 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 7
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  %14 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 6
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #13
  %15 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 5
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #13
  %16 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 4
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #13
  %17 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 3
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #13
  %18 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 2
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #13
  %19 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 1
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #13
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 align 2 !prof !72 {
  %3 = alloca %struct.nonbonded, align 8
  %4 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load i32, ptr %0, align 8, !tbaa !75
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %class.Patch, ptr %5, i64 %7
  %9 = load i32, ptr %1, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #13
  %10 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6
  store double -9.999900e+04, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6, i32 1
  store double -9.999900e+04, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6, i32 2
  store double -9.999900e+04, ptr %12, align 8, !tbaa !83
  %13 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  store ptr %14, ptr %3, align 8, !tbaa !86
  %15 = load ptr, ptr %13, align 8, !tbaa !84
  %16 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %15, ptr %16, align 8, !tbaa !86
  %17 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !86
  %20 = load ptr, ptr %17, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1, i64 1
  store ptr %20, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !86
  %25 = load ptr, ptr %22, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3, i64 1
  store ptr %25, ptr %26, align 8, !tbaa !86
  %27 = load i32, ptr %8, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !90
  %29 = load i32, ptr %8, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5, i64 1
  store i32 %29, ptr %30, align 4, !tbaa !90
  %31 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 8
  store ptr null, ptr %34, align 8, !tbaa !94
  %35 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 16
  store i32 0, ptr %35, align 4, !tbaa !95
  %36 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 17
  store i32 1, ptr %36, align 8, !tbaa !96
  %37 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 18
  store i32 1, ptr %37, align 4, !tbaa !97
  %38 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 9
  store ptr @_ZL10workArrays, ptr %38, align 8, !tbaa !98
  %39 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 10
  store ptr %39, ptr %40, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 11
  store i32 0, ptr %41, align 8, !tbaa !100
  %42 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !101
  %43 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 13
  store double %42, ptr %43, align 8, !tbaa !102
  %44 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !103
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !104

47:                                               ; preds = %2
  %48 = load double, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !101
  store double %48, ptr %43, align 8, !tbaa !102
  %49 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 2
  store i32 1, ptr %49, align 8, !tbaa !105
  store i32 1, ptr %41, align 8, !tbaa !100
  br label %50

50:                                               ; preds = %47, %2
  %51 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !105
  %53 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 12
  store i32 %52, ptr %53, align 4, !tbaa !106
  %54 = load double, ptr %43, align 8, !tbaa !102
  %55 = load double, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !101
  %56 = fadd double %54, %55
  %57 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 14
  store double %56, ptr %57, align 8, !tbaa !107
  %58 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !108
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61, !prof !109

61:                                               ; preds = %50
  %62 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !110
  %64 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4
  store ptr %63, ptr %64, align 8, !tbaa !86
  %65 = load ptr, ptr %62, align 8, !tbaa !110
  %66 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !86
  %67 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !111
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq i32 %9, 0
  br i1 %69, label %73, label %71, !prof !112

71:                                               ; preds = %61
  %72 = select i1 %70, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, !prof !113
  br label %78

73:                                               ; preds = %61
  %74 = select i1 %70, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, !prof !113
  br label %78

75:                                               ; preds = %50
  %76 = icmp eq i32 %9, 0
  %77 = select i1 %76, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, !prof !113
  br label %78

78:                                               ; preds = %75, %73, %71
  %79 = phi ptr [ %72, %71 ], [ %74, %73 ], [ %77, %75 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !86
  call void %80(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 align 2 !prof !114 {
  %3 = alloca %struct.nonbonded, align 8
  %4 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load i32, ptr %0, align 8, !tbaa !115
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %class.Patch, ptr %5, i64 %7
  %9 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.Patch, ptr %5, i64 %11
  %13 = load i32, ptr %1, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #13
  %14 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6
  store double -9.999900e+04, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6, i32 1
  store double -9.999900e+04, ptr %15, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6, i32 2
  store double -9.999900e+04, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !119
  %21 = srem i32 %20, 3
  %22 = add nsw i32 %21, -1
  %23 = sitofp i32 %22 to double
  %24 = load double, ptr %18, align 8, !tbaa !80, !noalias !120
  %25 = fmul double %24, %23
  %26 = getelementptr inbounds %class.Vector, ptr %18, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !82, !noalias !120
  %28 = fmul double %27, %23
  %29 = getelementptr inbounds %class.Vector, ptr %18, i64 0, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !83, !noalias !120
  %31 = fmul double %30, %23
  %32 = sdiv i32 %20, 3
  %33 = srem i32 %32, 3
  %34 = add nsw i32 %33, -1
  %35 = sitofp i32 %34 to double
  %36 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 1
  %37 = load double, ptr %36, align 8, !tbaa !80, !noalias !120
  %38 = fmul double %37, %35
  %39 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 1, i32 1
  %40 = load double, ptr %39, align 8, !tbaa !82, !noalias !120
  %41 = fmul double %40, %35
  %42 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 1, i32 2
  %43 = load double, ptr %42, align 8, !tbaa !83, !noalias !120
  %44 = fmul double %43, %35
  %45 = fadd double %25, %38
  %46 = fadd double %28, %41
  %47 = fadd double %31, %44
  %48 = sdiv i32 %20, 9
  %49 = add nsw i32 %48, -1
  %50 = sitofp i32 %49 to double
  %51 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 2
  %52 = load double, ptr %51, align 8, !tbaa !80, !noalias !120
  %53 = fmul double %52, %50
  %54 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 2, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !82, !noalias !120
  %56 = fmul double %55, %50
  %57 = getelementptr inbounds %class.Lattice, ptr %18, i64 0, i32 2, i32 2
  %58 = load double, ptr %57, align 8, !tbaa !83, !noalias !120
  %59 = fmul double %58, %50
  %60 = fadd double %45, %53
  %61 = fadd double %46, %56
  %62 = fadd double %47, %59
  %63 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !121
  %65 = srem i32 %64, 3
  %66 = add nsw i32 %65, -1
  %67 = sitofp i32 %66 to double
  %68 = fmul double %24, %67
  %69 = fmul double %27, %67
  %70 = fmul double %30, %67
  %71 = sdiv i32 %64, 3
  %72 = srem i32 %71, 3
  %73 = add nsw i32 %72, -1
  %74 = sitofp i32 %73 to double
  %75 = fmul double %37, %74
  %76 = fmul double %40, %74
  %77 = fmul double %43, %74
  %78 = fadd double %68, %75
  %79 = fadd double %69, %76
  %80 = fadd double %70, %77
  %81 = sdiv i32 %64, 9
  %82 = add nsw i32 %81, -1
  %83 = sitofp i32 %82 to double
  %84 = fmul double %52, %83
  %85 = fmul double %55, %83
  %86 = fmul double %58, %83
  %87 = fadd double %84, %78
  %88 = fadd double %85, %79
  %89 = fadd double %86, %80
  %90 = fsub double %60, %87
  %91 = fsub double %61, %88
  %92 = fsub double %62, %89
  store double %90, ptr %14, align 8, !tbaa.struct !122
  store double %91, ptr %15, align 8, !tbaa.struct !123
  store double %92, ptr %16, align 8, !tbaa.struct !124
  %93 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !84
  store ptr %94, ptr %3, align 8, !tbaa !86
  %95 = getelementptr inbounds %class.Patch, ptr %5, i64 %11, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !84
  %97 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %96, ptr %97, align 8, !tbaa !86
  %98 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !87
  %100 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !86
  %101 = getelementptr inbounds %class.Patch, ptr %5, i64 %11, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !86
  %104 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !88
  %106 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !86
  %107 = getelementptr inbounds %class.Patch, ptr %5, i64 %11, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !88
  %109 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !86
  %110 = load i32, ptr %8, align 8, !tbaa !89
  %111 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5
  store i32 %110, ptr %111, align 8, !tbaa !90
  %112 = load i32, ptr %12, align 8, !tbaa !89
  %113 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5, i64 1
  store i32 %112, ptr %113, align 4, !tbaa !90
  %114 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !91
  %116 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 7
  store ptr %115, ptr %116, align 8, !tbaa !92
  %117 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 8
  store ptr null, ptr %117, align 8, !tbaa !94
  %118 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 16
  store i32 0, ptr %118, align 4, !tbaa !95
  %119 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 17
  store i32 1, ptr %119, align 8, !tbaa !96
  %120 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 18
  store i32 1, ptr %120, align 4, !tbaa !97
  %121 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 9
  store ptr @_ZL10workArrays, ptr %121, align 8, !tbaa !98
  %122 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 4
  %123 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 10
  store ptr %122, ptr %123, align 8, !tbaa !99
  %124 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 11
  store i32 0, ptr %124, align 8, !tbaa !100
  %125 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !101
  %126 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 13
  store double %125, ptr %126, align 8, !tbaa !102
  %127 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !103
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130, !prof !125

130:                                              ; preds = %2
  %131 = load double, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !101
  store double %131, ptr %126, align 8, !tbaa !102
  %132 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 5
  store i32 1, ptr %132, align 8, !tbaa !126
  store i32 1, ptr %124, align 8, !tbaa !100
  br label %133

133:                                              ; preds = %130, %2
  %134 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 5
  %135 = load i32, ptr %134, align 8, !tbaa !126
  %136 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 12
  store i32 %135, ptr %136, align 4, !tbaa !106
  %137 = load double, ptr %126, align 8, !tbaa !102
  %138 = load double, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !101
  %139 = fadd double %137, %138
  %140 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 14
  store double %139, ptr %140, align 8, !tbaa !107
  %141 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !108
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %159, label %144, !prof !127

144:                                              ; preds = %133
  %145 = getelementptr inbounds %class.Patch, ptr %5, i64 %7, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !110
  %147 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4
  store ptr %146, ptr %147, align 8, !tbaa !86
  %148 = getelementptr inbounds %class.Patch, ptr %5, i64 %11, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !110
  %150 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4, i64 1
  store ptr %149, ptr %150, align 8, !tbaa !86
  %151 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !111
  %153 = icmp eq i32 %152, 0
  %154 = icmp eq i32 %13, 0
  br i1 %153, label %157, label %155, !prof !128

155:                                              ; preds = %144
  %156 = select i1 %154, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, !prof !129
  br label %162

157:                                              ; preds = %144
  %158 = select i1 %154, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, !prof !129
  br label %162

159:                                              ; preds = %133
  %160 = icmp eq i32 %13, 0
  %161 = select i1 %160, ptr @_ZN20ComputeNonbondedUtil8calcPairE, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, !prof !129
  br label %162

162:                                              ; preds = %159, %157, %155
  %163 = phi ptr [ %156, %155 ], [ %158, %157 ], [ %161, %159 ]
  %164 = load ptr, ptr %163, align 8, !tbaa !86
  call void %164(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayI6VectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %class.ResizeArray.1, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !70
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, null
  %9 = or i1 %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZdaPv(ptr noundef %12) #14
  br label %15

15:                                               ; preds = %10, %14
  tail call void @_ZdlPv(ptr noundef %3) #14
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %class.ResizeArray, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %class.ResizeArrayRaw, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !56
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, null
  %9 = or i1 %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.ResizeArrayRaw, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZdaPv(ptr noundef %12) #14
  br label %15

15:                                               ; preds = %10, %14
  tail call void @_ZdlPv(ptr noundef %3) #14
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %class.ResizeArray.0, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !63
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, null
  %9 = or i1 %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZdaPv(ptr noundef %12) #14
  br label %15

15:                                               ; preds = %10, %14
  tail call void @_ZdlPv(ptr noundef %3) #14
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayItED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 !prof !71 {
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayIdED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 !prof !71 {
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawI6VectorE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !133 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !134
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %57, !prof !135

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !136
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %43, !prof !137

10:                                               ; preds = %6
  %11 = sitofp i32 %8 to float
  %12 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !65
  %14 = fmul float %13, %11
  %15 = fptosi float %14 to i32
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %1)
  %17 = sub nsw i32 %16, %8
  %18 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = icmp slt i32 %17, %19
  %21 = add nsw i32 %19, %8
  %22 = select i1 %20, i32 %21, i32 %16, !prof !138
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 24
  %25 = add nsw i64 %24, 31
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #12
  %27 = getelementptr inbounds i8, ptr %26, i64 31
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 31
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = load ptr, ptr %0, align 8, !tbaa !139
  %33 = sext i32 %4 to i64
  %34 = mul nsw i64 %33, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %32, i64 %34, i1 false), !prof !140
  %35 = icmp eq i32 %8, 0
  br i1 %35, label %41, label %36, !prof !141

36:                                               ; preds = %10
  %37 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !142

40:                                               ; preds = %36
  tail call void @_ZdaPv(ptr noundef %38) #14
  br label %41

41:                                               ; preds = %40, %36, %10
  %42 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 1
  store ptr %26, ptr %42, align 8, !tbaa !130
  store ptr %31, ptr %0, align 8, !tbaa !139
  store i32 %22, ptr %7, align 4, !tbaa !136
  br label %43

43:                                               ; preds = %6, %41
  %44 = load i32, ptr %3, align 8, !tbaa !134
  %45 = icmp slt i32 %44, %1
  br i1 %45, label %46, label %57, !prof !143

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8, !tbaa !139
  %48 = sext i32 %44 to i64
  %49 = sext i32 %1 to i64
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ %48, %46 ], [ %55, %50 ]
  %52 = getelementptr inbounds %class.Vector, ptr %47, i64 %51
  store double -9.999900e+04, ptr %52, align 8, !tbaa !80
  %53 = getelementptr inbounds %class.Vector, ptr %47, i64 %51, i32 1
  store double -9.999900e+04, ptr %53, align 8, !tbaa !82
  %54 = getelementptr inbounds %class.Vector, ptr %47, i64 %51, i32 2
  store double -9.999900e+04, ptr %54, align 8, !tbaa !83
  %55 = add nsw i64 %51, 1
  %56 = icmp eq i64 %55, %49
  br i1 %56, label %57, label %50, !prof !144, !llvm.loop !145

57:                                               ; preds = %50, %2, %43
  store i32 %1, ptr %3, align 8, !tbaa !134
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayI6VectorED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 !prof !71 {
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_Compute.C() #9 section ".text.startup" !prof !42 !PGOFuncName !148 {
  tail call void @_ZN26ComputeNonbondedWorkArraysC2Ev(ptr noundef nonnull align 8 dereferenceable(304) @_ZL10workArrays)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN26ComputeNonbondedWorkArraysD2Ev, ptr nonnull @_ZL10workArrays, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 30883462369}
!8 = !{!"MaxCount", i64 4281837148}
!9 = !{!"MaxInternalCount", i64 4281837148}
!10 = !{!"MaxFunctionCount", i64 1416892399}
!11 = !{!"NumCounts", i64 6403}
!12 = !{!"NumFunctions", i64 139}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 4281837148, i32 1}
!18 = !{i32 100000, i64 4281837148, i32 1}
!19 = !{i32 200000, i64 1264975759, i32 8}
!20 = !{i32 300000, i64 1264975759, i32 8}
!21 = !{i32 400000, i64 1264975759, i32 8}
!22 = !{i32 500000, i64 894261817, i32 14}
!23 = !{i32 600000, i64 894261817, i32 14}
!24 = !{i32 700000, i64 436233492, i32 22}
!25 = !{i32 800000, i64 148205155, i32 32}
!26 = !{i32 900000, i64 76129528, i32 61}
!27 = !{i32 950000, i64 24830040, i32 96}
!28 = !{i32 990000, i64 3860064, i32 233}
!29 = !{i32 999000, i64 440050, i32 440}
!30 = !{i32 999900, i64 92080, i32 568}
!31 = !{i32 999990, i64 9360, i32 655}
!32 = !{i32 999999, i64 1296, i32 707}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN26ComputeNonbondedWorkArraysC2Ev, ptr @_Znwm, i64 19}
!36 = !{ptr @_ZN26ComputeNonbondedWorkArraysC2Ev, ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, i64 2}
!37 = !{ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, ptr @_Znam, i64 4}
!38 = !{ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, ptr @_ZdaPv, i64 2}
!39 = !{ptr @_GLOBAL__sub_I_Compute.C, ptr @_ZN26ComputeNonbondedWorkArraysC2Ev, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_Compute.C, ptr @__cxa_atexit, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !51, i64 28}
!47 = !{!"_ZTS14ResizeArrayRawItE", !48, i64 0, !48, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !51, i64 28, !50, i64 32}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !45, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"float", !49, i64 0}
!52 = !{!47, !50, i64 32}
!53 = !{!54, !48, i64 8}
!54 = !{!"_ZTS11ResizeArrayItE", !48, i64 8}
!55 = !{!47, !50, i64 16}
!56 = !{!47, !50, i64 24}
!57 = !{!58, !51, i64 28}
!58 = !{!"_ZTS14ResizeArrayRawIdE", !48, i64 0, !48, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !51, i64 28, !50, i64 32}
!59 = !{!58, !50, i64 32}
!60 = !{!61, !48, i64 8}
!61 = !{!"_ZTS11ResizeArrayIdE", !48, i64 8}
!62 = !{!58, !50, i64 16}
!63 = !{!58, !50, i64 24}
!64 = !{!"branch_weights", i32 1, i32 0}
!65 = !{!66, !51, i64 28}
!66 = !{!"_ZTS14ResizeArrayRawI6VectorE", !48, i64 0, !48, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !51, i64 28, !50, i64 32}
!67 = !{!66, !50, i64 32}
!68 = !{!69, !48, i64 8}
!69 = !{!"_ZTS11ResizeArrayI6VectorE", !48, i64 8}
!70 = !{!66, !50, i64 24}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!"function_entry_count", i64 56160}
!73 = !{!74, !48, i64 24}
!74 = !{!"_ZTS9PatchList", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!75 = !{!76, !50, i64 0}
!76 = !{!"_ZTS11SelfCompute", !50, i64 0, !77, i64 8, !50, i64 24, !78, i64 32}
!77 = !{!"_ZTS9Pairlists", !48, i64 0, !50, i64 8, !50, i64 12}
!78 = !{!"double", !49, i64 0}
!79 = !{!74, !50, i64 0}
!80 = !{!81, !78, i64 0}
!81 = !{!"_ZTS6Vector", !78, i64 0, !78, i64 8, !78, i64 16}
!82 = !{!81, !78, i64 8}
!83 = !{!81, !78, i64 16}
!84 = !{!85, !48, i64 8}
!85 = !{!"_ZTS5Patch", !50, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !50, i64 48}
!86 = !{!48, !48, i64 0}
!87 = !{!85, !48, i64 16}
!88 = !{!85, !48, i64 24}
!89 = !{!85, !50, i64 0}
!90 = !{!50, !50, i64 0}
!91 = !{!74, !48, i64 40}
!92 = !{!93, !48, i64 112}
!93 = !{!"_ZTS9nonbonded", !49, i64 0, !49, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !49, i64 80, !81, i64 88, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !50, i64 144, !50, i64 148, !78, i64 152, !78, i64 160, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!94 = !{!93, !48, i64 120}
!95 = !{!93, !50, i64 172}
!96 = !{!93, !50, i64 176}
!97 = !{!93, !50, i64 180}
!98 = !{!93, !48, i64 128}
!99 = !{!93, !48, i64 136}
!100 = !{!93, !50, i64 144}
!101 = !{!78, !78, i64 0}
!102 = !{!93, !78, i64 152}
!103 = !{!74, !50, i64 12}
!104 = !{!"branch_weights", i32 48096, i32 8064}
!105 = !{!76, !50, i64 24}
!106 = !{!93, !50, i64 148}
!107 = !{!93, !78, i64 160}
!108 = !{!74, !50, i64 4}
!109 = !{!"branch_weights", i32 18720, i32 37440}
!110 = !{!85, !48, i64 32}
!111 = !{!74, !50, i64 8}
!112 = !{!"branch_weights", i32 18720, i32 18720}
!113 = !{!"branch_weights", i32 9360, i32 9360}
!114 = !{!"function_entry_count", i64 730080}
!115 = !{!116, !50, i64 0}
!116 = !{!"_ZTS11PairCompute", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !77, i64 16, !50, i64 32, !78, i64 40}
!117 = !{!116, !50, i64 8}
!118 = !{!74, !48, i64 32}
!119 = !{!116, !50, i64 4}
!120 = !{}
!121 = !{!116, !50, i64 12}
!122 = !{i64 0, i64 8, !101, i64 8, i64 8, !101, i64 16, i64 8, !101}
!123 = !{i64 0, i64 8, !101, i64 8, i64 8, !101}
!124 = !{i64 0, i64 8, !101}
!125 = !{!"branch_weights", i32 625248, i32 104832}
!126 = !{!116, !50, i64 32}
!127 = !{!"branch_weights", i32 243360, i32 486720}
!128 = !{!"branch_weights", i32 243360, i32 243360}
!129 = !{!"branch_weights", i32 121680, i32 121680}
!130 = !{!66, !48, i64 8}
!131 = !{!47, !48, i64 8}
!132 = !{!58, !48, i64 8}
!133 = !{!"function_entry_count", i64 74882}
!134 = !{!66, !50, i64 16}
!135 = !{!"branch_weights", i32 1520150328, i32 1478424480}
!136 = !{!66, !50, i64 20}
!137 = !{!"branch_weights", i32 4, i32 37958}
!138 = !{!"branch_weights", i32 0, i32 4}
!139 = !{!66, !48, i64 0}
!140 = !{!"VP", i32 1, i64 4, i64 0, i64 2, i64 513, i64 2}
!141 = !{!"branch_weights", i32 2, i32 2}
!142 = !{!"branch_weights", i32 0, i32 2}
!143 = !{!"branch_weights", i32 37961, i32 1}
!144 = !{!"branch_weights", i32 37961, i32 1007459}
!145 = distinct !{!145, !146, !147}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !{!"Compute.C;_GLOBAL__sub_I_Compute.C"}
