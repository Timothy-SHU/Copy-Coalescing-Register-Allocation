; ModuleID = 'simulator/nedutil.cc'
source_filename = "simulator/nedutil.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.DisplayString = type <{ ptr, ptr, ptr, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"class.std::allocator" = type { i8 }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.NEDException = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN12NEDExceptionD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZN12NEDExceptionD0Ev = comdat any

$_ZNK12NEDException4whatEv = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTV12NEDException = comdat any

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bgp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bgb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bgtt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"parse error in display string `%s'\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"should contain a single value\00", align 1
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"boolean value expected\00", align 1
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@_ZTV12NEDException = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NEDException, ptr @_ZN12NEDExceptionD2Ev, ptr @_ZN12NEDExceptionD0Ev, ptr @_ZNK12NEDException4whatEv] }, comdat, align 8
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %25

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
          to label %6 unwind label %25

6:                                                ; preds = %5
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
          to label %7 unwind label %25

7:                                                ; preds = %6
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %8 unwind label %25

8:                                                ; preds = %7
  %9 = invoke noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6)
          to label %10 unwind label %25

10:                                               ; preds = %8
  br i1 %9, label %11, label %27

11:                                               ; preds = %10
  %12 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0)
          to label %13 unwind label %25

13:                                               ; preds = %11
  %14 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef %12)
          to label %15 unwind label %25

15:                                               ; preds = %13
  %16 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1)
          to label %17 unwind label %25

17:                                               ; preds = %15
  %18 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef %16)
          to label %19 unwind label %25

19:                                               ; preds = %17
  %20 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2)
          to label %21 unwind label %25

21:                                               ; preds = %19
  %22 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 4, ptr noundef %20)
          to label %23 unwind label %25

23:                                               ; preds = %21
  %24 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6)
          to label %27 unwind label %25

25:                                               ; preds = %27, %23, %21, %19, %17, %15, %13, %11, %8, %7, %6, %5, %2
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %23, %10
  %28 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %29 unwind label %25

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %30 unwind label %31

30:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call noundef zeroext i1 @_ZN13DisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %0)
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.8, ptr noundef %0)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #12
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !43 {
  %4 = tail call noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1)
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = tail call noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, i32 noundef %9)
  %11 = tail call noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %2, i32 noundef %9, ptr noundef %10)
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %6, label %8, !llvm.loop !44
}

declare noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !47
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #12
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 %9, ptr %4, align 8, !tbaa !52
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !54

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !55
  %13 = load i64, ptr %4, align 8, !tbaa !52
  store i64 %13, ptr %5, align 8, !tbaa !57
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !55
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !58

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !57
  store i8 %17, ptr %15, align 1, !tbaa !57
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !59
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !60
  %22 = load ptr, ptr %0, align 8, !tbaa !55
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %22

5:                                                ; preds = %2
  %6 = invoke noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6)
          to label %7 unwind label %22

7:                                                ; preds = %5
  br i1 %6, label %8, label %24

8:                                                ; preds = %7
  %9 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0)
          to label %10 unwind label %22

10:                                               ; preds = %8
  %11 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef %9)
          to label %12 unwind label %22

12:                                               ; preds = %10
  %13 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1)
          to label %14 unwind label %22

14:                                               ; preds = %12
  %15 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef %13)
          to label %16 unwind label %22

16:                                               ; preds = %14
  %17 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2)
          to label %18 unwind label %22

18:                                               ; preds = %16
  %19 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef %17)
          to label %20 unwind label %22

20:                                               ; preds = %18
  %21 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6)
          to label %24 unwind label %22

22:                                               ; preds = %24, %20, %18, %16, %14, %12, %10, %8, %5, %2
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %20, %7
  %25 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %26 unwind label %22

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %27 unwind label %28

27:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %10

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %6 unwind label %10

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %8 unwind label %10

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %9 unwind label %12

9:                                                ; preds = %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

10:                                               ; preds = %6, %5, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %15
}

