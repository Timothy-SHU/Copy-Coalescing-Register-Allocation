; ModuleID = 'simulator/speedometer.cc'
source_filename = "simulator/speedometer.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.Speedometer = type { i8, i64, %class.SimTime, %class.SimTime, %struct.timeval, double, double, double }
%class.SimTime = type { i64 }
%struct.timeval = type { i64, i64 }

$_ZN7SimTimeC2Ev = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_Z12timeval_msecRK7timeval = comdat any

$_ZmiRK7timevalS1_ = comdat any

$_ZmiRK7SimTimeS1_ = comdat any

$_ZNK7SimTime3dblEv = comdat any

$_ZNK7SimTimeeqERKS_ = comdat any

$_ZN7SimTimeC2Ed = comdat any

$_Z17timeval_substractRK7timevalS1_ = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZN7SimTimemIERKS_ = comdat any

$_ZN7SimTime10checkedSubERKS_ = comdat any

$_ZN7SimTime12haveSameSignEll = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN7SimTime5checkIdEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN7SimTime9invfscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_speedometer.cc, ptr null }]

@_ZN11SpeedometerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11SpeedometerC2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11SpeedometerC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !54 {
  %2 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %3 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  store i8 0, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !64 {
  store i64 0, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11Speedometer5startE7SimTime(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 !prof !54 {
  %3 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %7 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %3 = load i64, ptr %1, align 8, !tbaa !65
  store i64 %3, ptr %0, align 8, !tbaa !65
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11Speedometer8addEventE7SimTime(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 !prof !68 {
  %3 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !66
  %6 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN11Speedometer27getMillisSinceIntervalStartEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !69 {
  ret i64 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11Speedometer16beginNewIntervalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #6 align 2 !prof !70 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %class.SimTime, align 8
  %5 = alloca %class.SimTime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 4
  %7 = call { i64, i64 } @_ZmiRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  %8 = extractvalue { i64, i64 } %7, 0
  store i64 %8, ptr %3, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %10 = extractvalue { i64, i64 } %7, 1
  store i64 %10, ptr %9, align 8
  %11 = call noundef i64 @_Z12timeval_msecRK7timeval(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %12 = icmp ult i64 %11, 10
  br i1 %12, label %17, label %13, !prof !71

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !66
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %40

19:                                               ; preds = %13
  %20 = uitofp i64 %11 to double
  %21 = fdiv double %20, 1.000000e+03
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %22 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  call void @_ZmiRK7SimTimeS1_(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %24 = load i64, ptr %14, align 8, !tbaa !66
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %25, %21
  %27 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  store double %26, ptr %27, align 8, !tbaa !72
  %28 = call noundef double @_ZNK7SimTime3dblEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %29 = fdiv double %28, %21
  %30 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 7
  store double %29, ptr %30, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef 0.000000e+00) #12
  %31 = call noundef zeroext i1 @_ZNK7SimTimeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br i1 %31, label %37, label %32

32:                                               ; preds = %19
  %33 = load i64, ptr %14, align 8, !tbaa !66
  %34 = sitofp i64 %33 to double
  %35 = call noundef double @_ZNK7SimTime3dblEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %36 = fdiv double %34, %35
  br label %37

37:                                               ; preds = %19, %32
  %38 = phi double [ %36, %32 ], [ 0.000000e+00, %19 ]
  %39 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 6
  store double %38, ptr %39, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %40

40:                                               ; preds = %37, %17
  %41 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !75
  %42 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 3
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_Z12timeval_msecRK7timeval(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat !prof !70 {
  %2 = load i64, ptr %0, align 8, !tbaa !77
  %3 = mul nsw i64 %2, 1000
  %4 = getelementptr inbounds %struct.timeval, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !78
  %6 = sdiv i64 %5, 1000
  %7 = add nsw i64 %6, %3
  ret i64 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_ZmiRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat !prof !79 {
  %3 = tail call { i64, i64 } @_Z17timeval_substractRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret { i64, i64 } %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZmiRK7SimTimeS1_(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !80 {
  %4 = alloca %class.SimTime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimemIERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7SimTime3dblEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = load i64, ptr %0, align 8, !tbaa !65
  %3 = sitofp i64 %2 to double
  %4 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !82
  %5 = fmul double %4, %3
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = load i64, ptr %0, align 8, !tbaa !65
  %4 = load i64, ptr %1, align 8, !tbaa !65
  %5 = icmp eq i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #6 comdat align 2 !prof !84 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer15getEventsPerSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !70 {
  %2 = load i8, ptr %0, align 8, !tbaa !55, !range !85, !noundef !86
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 5
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5, !prof !87
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer18getEventsPerSimSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !69 {
  %2 = load i8, ptr %0, align 8, !tbaa !55, !range !85, !noundef !86
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 6
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN11Speedometer15getSimSecPerSecEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #9 align 2 !prof !69 {
  %2 = load i8, ptr %0, align 8, !tbaa !55, !range !85, !noundef !86
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %class.Speedometer, ptr %0, i64 0, i32 7
  %5 = load double, ptr %4, align 8
  %6 = select i1 %3, double 0.000000e+00, double %5
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_Z17timeval_substractRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat !prof !79 {
  %3 = load i64, ptr %0, align 8, !tbaa !77
  %4 = load i64, ptr %1, align 8, !tbaa !77
  %5 = sub i64 %3, %4
  %6 = getelementptr inbounds %struct.timeval, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !78
  %10 = sub nsw i64 %7, %9
  %11 = icmp slt i64 %10, 0
  %12 = add nsw i64 %10, 1000000
  %13 = ashr i64 %10, 63
  %14 = add nsw i64 %5, %13
  %15 = select i1 %11, i64 %12, i64 %10, !prof !88
  %16 = insertvalue { i64, i64 } poison, i64 %14, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !89 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimemIERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !80 {
  tail call void @_ZN7SimTime10checkedSubERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime10checkedSubERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !80 {
  %3 = load i64, ptr %0, align 8, !tbaa !65
  %4 = load i64, ptr %1, align 8, !tbaa !65
  %5 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %3, i64 noundef %4) #12
  %6 = load i64, ptr %1, align 8, !tbaa !65
  %7 = load i64, ptr %0, align 8, !tbaa !65
  %8 = sub nsw i64 %7, %6
  store i64 %8, ptr %0, align 8, !tbaa !65
  br i1 %5, label %13, label %9, !prof !90

9:                                                ; preds = %2
  %10 = load i64, ptr %1, align 8, !tbaa !65
  %11 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %8, i64 noundef %10) #12
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  br label %13

13:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !91 {
  %4 = xor i64 %2, %1
  %5 = icmp sgt i64 %4, -1
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #6 comdat align 2 !prof !92 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #12
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !82
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #12
  store i64 %5, ptr %0, align 8, !tbaa !65
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #6 comdat align 2 !prof !92 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !93
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !95

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !97

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_speedometer.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!53}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @_ZN11SpeedometerC2Ev, ptr @_ZN7SimTimeC2Ev, i64 2}
!36 = !{ptr @_ZN11Speedometer5startE7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 1}
!37 = !{ptr @_ZN11Speedometer8addEventE7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 467312602}
!38 = !{ptr @_ZN11Speedometer16beginNewIntervalEv, ptr @_ZmiRK7timevalS1_, i64 2}
!39 = !{ptr @_ZN11Speedometer16beginNewIntervalEv, ptr @_Z12timeval_msecRK7timeval, i64 2}
!40 = !{ptr @_ZN11Speedometer16beginNewIntervalEv, ptr @_ZN7SimTimeaSERKS_, i64 2}
!41 = !{ptr @_ZmiRK7timevalS1_, ptr @_Z17timeval_substractRK7timevalS1_, i64 5}
!42 = !{ptr @_ZmiRK7SimTimeS1_, ptr @_ZN7SimTimeC2ERKS_, i64 334341790}
!43 = !{ptr @_ZmiRK7SimTimeS1_, ptr @_ZN7SimTimemIERKS_, i64 167170895}
!44 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!45 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!46 = !{ptr @_ZN7SimTimemIERKS_, ptr @_ZN7SimTime10checkedSubERKS_, i64 167170895}
!47 = !{ptr @_ZN7SimTime10checkedSubERKS_, ptr @_ZN7SimTime12haveSameSignEll, i64 167170896}
!48 = !{ptr @_ZN7SimTime10checkedSubERKS_, ptr @_ZN7SimTime19overflowSubtractingERKS_, i64 1}
!49 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!50 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!51 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!52 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 1}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTS11Speedometer", !57, i64 0, !60, i64 8, !61, i64 16, !61, i64 24, !62, i64 32, !63, i64 48, !63, i64 56, !63, i64 64}
!57 = !{!"bool", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!"long", !58, i64 0}
!61 = !{!"_ZTS7SimTime", !60, i64 0}
!62 = !{!"_ZTS7timeval", !60, i64 0, !60, i64 8}
!63 = !{!"double", !58, i64 0}
!64 = !{!"function_entry_count", i64 1143690745}
!65 = !{!61, !60, i64 0}
!66 = !{!56, !60, i64 8}
!67 = !{!"function_entry_count", i64 61624744013}
!68 = !{!"function_entry_count", i64 467312602}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!"function_entry_count", i64 2}
!71 = !{!"branch_weights", i32 3, i32 1}
!72 = !{!56, !63, i64 48}
!73 = !{!56, !63, i64 64}
!74 = !{!56, !63, i64 56}
!75 = !{i64 0, i64 8, !76, i64 8, i64 8, !76}
!76 = !{!60, !60, i64 0}
!77 = !{!62, !60, i64 0}
!78 = !{!62, !60, i64 8}
!79 = !{!"function_entry_count", i64 5}
!80 = !{!"function_entry_count", i64 167170895}
!81 = !{!"function_entry_count", i64 139164}
!82 = !{!63, !63, i64 0}
!83 = !{!"function_entry_count", i64 8550}
!84 = !{!"function_entry_count", i64 980188428}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!"branch_weights", i32 1, i32 3}
!88 = !{!"branch_weights", i32 1, i32 6}
!89 = !{!"function_entry_count", i64 57319387120}
!90 = !{!"branch_weights", i32 167170896, i32 1}
!91 = !{!"function_entry_count", i64 2128947779}
!92 = !{!"function_entry_count", i64 980215783}
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !58, i64 0}
!95 = !{!"branch_weights", i32 1, i32 980215784}
!96 = !{!"function_entry_count", i64 1656274258}
!97 = !{!"branch_weights", i32 1, i32 1656274259}
