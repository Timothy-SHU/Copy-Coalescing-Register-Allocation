; ModuleID = 'Compute.C'
source_filename = "Compute.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ComputeNonbondedWorkArrays = type { %class.ResizeArray, %class.ResizeArray.0, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray, %class.ResizeArray.1, %class.ResizeArray.1 }
%class.ResizeArray.0 = type { ptr, ptr }
%class.ResizeArray = type { ptr, ptr }
%class.ResizeArray.1 = type { ptr, ptr }
%struct.nonbonded = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x i32], %class.Vector, ptr, ptr, ptr, ptr, i32, i32, double, double, i32, i32, i32, i32 }
%class.Vector = type { double, double, double }
%class.PatchList = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%class.Patch = type <{ i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%class.SelfCompute = type { i32, %class.Pairlists, i32, double }
%class.Pairlists = type { ptr, i32, i32 }
%class.PairCompute = type { i32, i32, i32, i32, %class.Pairlists, i32, double }
%class.Lattice = type <{ %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, i32, [4 x i8] }>
%class.ResizeArrayRaw = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>
%class.ResizeArrayRaw.2 = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>
%class.ResizeArrayRaw.4 = type <{ ptr, ptr, i32, i32, i32, float, i32, [4 x i8] }>

$_ZN26ComputeNonbondedWorkArraysC2Ev = comdat any

$_ZN26ComputeNonbondedWorkArraysD2Ev = comdat any

$_ZN9nonbondedC2Ev = comdat any

$_ZN6VectoraSERKd = comdat any

$_ZmiRK6VectorS1_ = comdat any

$_ZNK7Lattice6offsetEi = comdat any

$_ZN11ResizeArrayItEC2Ev = comdat any

$_ZN11ResizeArrayIdEC2Ev = comdat any

$_ZN11ResizeArrayI6VectorEC2Ev = comdat any

$_ZN11ResizeArrayI6VectorED2Ev = comdat any

$_ZN11ResizeArrayItED2Ev = comdat any

$_ZN11ResizeArrayIdED2Ev = comdat any

$_ZN14ResizeArrayRawItEC2Ev = comdat any

$_ZN14ResizeArrayRawItE6resizeEi = comdat any

$_ZN11ResizeArrayItED0Ev = comdat any

$_ZN14ResizeArrayRawItE9resizeRawEi = comdat any

$_ZN14ResizeArrayRawIdEC2Ev = comdat any

$_ZN14ResizeArrayRawIdE6resizeEi = comdat any

$_ZN11ResizeArrayIdED0Ev = comdat any

$_ZN14ResizeArrayRawIdE9resizeRawEi = comdat any

$_ZN14ResizeArrayRawI6VectorEC2Ev = comdat any

$_ZN14ResizeArrayRawI6VectorE6resizeEi = comdat any

$_ZN11ResizeArrayI6VectorED0Ev = comdat any

$_ZN14ResizeArrayRawI6VectorE9resizeRawEi = comdat any

$_ZN6VectorC2Ev = comdat any

$_ZN14ResizeArrayRawI6VectorED2Ev = comdat any

$_ZNK14ResizeArrayRawI6VectorE4sizeEv = comdat any

$_ZN14ResizeArrayRawItED2Ev = comdat any

$_ZNK14ResizeArrayRawItE4sizeEv = comdat any

$_ZN14ResizeArrayRawIdED2Ev = comdat any

$_ZNK14ResizeArrayRawIdE4sizeEv = comdat any

$_ZN6VectorC2Eddd = comdat any

$_ZplRK6VectorS1_ = comdat any

$_ZmlRKdRK6Vector = comdat any

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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN26ComputeNonbondedWorkArraysC2Ev(ptr noundef nonnull align 8 dereferenceable(304) @_ZL10workArrays) #10
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN26ComputeNonbondedWorkArraysD2Ev, ptr nonnull @_ZL10workArrays, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN26ComputeNonbondedWorkArraysC2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 1
  invoke void @_ZN11ResizeArrayIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
          to label %3 unwind label %38

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 2
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
          to label %5 unwind label %40

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 3
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
          to label %7 unwind label %42

7:                                                ; preds = %5
  %8 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 4
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
          to label %9 unwind label %44

9:                                                ; preds = %7
  %10 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 5
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #10
          to label %11 unwind label %46

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 6
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #10
          to label %13 unwind label %48

13:                                               ; preds = %11
  %14 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 7
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #10
          to label %15 unwind label %50

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 8
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #10
          to label %17 unwind label %52

17:                                               ; preds = %15
  %18 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 9
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #10
          to label %19 unwind label %54

19:                                               ; preds = %17
  %20 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 10
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #10
          to label %21 unwind label %56

21:                                               ; preds = %19
  %22 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 11
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #10
          to label %23 unwind label %58

23:                                               ; preds = %21
  %24 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 12
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #10
          to label %25 unwind label %60

25:                                               ; preds = %23
  %26 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 13
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #10
          to label %27 unwind label %62

27:                                               ; preds = %25
  %28 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 14
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #10
          to label %29 unwind label %64

29:                                               ; preds = %27
  %30 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 15
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #10
          to label %31 unwind label %66

31:                                               ; preds = %29
  %32 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 16
  invoke void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #10
          to label %33 unwind label %68

33:                                               ; preds = %31
  %34 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 17
  invoke void @_ZN11ResizeArrayI6VectorEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #10
          to label %35 unwind label %70

35:                                               ; preds = %33
  %36 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 18
  invoke void @_ZN11ResizeArrayI6VectorEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #10
          to label %37 unwind label %72

37:                                               ; preds = %35
  ret void

38:                                               ; preds = %1
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %106

40:                                               ; preds = %3
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %104

42:                                               ; preds = %5
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %102

44:                                               ; preds = %7
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %100

46:                                               ; preds = %9
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %98

48:                                               ; preds = %11
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %96

50:                                               ; preds = %13
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %94

52:                                               ; preds = %15
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %92

54:                                               ; preds = %17
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %90

56:                                               ; preds = %19
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %88

58:                                               ; preds = %21
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %86

60:                                               ; preds = %23
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %84

62:                                               ; preds = %25
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %82

64:                                               ; preds = %27
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %80

66:                                               ; preds = %29
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %78

68:                                               ; preds = %31
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %76

70:                                               ; preds = %33
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %74

72:                                               ; preds = %35
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #12
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #12
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %69, %68 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #12
  br label %78

78:                                               ; preds = %76, %66
  %79 = phi { ptr, i32 } [ %77, %76 ], [ %67, %66 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #12
  br label %80

80:                                               ; preds = %78, %64
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %65, %64 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #12
  br label %82

82:                                               ; preds = %80, %62
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %63, %62 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #12
  br label %84

84:                                               ; preds = %82, %60
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %61, %60 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #12
  br label %86

86:                                               ; preds = %84, %58
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %59, %58 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #12
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %57, %56 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #12
  br label %90

90:                                               ; preds = %88, %54
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %55, %54 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  br label %92

92:                                               ; preds = %90, %52
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %53, %52 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  br label %94

94:                                               ; preds = %92, %50
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %51, %50 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %96

96:                                               ; preds = %94, %48
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %49, %48 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  br label %98

98:                                               ; preds = %96, %46
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %47, %46 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  br label %100

100:                                              ; preds = %98, %44
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %45, %44 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  br label %102

102:                                              ; preds = %100, %42
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %43, %42 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  br label %104

104:                                              ; preds = %102, %40
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %41, %40 ]
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  br label %106

106:                                              ; preds = %104, %38
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %39, %38 ]
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  resume { ptr, i32 } %107
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN26ComputeNonbondedWorkArraysD2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 18
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  %3 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 17
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  %4 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 16
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  %5 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 15
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  %6 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 14
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  %7 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 13
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  %8 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 12
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  %9 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 11
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  %10 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 10
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  %11 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 9
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  %12 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 8
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  %13 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 7
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #12
  %14 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 6
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  %15 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 5
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  %16 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 4
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  %17 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 3
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  %18 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 2
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #12
  %19 = getelementptr inbounds %class.ComputeNonbondedWorkArrays, ptr %0, i64 0, i32 1
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #12
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 align 2 !prof !65 {
  %3 = alloca %struct.nonbonded, align 8
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load i32, ptr %0, align 8, !tbaa !72
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %class.Patch, ptr %6, i64 %8
  %10 = load i32, ptr %1, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #11
  call void @_ZN9nonbondedC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6
  %12 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6VectoraSERKd(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %13 = getelementptr inbounds %class.Patch, ptr %6, i64 %8, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  store ptr %14, ptr %3, align 8, !tbaa !80
  %15 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %14, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %class.Patch, ptr %6, i64 %8, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !80
  %19 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1, i64 1
  store ptr %17, ptr %19, align 8, !tbaa !80
  %20 = getelementptr inbounds %class.Patch, ptr %6, i64 %8, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3, i64 1
  store ptr %21, ptr %23, align 8, !tbaa !80
  %24 = load i32, ptr %9, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5
  store i32 %24, ptr %25, align 8, !tbaa !84
  %26 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5, i64 1
  store i32 %24, ptr %26, align 4, !tbaa !84
  %27 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 7
  store ptr %28, ptr %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 8
  store ptr null, ptr %30, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 16
  store i32 0, ptr %31, align 4, !tbaa !90
  %32 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 17
  store i32 1, ptr %32, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 18
  store i32 1, ptr %33, align 4, !tbaa !92
  %34 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 9
  store ptr @_ZL10workArrays, ptr %34, align 8, !tbaa !93
  %35 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 10
  store ptr %35, ptr %36, align 8, !tbaa !94
  %37 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 11
  store i32 0, ptr %37, align 8, !tbaa !95
  %38 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !77
  %39 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 13
  store double %38, ptr %39, align 8, !tbaa !96
  %40 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !97
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46, !prof !98

43:                                               ; preds = %2
  %44 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !99
  br label %49

46:                                               ; preds = %2
  %47 = load double, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !77
  store double %47, ptr %39, align 8, !tbaa !96
  %48 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 2
  store i32 1, ptr %48, align 8, !tbaa !99
  store i32 1, ptr %37, align 8, !tbaa !95
  br label %49

49:                                               ; preds = %43, %46
  %50 = phi double [ %38, %43 ], [ %47, %46 ]
  %51 = phi i32 [ %45, %43 ], [ 1, %46 ]
  %52 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 12
  store i32 %51, ptr %52, align 4, !tbaa !100
  %53 = load double, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !77
  %54 = fadd double %50, %53
  %55 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 14
  store double %54, ptr %55, align 8, !tbaa !101
  %56 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !102
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59, !prof !103

59:                                               ; preds = %49
  %60 = getelementptr inbounds %class.Patch, ptr %6, i64 %8, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4
  store ptr %61, ptr %62, align 8, !tbaa !80
  %63 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4, i64 1
  store ptr %61, ptr %63, align 8, !tbaa !80
  %64 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !105
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq i32 %10, 0
  br i1 %66, label %70, label %68, !prof !106

68:                                               ; preds = %59
  %69 = select i1 %67, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, !prof !107
  br label %75

70:                                               ; preds = %59
  %71 = select i1 %67, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, !prof !107
  br label %75

72:                                               ; preds = %49
  %73 = icmp eq i32 %10, 0
  %74 = select i1 %73, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, !prof !107
  br label %75

75:                                               ; preds = %72, %70, %68
  %76 = phi ptr [ %69, %68 ], [ %71, %70 ], [ %74, %72 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !80
  call void %77(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9nonbondedC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %struct.nonbonded, ptr %0, i64 0, i32 6
  tail call void @_ZN6VectorC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6VectoraSERKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !108 {
  %3 = load double, ptr %1, align 8, !tbaa !77
  store double %3, ptr %0, align 8, !tbaa !109
  %4 = getelementptr inbounds %class.Vector, ptr %0, i64 0, i32 1
  store double %3, ptr %4, align 8, !tbaa !110
  %5 = load double, ptr %1, align 8, !tbaa !77
  %6 = getelementptr inbounds %class.Vector, ptr %0, i64 0, i32 2
  store double %5, ptr %6, align 8, !tbaa !111
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 align 2 !prof !112 {
  %3 = alloca %struct.nonbonded, align 8
  %4 = alloca %class.Vector, align 8
  %5 = alloca %class.Vector, align 8
  %6 = alloca %class.Vector, align 8
  %7 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = load i32, ptr %0, align 8, !tbaa !113
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %class.Patch, ptr %8, i64 %10
  %12 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %class.Patch, ptr %8, i64 %14
  %16 = load i32, ptr %1, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #11
  call void @_ZN9nonbondedC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %3) #10
  %17 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %19 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !117
  call void @_ZNK7Lattice6offsetEi(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %5, ptr noundef nonnull align 8 dereferenceable(180) %18, i32 noundef %20) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %21 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !118
  call void @_ZNK7Lattice6offsetEi(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %6, ptr noundef nonnull align 8 dereferenceable(180) %18, i32 noundef %22) #10
  call void @_ZmiRK6VectorS1_(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %23 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %24 = getelementptr inbounds %class.Patch, ptr %8, i64 %10, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  store ptr %25, ptr %3, align 8, !tbaa !80
  %26 = getelementptr inbounds %class.Patch, ptr %8, i64 %14, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %27, ptr %28, align 8, !tbaa !80
  %29 = getelementptr inbounds %class.Patch, ptr %8, i64 %10, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !80
  %32 = getelementptr inbounds %class.Patch, ptr %8, i64 %14, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 1, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !80
  %35 = getelementptr inbounds %class.Patch, ptr %8, i64 %10, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %class.Patch, ptr %8, i64 %14, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 3, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !80
  %41 = load i32, ptr %11, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5
  store i32 %41, ptr %42, align 8, !tbaa !84
  %43 = load i32, ptr %15, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 5, i64 1
  store i32 %43, ptr %44, align 4, !tbaa !84
  %45 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 7
  store ptr %46, ptr %47, align 8, !tbaa !86
  %48 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 8
  store ptr null, ptr %48, align 8, !tbaa !89
  %49 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 16
  store i32 0, ptr %49, align 4, !tbaa !90
  %50 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 17
  store i32 1, ptr %50, align 8, !tbaa !91
  %51 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 18
  store i32 1, ptr %51, align 4, !tbaa !92
  %52 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 9
  store ptr @_ZL10workArrays, ptr %52, align 8, !tbaa !93
  %53 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 10
  store ptr %53, ptr %54, align 8, !tbaa !94
  %55 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 11
  store i32 0, ptr %55, align 8, !tbaa !95
  %56 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !77
  %57 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 13
  store double %56, ptr %57, align 8, !tbaa !96
  %58 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !97
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64, !prof !120

61:                                               ; preds = %2
  %62 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !121
  br label %67

64:                                               ; preds = %2
  %65 = load double, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !77
  store double %65, ptr %57, align 8, !tbaa !96
  %66 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 5
  store i32 1, ptr %66, align 8, !tbaa !121
  store i32 1, ptr %55, align 8, !tbaa !95
  br label %67

67:                                               ; preds = %61, %64
  %68 = phi double [ %56, %61 ], [ %65, %64 ]
  %69 = phi i32 [ %63, %61 ], [ 1, %64 ]
  %70 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 12
  store i32 %69, ptr %70, align 4, !tbaa !100
  %71 = load double, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !77
  %72 = fadd double %68, %71
  %73 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 14
  store double %72, ptr %73, align 8, !tbaa !101
  %74 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !102
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %92, label %77, !prof !122

77:                                               ; preds = %67
  %78 = getelementptr inbounds %class.Patch, ptr %8, i64 %10, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !104
  %80 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4
  store ptr %79, ptr %80, align 8, !tbaa !80
  %81 = getelementptr inbounds %class.Patch, ptr %8, i64 %14, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !104
  %83 = getelementptr inbounds %struct.nonbonded, ptr %3, i64 0, i32 4, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !80
  %84 = getelementptr inbounds %class.PatchList, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !105
  %86 = icmp eq i32 %85, 0
  %87 = icmp eq i32 %16, 0
  br i1 %86, label %90, label %88, !prof !123

88:                                               ; preds = %77
  %89 = select i1 %87, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, !prof !124
  br label %95

90:                                               ; preds = %77
  %91 = select i1 %87, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, !prof !124
  br label %95

92:                                               ; preds = %67
  %93 = icmp eq i32 %16, 0
  %94 = select i1 %93, ptr @_ZN20ComputeNonbondedUtil8calcPairE, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, !prof !124
  br label %95

95:                                               ; preds = %92, %90, %88
  %96 = phi ptr [ %89, %88 ], [ %91, %90 ], [ %94, %92 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !80
  call void %97(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZmiRK6VectorS1_(ptr dead_on_unwind noalias writable sret(%class.Vector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat !prof !112 {
  %4 = load double, ptr %1, align 8, !tbaa !109
  %5 = load double, ptr %2, align 8, !tbaa !109
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds %class.Vector, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !110
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds %class.Vector, ptr %1, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !111
  %16 = fsub double %13, %15
  tail call void @_ZN6VectorC2Eddd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %6, double noundef %11, double noundef %16) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK7Lattice6offsetEi(ptr dead_on_unwind noalias writable sret(%class.Vector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !125 {
  %4 = alloca %class.Vector, align 8
  %5 = alloca %class.Vector, align 8
  %6 = alloca double, align 8
  %7 = alloca %class.Vector, align 8
  %8 = alloca double, align 8
  %9 = alloca %class.Vector, align 8
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %11 = srem i32 %2, 3
  %12 = add nsw i32 %11, -1
  %13 = sitofp i32 %12 to double
  store double %13, ptr %6, align 8, !tbaa !77
  call void @_ZmlRKdRK6Vector(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %14 = sdiv i32 %2, 3
  %15 = srem i32 %14, 3
  %16 = add nsw i32 %15, -1
  %17 = sitofp i32 %16 to double
  store double %17, ptr %8, align 8, !tbaa !77
  %18 = getelementptr inbounds %class.Lattice, ptr %1, i64 0, i32 1
  call void @_ZmlRKdRK6Vector(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %18) #10
  call void @_ZplRK6VectorS1_(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %19 = sdiv i32 %2, 9
  %20 = add nsw i32 %19, -1
  %21 = sitofp i32 %20 to double
  store double %21, ptr %10, align 8, !tbaa !77
  %22 = getelementptr inbounds %class.Lattice, ptr %1, i64 0, i32 2
  call void @_ZmlRKdRK6Vector(ptr dead_on_unwind nonnull writable sret(%class.Vector) align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %22) #10
  call void @_ZplRK6VectorS1_(ptr dead_on_unwind writable sret(%class.Vector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayItEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13
  tail call void @_ZN14ResizeArrayRawItEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  %3 = getelementptr inbounds %class.ResizeArray, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !129
  tail call void @_ZN14ResizeArrayRawItE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = getelementptr inbounds %class.ResizeArrayRaw, ptr %4, i64 0, i32 4
  store i32 1, ptr %5, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13
  tail call void @_ZN14ResizeArrayRawIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  %3 = getelementptr inbounds %class.ResizeArray.0, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !135
  tail call void @_ZN14ResizeArrayRawIdE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %4, i64 0, i32 4
  store i32 1, ptr %5, align 8, !tbaa !137
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayI6VectorEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayI6VectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13
  tail call void @_ZN14ResizeArrayRawI6VectorEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  %3 = getelementptr inbounds %class.ResizeArray.1, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !140
  tail call void @_ZN14ResizeArrayRawI6VectorE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %4, i64 0, i32 4
  store i32 1, ptr %5, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayI6VectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %class.ResizeArray.1, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !142
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @_ZN14ResizeArrayRawI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  tail call void @_ZdlPv(ptr noundef nonnull %3) #14
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayItE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %class.ResizeArray, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %class.ResizeArrayRaw, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !131
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @_ZN14ResizeArrayRawItED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  tail call void @_ZdlPv(ptr noundef nonnull %3) #14
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV11ResizeArrayIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %class.ResizeArray.0, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !137
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @_ZN14ResizeArrayRawIdED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  tail call void @_ZdlPv(ptr noundef nonnull %3) #14
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawItEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %2, align 4, !tbaa !145
  %3 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 6
  store i32 8, ptr %3, align 8, !tbaa !146
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawItE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !148
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %7, !prof !149

6:                                                ; preds = %2
  tail call void @_ZN14ResizeArrayRawItE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #10
  br label %7

7:                                                ; preds = %2, %6
  store i32 %1, ptr %3, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayItED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11ResizeArrayItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawItE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !150 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %41, !prof !152

6:                                                ; preds = %2
  %7 = sitofp i32 %4 to float
  %8 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !145
  %10 = fmul float %9, %7
  %11 = fptosi float %10 to i32
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %1)
  %13 = sub nsw i32 %12, %4
  %14 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !146
  %16 = icmp slt i32 %13, %15
  %17 = add nsw i32 %15, %4
  %18 = select i1 %16, i32 %17, i32 %12, !prof !153
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 1
  %21 = add nsw i64 %20, 31
  %22 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %21) #13
  %23 = getelementptr inbounds i8, ptr %22, i64 31
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 31
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load ptr, ptr %0, align 8, !tbaa !154
  %29 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !148
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %28, i64 %32, i1 false)
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %39, label %34, !prof !155

34:                                               ; preds = %6
  %35 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !156
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdaPv(ptr noundef nonnull %36) #14
  br label %39

39:                                               ; preds = %34, %38, %6
  %40 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 1
  store ptr %22, ptr %40, align 8, !tbaa !156
  store ptr %27, ptr %0, align 8, !tbaa !154
  store i32 %18, ptr %3, align 4, !tbaa !151
  br label %41

41:                                               ; preds = %2, %39
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %2, align 4, !tbaa !157
  %3 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 6
  store i32 8, ptr %3, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawIdE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !160
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %7, !prof !161

6:                                                ; preds = %2
  tail call void @_ZN14ResizeArrayRawIdE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #10
  br label %7

7:                                                ; preds = %2, %6
  store i32 %1, ptr %3, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayIdED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11ResizeArrayIdED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawIdE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !163
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %41, !prof !164

6:                                                ; preds = %2
  %7 = sitofp i32 %4 to float
  %8 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !157
  %10 = fmul float %9, %7
  %11 = fptosi float %10 to i32
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %1)
  %13 = sub nsw i32 %12, %4
  %14 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !158
  %16 = icmp slt i32 %13, %15
  %17 = add nsw i32 %15, %4
  %18 = select i1 %16, i32 %17, i32 %12, !prof !165
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = add nsw i64 %20, 31
  %22 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %21) #13
  %23 = getelementptr inbounds i8, ptr %22, i64 31
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 31
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load ptr, ptr %0, align 8, !tbaa !166
  %29 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !160
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %28, i64 %32, i1 false)
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %39, label %34, !prof !167

34:                                               ; preds = %6
  %35 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !168
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdaPv(ptr noundef nonnull %36) #14
  br label %39

39:                                               ; preds = %34, %38, %6
  %40 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 1
  store ptr %22, ptr %40, align 8, !tbaa !168
  store ptr %27, ptr %0, align 8, !tbaa !166
  store i32 %18, ptr %3, align 4, !tbaa !163
  br label %41

41:                                               ; preds = %2, %39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawI6VectorEC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store float 1.500000e+00, ptr %2, align 4, !tbaa !169
  %3 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 6
  store i32 8, ptr %3, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawI6VectorE6resizeEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !172
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %18, !prof !173

6:                                                ; preds = %2
  tail call void @_ZN14ResizeArrayRawI6VectorE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #10
  %7 = load i32, ptr %3, align 8, !tbaa !172
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %18, !prof !174

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ %10, %9 ], [ %15, %11 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !175
  %14 = getelementptr inbounds %class.Vector, ptr %13, i64 %12
  tail call void @_ZN6VectorC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %15 = add nsw i64 %12, 1
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %11, !prof !176, !llvm.loop !177

18:                                               ; preds = %11, %2, %6
  store i32 %1, ptr %3, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11ResizeArrayI6VectorED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11ResizeArrayI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawI6VectorE9resizeRawEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !179 {
  %3 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !180
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %41, !prof !181

6:                                                ; preds = %2
  %7 = sitofp i32 %4 to float
  %8 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !169
  %10 = fmul float %9, %7
  %11 = fptosi float %10 to i32
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %1)
  %13 = sub nsw i32 %12, %4
  %14 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !170
  %16 = icmp slt i32 %13, %15
  %17 = add nsw i32 %15, %4
  %18 = select i1 %16, i32 %17, i32 %12, !prof !182
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 24
  %21 = add nsw i64 %20, 31
  %22 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %21) #13
  %23 = getelementptr inbounds i8, ptr %22, i64 31
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 31
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load ptr, ptr %0, align 8, !tbaa !175
  %29 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !172
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %28, i64 %32, i1 false)
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %39, label %34, !prof !183

34:                                               ; preds = %6
  %35 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !184
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdaPv(ptr noundef nonnull %36) #14
  br label %39

39:                                               ; preds = %34, %38, %6
  %40 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 1
  store ptr %22, ptr %40, align 8, !tbaa !184
  store ptr %27, ptr %0, align 8, !tbaa !175
  store i32 %18, ptr %3, align 4, !tbaa !180
  br label %41

41:                                               ; preds = %2, %39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6VectorC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !185 {
  store <2 x double> <double -9.999900e+04, double -9.999900e+04>, ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %class.Vector, ptr %0, i64 0, i32 2
  store double -9.999900e+04, ptr %2, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawI6VectorED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = tail call noundef i32 @_ZNK14ResizeArrayRawI6VectorE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %5 = icmp slt i32 %3, %4
  %6 = add nuw nsw i32 %3, 1
  br i1 %5, label %2, label %7, !llvm.loop !186

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14ResizeArrayRawI6VectorE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw.4, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !172
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawItED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = tail call noundef i32 @_ZNK14ResizeArrayRawItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %5 = icmp slt i32 %3, %4
  %6 = add nuw nsw i32 %3, 1
  br i1 %5, label %2, label %7, !llvm.loop !187

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14ResizeArrayRawItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !148
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14ResizeArrayRawIdED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = tail call noundef i32 @_ZNK14ResizeArrayRawIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %5 = icmp slt i32 %3, %4
  %6 = add nuw nsw i32 %3, 1
  br i1 %5, label %2, label %7, !llvm.loop !188

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14ResizeArrayRawIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %class.ResizeArrayRaw.2, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !160
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6VectorC2Eddd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #2 comdat align 2 !prof !189 {
  store double %1, ptr %0, align 8, !tbaa !109
  %5 = getelementptr inbounds %class.Vector, ptr %0, i64 0, i32 1
  store double %2, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %class.Vector, ptr %0, i64 0, i32 2
  store double %3, ptr %6, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZplRK6VectorS1_(ptr dead_on_unwind noalias writable sret(%class.Vector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat !prof !190 {
  %4 = load double, ptr %1, align 8, !tbaa !109
  %5 = load double, ptr %2, align 8, !tbaa !109
  %6 = fadd double %4, %5
  %7 = getelementptr inbounds %class.Vector, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !110
  %11 = fadd double %8, %10
  %12 = getelementptr inbounds %class.Vector, ptr %1, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !111
  %16 = fadd double %13, %15
  tail call void @_ZN6VectorC2Eddd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %6, double noundef %11, double noundef %16) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZmlRKdRK6Vector(ptr dead_on_unwind noalias writable sret(%class.Vector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat !prof !191 {
  %4 = load double, ptr %1, align 8, !tbaa !77
  %5 = load double, ptr %2, align 8, !tbaa !109
  %6 = fmul double %4, %5
  %7 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !110
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds %class.Vector, ptr %2, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !111
  %12 = fmul double %4, %11
  tail call void @_ZN6VectorC2Eddd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %6, double noundef %9, double noundef %12) #10
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_Compute.C() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin optsize allocsize(0) }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!64}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 10379128720}
!4 = !{!"MaxCount", i64 894261817}
!5 = !{!"MaxInternalCount", i64 894261817}
!6 = !{!"MaxFunctionCount", i64 536543178}
!7 = !{!"NumCounts", i64 2825}
!8 = !{!"NumFunctions", i64 153}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 894261817, i32 6}
!14 = !{i32 100000, i64 894261817, i32 6}
!15 = !{i32 200000, i64 894261817, i32 6}
!16 = !{i32 300000, i64 894261817, i32 6}
!17 = !{i32 400000, i64 894261817, i32 6}
!18 = !{i32 500000, i64 894261817, i32 6}
!19 = !{i32 600000, i64 149391598, i32 9}
!20 = !{i32 700000, i64 85897063, i32 20}
!21 = !{i32 800000, i64 77356517, i32 32}
!22 = !{i32 900000, i64 43998258, i32 46}
!23 = !{i32 950000, i64 16555149, i32 67}
!24 = !{i32 990000, i64 1242234, i32 178}
!25 = !{i32 999000, i64 296928, i32 332}
!26 = !{i32 999900, i64 56160, i32 355}
!27 = !{i32 999990, i64 7920, i32 414}
!28 = !{i32 999999, i64 768, i32 448}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @_ZN11SelfCompute6doWorkEP9PatchList, ptr @_ZN9nonbondedC2Ev, i64 56160}
!36 = !{ptr @_ZN11SelfCompute6doWorkEP9PatchList, ptr @_ZN6VectoraSERKd, i64 56160}
!37 = !{ptr @_ZN11PairCompute6doWorkEP9PatchList, ptr @_ZN9nonbondedC2Ev, i64 730080}
!38 = !{ptr @_ZN11PairCompute6doWorkEP9PatchList, ptr @_ZNK7Lattice6offsetEi, i64 1460160}
!39 = !{ptr @_ZN11PairCompute6doWorkEP9PatchList, ptr @_ZmiRK6VectorS1_, i64 730080}
!40 = !{ptr @_ZmiRK6VectorS1_, ptr @_ZN6VectorC2Eddd, i64 730080}
!41 = !{ptr @_ZNK7Lattice6offsetEi, ptr @_ZmlRKdRK6Vector, i64 4380480}
!42 = !{ptr @_ZNK7Lattice6offsetEi, ptr @_ZplRK6VectorS1_, i64 2920320}
!43 = !{ptr @_ZN11ResizeArrayItEC2Ev, ptr @_Znwm, i64 16}
!44 = !{ptr @_ZN11ResizeArrayItEC2Ev, ptr @_ZN14ResizeArrayRawItEC2Ev, i64 16}
!45 = !{ptr @_ZN11ResizeArrayItEC2Ev, ptr @_ZN14ResizeArrayRawItE6resizeEi, i64 16}
!46 = !{ptr @_ZN11ResizeArrayIdEC2Ev, ptr @_Znwm, i64 1}
!47 = !{ptr @_ZN11ResizeArrayIdEC2Ev, ptr @_ZN14ResizeArrayRawIdEC2Ev, i64 1}
!48 = !{ptr @_ZN11ResizeArrayIdEC2Ev, ptr @_ZN14ResizeArrayRawIdE6resizeEi, i64 1}
!49 = !{ptr @_ZN11ResizeArrayI6VectorEC2Ev, ptr @_Znwm, i64 2}
!50 = !{ptr @_ZN11ResizeArrayI6VectorEC2Ev, ptr @_ZN14ResizeArrayRawI6VectorEC2Ev, i64 2}
!51 = !{ptr @_ZN11ResizeArrayI6VectorEC2Ev, ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, i64 2}
!52 = !{ptr @_ZN14ResizeArrayRawItE6resizeEi, ptr @_ZN14ResizeArrayRawItE9resizeRawEi, i64 779266}
!53 = !{ptr @_ZN14ResizeArrayRawItE9resizeRawEi, ptr @_Znam, i64 17}
!54 = !{ptr @_ZN14ResizeArrayRawItE9resizeRawEi, ptr @_ZdaPv, i64 5}
!55 = !{ptr @_ZN14ResizeArrayRawIdE6resizeEi, ptr @_ZN14ResizeArrayRawIdE9resizeRawEi, i64 388440}
!56 = !{ptr @_ZN14ResizeArrayRawIdE9resizeRawEi, ptr @_Znam, i64 3}
!57 = !{ptr @_ZN14ResizeArrayRawIdE9resizeRawEi, ptr @_ZdaPv, i64 1}
!58 = !{ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, ptr @_ZN14ResizeArrayRawI6VectorE9resizeRawEi, i64 37961}
!59 = !{ptr @_ZN14ResizeArrayRawI6VectorE6resizeEi, ptr @_ZN6VectorC2Ev, i64 1045367}
!60 = !{ptr @_ZN14ResizeArrayRawI6VectorE9resizeRawEi, ptr @_Znam, i64 5}
!61 = !{ptr @_ZN14ResizeArrayRawI6VectorE9resizeRawEi, ptr @_ZdaPv, i64 2}
!62 = !{ptr @_ZplRK6VectorS1_, ptr @_ZN6VectorC2Eddd, i64 38887680}
!63 = !{ptr @_ZmlRKdRK6Vector, ptr @_ZN6VectorC2Eddd, i64 4380480}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 56160}
!66 = !{!67, !71, i64 24}
!67 = !{!"_ZTS9PatchList", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !71, i64 24, !71, i64 32, !71, i64 40}
!68 = !{!"int", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!"any pointer", !69, i64 0}
!72 = !{!73, !68, i64 0}
!73 = !{!"_ZTS11SelfCompute", !68, i64 0, !74, i64 8, !68, i64 24, !75, i64 32}
!74 = !{!"_ZTS9Pairlists", !71, i64 0, !68, i64 8, !68, i64 12}
!75 = !{!"double", !69, i64 0}
!76 = !{!67, !68, i64 0}
!77 = !{!75, !75, i64 0}
!78 = !{!79, !71, i64 8}
!79 = !{!"_ZTS5Patch", !68, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !68, i64 48}
!80 = !{!71, !71, i64 0}
!81 = !{!79, !71, i64 16}
!82 = !{!79, !71, i64 24}
!83 = !{!79, !68, i64 0}
!84 = !{!68, !68, i64 0}
!85 = !{!67, !71, i64 40}
!86 = !{!87, !71, i64 112}
!87 = !{!"_ZTS9nonbonded", !69, i64 0, !69, i64 16, !69, i64 32, !69, i64 48, !69, i64 64, !69, i64 80, !88, i64 88, !71, i64 112, !71, i64 120, !71, i64 128, !71, i64 136, !68, i64 144, !68, i64 148, !75, i64 152, !75, i64 160, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180}
!88 = !{!"_ZTS6Vector", !75, i64 0, !75, i64 8, !75, i64 16}
!89 = !{!87, !71, i64 120}
!90 = !{!87, !68, i64 172}
!91 = !{!87, !68, i64 176}
!92 = !{!87, !68, i64 180}
!93 = !{!87, !71, i64 128}
!94 = !{!87, !71, i64 136}
!95 = !{!87, !68, i64 144}
!96 = !{!87, !75, i64 152}
!97 = !{!67, !68, i64 12}
!98 = !{!"branch_weights", i32 48097, i32 8065}
!99 = !{!73, !68, i64 24}
!100 = !{!87, !68, i64 148}
!101 = !{!87, !75, i64 160}
!102 = !{!67, !68, i64 4}
!103 = !{!"branch_weights", i32 18721, i32 37441}
!104 = !{!79, !71, i64 32}
!105 = !{!67, !68, i64 8}
!106 = !{!"branch_weights", i32 18721, i32 18721}
!107 = !{!"branch_weights", i32 9361, i32 9361}
!108 = !{!"function_entry_count", i64 71992050}
!109 = !{!88, !75, i64 0}
!110 = !{!88, !75, i64 8}
!111 = !{!88, !75, i64 16}
!112 = !{!"function_entry_count", i64 730080}
!113 = !{!114, !68, i64 0}
!114 = !{!"_ZTS11PairCompute", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !74, i64 16, !68, i64 32, !75, i64 40}
!115 = !{!114, !68, i64 8}
!116 = !{!67, !71, i64 32}
!117 = !{!114, !68, i64 4}
!118 = !{!114, !68, i64 12}
!119 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77}
!120 = !{!"branch_weights", i32 625249, i32 104833}
!121 = !{!114, !68, i64 32}
!122 = !{!"branch_weights", i32 243361, i32 486721}
!123 = !{!"branch_weights", i32 243361, i32 243361}
!124 = !{!"branch_weights", i32 121681, i32 121681}
!125 = !{!"function_entry_count", i64 1460160}
!126 = !{!"function_entry_count", i64 16}
!127 = !{!128, !128, i64 0}
!128 = !{!"vtable pointer", !70, i64 0}
!129 = !{!130, !71, i64 8}
!130 = !{!"_ZTS11ResizeArrayItE", !71, i64 8}
!131 = !{!132, !68, i64 24}
!132 = !{!"_ZTS14ResizeArrayRawItE", !71, i64 0, !71, i64 8, !68, i64 16, !68, i64 20, !68, i64 24, !133, i64 28, !68, i64 32}
!133 = !{!"float", !69, i64 0}
!134 = !{!"function_entry_count", i64 1}
!135 = !{!136, !71, i64 8}
!136 = !{!"_ZTS11ResizeArrayIdE", !71, i64 8}
!137 = !{!138, !68, i64 24}
!138 = !{!"_ZTS14ResizeArrayRawIdE", !71, i64 0, !71, i64 8, !68, i64 16, !68, i64 20, !68, i64 24, !133, i64 28, !68, i64 32}
!139 = !{!"function_entry_count", i64 2}
!140 = !{!141, !71, i64 8}
!141 = !{!"_ZTS11ResizeArrayI6VectorE", !71, i64 8}
!142 = !{!143, !68, i64 24}
!143 = !{!"_ZTS14ResizeArrayRawI6VectorE", !71, i64 0, !71, i64 8, !68, i64 16, !68, i64 20, !68, i64 24, !133, i64 28, !68, i64 32}
!144 = !{!"function_entry_count", i64 0}
!145 = !{!132, !133, i64 28}
!146 = !{!132, !68, i64 32}
!147 = !{!"function_entry_count", i64 6289936}
!148 = !{!132, !68, i64 16}
!149 = !{!"branch_weights", i32 526733304, i32 -570109455}
!150 = !{!"function_entry_count", i64 779265}
!151 = !{!132, !68, i64 20}
!152 = !{!"branch_weights", i32 17, i32 779250}
!153 = !{!"branch_weights", i32 1, i32 17}
!154 = !{!132, !71, i64 0}
!155 = !{!"branch_weights", i32 9, i32 9}
!156 = !{!132, !71, i64 8}
!157 = !{!138, !133, i64 28}
!158 = !{!138, !68, i64 32}
!159 = !{!"function_entry_count", i64 786241}
!160 = !{!138, !68, i64 16}
!161 = !{!"branch_weights", i32 -1800065025, i32 -1739941345}
!162 = !{!"function_entry_count", i64 388441}
!163 = !{!138, !68, i64 20}
!164 = !{!"branch_weights", i32 3, i32 388440}
!165 = !{!"branch_weights", i32 1, i32 3}
!166 = !{!138, !71, i64 0}
!167 = !{!"branch_weights", i32 2, i32 2}
!168 = !{!138, !71, i64 8}
!169 = !{!143, !133, i64 28}
!170 = !{!143, !68, i64 32}
!171 = !{!"function_entry_count", i64 74882}
!172 = !{!143, !68, i64 16}
!173 = !{!"branch_weights", i32 1520228335, i32 1478576329}
!174 = !{!"branch_weights", i32 37962, i32 1}
!175 = !{!143, !71, i64 0}
!176 = !{!"branch_weights", i32 37962, i32 1007459}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = !{!"function_entry_count", i64 37962}
!180 = !{!143, !68, i64 20}
!181 = !{!"branch_weights", i32 5, i32 37959}
!182 = !{!"branch_weights", i32 1, i32 5}
!183 = !{!"branch_weights", i32 3, i32 3}
!184 = !{!143, !71, i64 8}
!185 = !{!"function_entry_count", i64 3491717}
!186 = distinct !{!186, !178}
!187 = distinct !{!187, !178}
!188 = distinct !{!188, !178}
!189 = !{!"function_entry_count", i64 43998258}
!190 = !{!"function_entry_count", i64 38887680}
!191 = !{!"function_entry_count", i64 4380480}