declare noundef zeroext i1 @_ZN13DisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !60
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #13
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %11

5:                                                ; preds = %2, %31
  %6 = phi i32 [ %33, %31 ], [ 0, %2 ]
  %7 = invoke noundef i32 @_ZNK13DisplayString10getNumTagsEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %8 unwind label %13

8:                                                ; preds = %5
  %9 = icmp slt i32 %6, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
          to label %34 unwind label %11

11:                                               ; preds = %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %36, %35, %34, %10, %2
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %64

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %64

15:                                               ; preds = %8
  %16 = invoke noundef ptr @_ZNK13DisplayString10getTagNameEi(ptr noundef nonnull align 8 dereferenceable(41) %3, i32 noundef %6)
          to label %17 unwind label %29

17:                                               ; preds = %15
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.1) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.3) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(5) @.str.5) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %6, -1
  %28 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(41) %3, i32 noundef %6)
          to label %31 unwind label %29

29:                                               ; preds = %26, %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %64

31:                                               ; preds = %26, %23, %20, %17
  %32 = phi i32 [ %27, %26 ], [ %6, %23 ], [ %6, %20 ], [ %6, %17 ]
  %33 = add nsw i32 %32, 1
  br label %5, !llvm.loop !63

34:                                               ; preds = %10
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2)
          to label %35 unwind label %11

35:                                               ; preds = %34
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %36 unwind label %11

36:                                               ; preds = %35
  %37 = invoke noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2)
          to label %38 unwind label %11

38:                                               ; preds = %36
  %39 = icmp sgt i32 %37, 3
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3)
          to label %42 unwind label %11

42:                                               ; preds = %40
  %43 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %41)
          to label %44 unwind label %11

44:                                               ; preds = %42
  %45 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4)
          to label %46 unwind label %11

46:                                               ; preds = %44
  %47 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %45)
          to label %48 unwind label %11

48:                                               ; preds = %46
  %49 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5)
          to label %50 unwind label %11

50:                                               ; preds = %48
  %51 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %49)
          to label %52 unwind label %11

52:                                               ; preds = %50
  %53 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull @.str.9)
          to label %54 unwind label %11

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef nonnull @.str.9)
          to label %56 unwind label %11

56:                                               ; preds = %54
  %57 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.9)
          to label %58 unwind label %11

58:                                               ; preds = %56, %38
  %59 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %60 unwind label %11

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %61 unwind label %62

61:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

62:                                               ; preds = %60
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %64

64:                                               ; preds = %13, %29, %62, %11
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %12, %11 ], [ %30, %29 ], [ %14, %13 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %65
}

declare noundef i32 @_ZNK13DisplayString10getNumTagsEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

declare noundef ptr @_ZNK13DisplayString10getTagNameEi(ptr noundef nonnull align 8 dereferenceable(41), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN13DisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(41), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %27

5:                                                ; preds = %2
  %6 = invoke noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2)
          to label %7 unwind label %27

7:                                                ; preds = %5
  %8 = icmp sgt i32 %6, 3
  br i1 %8, label %9, label %29

9:                                                ; preds = %7
  %10 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3)
          to label %11 unwind label %27

11:                                               ; preds = %9
  %12 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %10)
          to label %13 unwind label %27

13:                                               ; preds = %11
  %14 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4)
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %14)
          to label %17 unwind label %27

17:                                               ; preds = %15
  %18 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5)
          to label %19 unwind label %27

19:                                               ; preds = %17
  %20 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %18)
          to label %21 unwind label %27

21:                                               ; preds = %19
  %22 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull @.str.9)
          to label %23 unwind label %27

23:                                               ; preds = %21
  %24 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef nonnull @.str.9)
          to label %25 unwind label %27

25:                                               ; preds = %23
  %26 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.9)
          to label %29 unwind label %27

27:                                               ; preds = %29, %25, %23, %21, %19, %17, %15, %13, %11, %9, %5, %2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %25, %7
  %30 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %31 unwind label %27

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %30, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %32 unwind label %33

32:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

33:                                               ; preds = %31
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %28, %27 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3)
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %5 unwind label %10

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6)
          to label %6 unwind label %10

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %8 unwind label %10

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %9 unwind label %12

9:                                                ; preds = %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret void

10:                                               ; preds = %6, %5, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !64 {
  %3 = tail call noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !65

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.LiteralElement, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  br label %11

11:                                               ; preds = %2, %5, %8
  %12 = phi ptr [ null, %2 ], [ %10, %8 ], [ null, %5 ]
  ret ptr %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !43 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef nonnull %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.LiteralElement, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %6, %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !67 {
  %3 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17, ptr noundef nonnull @.str.10, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !68

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14), !prof !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !70

11:                                               ; preds = %5
  %12 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 17, ptr noundef nonnull @.str.10, ptr noundef %1)
  br label %13

13:                                               ; preds = %5, %11, %2
  %14 = phi ptr [ %3, %2 ], [ %12, %11 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !71 {
  %3 = tail call noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef %0, ptr noundef %1)
  %4 = tail call noundef zeroext i1 @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement(ptr noundef %3)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !72

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef nonnull %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !73

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.LiteralElement, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.12) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(6) @.str.13) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.14)
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %11, %6
  %20 = load i8, ptr %8, align 1, !tbaa !57
  %21 = icmp eq i8 %20, 116
  br label %22

22:                                               ; preds = %19, %3, %1
  %23 = phi i1 [ false, %1 ], [ %21, %19 ], [ true, %3 ]
  ret i1 %23
}

declare noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3, !prof !75

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9)
  %5 = load ptr, ptr %0, align 8, !tbaa !61
  %6 = getelementptr inbounds ptr, ptr %5, i64 33
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18), !prof !76
  %9 = icmp ne ptr %4, null
  %10 = zext i1 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %17, label %12, !prof !77

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %34

17:                                               ; preds = %3
  br i1 %9, label %18, label %37, !prof !78

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !tbaa !61
  %20 = getelementptr inbounds ptr, ptr %19, i64 33
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef 34), !prof !79
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29, !prof !66

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %18
  %30 = load ptr, ptr %4, align 8, !tbaa !61
  %31 = getelementptr inbounds ptr, ptr %30, i64 30
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef 34), !prof !80
  br label %37

34:                                               ; preds = %27, %15
  %35 = phi ptr [ %25, %27 ], [ %13, %15 ]
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %35) #11
  resume { ptr, i32 } %36

37:                                               ; preds = %29, %17, %1
  %38 = phi ptr [ null, %1 ], [ %33, %29 ], [ null, %17 ]
  ret ptr %38
}

declare void @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ...) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !60
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #13
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN14NEDElementUtil7compareEP10NEDElementS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !61
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %11 = sub nsw i32 %6, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !61
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %26, label %53

19:                                               ; preds = %50
  %20 = add nuw nsw i32 %27, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !61
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %53, !llvm.loop !81

26:                                               ; preds = %13, %19
  %27 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %27)
  %32 = load ptr, ptr %1, align 8, !tbaa !61
  %33 = getelementptr inbounds ptr, ptr %32, i64 16
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %27)
  %36 = icmp eq ptr %31, null
  %37 = icmp eq ptr %35, null
  br i1 %36, label %45, label %38

38:                                               ; preds = %26
  br i1 %37, label %41, label %39

39:                                               ; preds = %38
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %35) #14
  br label %50

41:                                               ; preds = %38
  %42 = load i8, ptr %31, align 1, !tbaa !57
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i32
  br label %50

45:                                               ; preds = %26
  br i1 %37, label %50, label %46

46:                                               ; preds = %45
  %47 = load i8, ptr %35, align 1, !tbaa !57
  %48 = icmp ne i8 %47, 0
  %49 = sext i1 %48 to i32
  br label %50

50:                                               ; preds = %39, %41, %45, %46
  %51 = phi i32 [ %40, %39 ], [ %44, %41 ], [ 0, %45 ], [ %49, %46 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %19, label %53

53:                                               ; preds = %50, %19, %13, %2
  %54 = phi i32 [ %11, %2 ], [ 0, %13 ], [ 0, %19 ], [ %51, %50 ]
  ret i32 %54
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !43 {
  %3 = tail call noundef i32 @_ZN14NEDElementUtil7compareEP10NEDElementS1_(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %10 = load ptr, ptr %1, align 8, !tbaa !61
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %14 = icmp ne ptr %9, null
  %15 = icmp ne ptr %13, null
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %5, %28
  %18 = phi i1 [ %38, %28 ], [ %15, %5 ]
  %19 = phi i1 [ %37, %28 ], [ %14, %5 ]
  %20 = phi ptr [ %36, %28 ], [ %13, %5 ]
  %21 = phi ptr [ %32, %28 ], [ %9, %5 ]
  %22 = and i1 %19, %18
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = select i1 %19, i32 -1, i32 1
  br label %40

25:                                               ; preds = %17
  %26 = tail call noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef nonnull %21, ptr noundef nonnull %20)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load ptr, ptr %21, align 8, !tbaa !61
  %30 = getelementptr inbounds ptr, ptr %29, i64 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(112) %21)
  %33 = load ptr, ptr %20, align 8, !tbaa !61
  %34 = getelementptr inbounds ptr, ptr %33, i64 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %20)
  %37 = icmp ne ptr %32, null
  %38 = icmp ne ptr %36, null
  %39 = or i1 %37, %38
  br i1 %39, label %17, label %40, !llvm.loop !82

40:                                               ; preds = %25, %28, %5, %23, %2
  %41 = phi i32 [ %3, %2 ], [ %24, %23 ], [ 0, %5 ], [ 0, %28 ], [ %26, %25 ]
  ret i32 %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil9isNEDTypeEP10NEDElement(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %6 = add i32 %5, -9
  %7 = icmp ult i32 %6, 5
  ret i1 %7
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !60
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #13
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !60
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #13
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12NEDException4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, i64 25}
!36 = !{ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, i64 6}
!37 = !{ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 42}
!38 = !{ptr @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, i64 2}
!39 = !{ptr @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement, i64 2}
!40 = !{ptr @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement, ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, i64 2}
!41 = !{ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !50, i64 0}
!54 = !{!"branch_weights", i32 1257662, i32 631781}
!55 = !{!56, !49, i64 0}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !53, i64 8, !50, i64 16}
!57 = !{!50, !50, i64 0}
!58 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!59 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!60 = !{!56, !53, i64 8}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !51, i64 0}
!63 = distinct !{!63, !45, !46}
!64 = !{!"function_entry_count", i64 25}
!65 = !{!"branch_weights", i32 19, i32 6}
!66 = !{!"branch_weights", i32 0, i32 6}
!67 = !{!"function_entry_count", i64 27}
!68 = !{!"branch_weights", i32 24, i32 3}
!69 = !{!"VP", i32 0, i64 24, i64 9115687764015882679, i64 24}
!70 = !{!"branch_weights", i32 9, i32 15}
!71 = !{!"function_entry_count", i64 2}
!72 = !{!"branch_weights", i32 0, i32 2}
!73 = !{!"branch_weights", i32 2, i32 0}
!74 = !{!"function_entry_count", i64 8}
!75 = !{!"branch_weights", i32 0, i32 8}
!76 = !{!"VP", i32 0, i64 8, i64 -8191110438776193649, i64 8}
!77 = !{!"branch_weights", i32 8, i32 0}
!78 = !{!"branch_weights", i32 6, i32 2}
!79 = !{!"VP", i32 0, i64 6, i64 -8191110438776193649, i64 6}
!80 = !{!"VP", i32 0, i64 6, i64 9115687764015882679, i64 6}
!81 = distinct !{!81, !45, !46}
!82 = distinct !{!82, !45, !46}
