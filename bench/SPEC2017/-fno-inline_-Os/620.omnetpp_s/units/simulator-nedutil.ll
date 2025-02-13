; ModuleID = 'simulator/nedutil.cc'
source_filename = "simulator/nedutil.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.DisplayString = type <{ ptr, ptr, ptr, i32, [4 x i8], ptr, i8, [7 x i8] }>
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }
%class.NEDException = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZN12NEDExceptionD2Ev = comdat any

$_ZN12NEDExceptionD0Ev = comdat any

$_ZNK12NEDException4whatEv = comdat any

$_ZNK14LiteralElement8getValueEv = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTV12NEDException = comdat any

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bgp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bgb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bgtt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"parse error in display string `%s'\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"should contain a single value\00", align 1
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV12NEDException = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NEDException, ptr @_ZN12NEDExceptionD2Ev, ptr @_ZN12NEDExceptionD0Ev, ptr @_ZNK12NEDException4whatEv] }, comdat, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"boolean value expected\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %25

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
          to label %6 unwind label %25

6:                                                ; preds = %5
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #10
          to label %7 unwind label %25

7:                                                ; preds = %6
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
          to label %8 unwind label %25

8:                                                ; preds = %7
  %9 = invoke noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6) #10
          to label %10 unwind label %25

10:                                               ; preds = %8
  br i1 %9, label %11, label %27

11:                                               ; preds = %10
  %12 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0) #10
          to label %13 unwind label %25

13:                                               ; preds = %11
  %14 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef %12) #10
          to label %15 unwind label %25

15:                                               ; preds = %13
  %16 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1) #10
          to label %17 unwind label %25

17:                                               ; preds = %15
  %18 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef %16) #10
          to label %19 unwind label %25

19:                                               ; preds = %17
  %20 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2) #10
          to label %21 unwind label %25

21:                                               ; preds = %19
  %22 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, i32 noundef 4, ptr noundef %20) #10
          to label %23 unwind label %25

23:                                               ; preds = %21
  %24 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6) #10
          to label %27 unwind label %25

25:                                               ; preds = %27, %23, %21, %19, %17, %15, %13, %11, %8, %7, %6, %5, %2
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %23, %10
  %28 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %29 unwind label %25

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %30 unwind label %31

30:                                               ; preds = %29
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = tail call noundef zeroext i1 @_ZN13DisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %0) #10
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.9, ptr noundef %0) #10
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #12
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #9
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !64 !PGOFuncName !65 {
  %4 = tail call noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) #10
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) #10
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = tail call noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, i32 noundef %9) #10
  %11 = tail call noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %2, i32 noundef %9, ptr noundef %10) #10
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %6, label %8, !llvm.loop !66
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #13
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #10
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #10
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #10
  store i64 %6, ptr %4, align 8, !tbaa !70
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !74

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #10
  %10 = load i64, ptr %4, align 8, !tbaa !70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #10
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #10
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #11
  store ptr null, ptr %5, align 8, !tbaa !75
  %15 = load i64, ptr %4, align 8, !tbaa !70
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #10
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !69 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !78
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !69 {
  store ptr %1, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !79

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !69 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !69 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %22

5:                                                ; preds = %2
  %6 = invoke noundef zeroext i1 @_ZNK13DisplayString11containsTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6) #10
          to label %7 unwind label %22

7:                                                ; preds = %5
  br i1 %6, label %8, label %24

8:                                                ; preds = %7
  %9 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0) #10
          to label %10 unwind label %22

10:                                               ; preds = %8
  %11 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef %9) #10
          to label %12 unwind label %22

12:                                               ; preds = %10
  %13 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1) #10
          to label %14 unwind label %22

14:                                               ; preds = %12
  %15 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef %13) #10
          to label %16 unwind label %22

16:                                               ; preds = %14
  %17 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2) #10
          to label %18 unwind label %22

18:                                               ; preds = %16
  %19 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef %17) #10
          to label %20 unwind label %22

20:                                               ; preds = %18
  %21 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6) #10
          to label %24 unwind label %22

22:                                               ; preds = %24, %20, %18, %16, %14, %12, %10, %8, %5, %2
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %20, %7
  %25 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %26 unwind label %22

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %27 unwind label %28

27:                                               ; preds = %26
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %10

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #10
          to label %6 unwind label %10

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %8 unwind label %10

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %9 unwind label %12

9:                                                ; preds = %8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

10:                                               ; preds = %6, %5, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13DisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %11

5:                                                ; preds = %2, %31
  %6 = phi i32 [ %33, %31 ], [ 0, %2 ]
  %7 = invoke noundef i32 @_ZNK13DisplayString10getNumTagsEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  %9 = icmp slt i32 %6, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #10
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
  %16 = invoke noundef ptr @_ZNK13DisplayString10getTagNameEi(ptr noundef nonnull align 8 dereferenceable(41) %3, i32 noundef %6) #10
          to label %17 unwind label %29

17:                                               ; preds = %15
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.1) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.3) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(5) @.str.5) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %6, -1
  %28 = invoke noundef zeroext i1 @_ZN13DisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(41) %3, i32 noundef %6) #10
          to label %31 unwind label %29

29:                                               ; preds = %26, %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %64

31:                                               ; preds = %26, %23, %20, %17
  %32 = phi i32 [ %27, %26 ], [ %6, %23 ], [ %6, %20 ], [ %6, %17 ]
  %33 = add nsw i32 %32, 1
  br label %5, !llvm.loop !82

34:                                               ; preds = %10
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #10
          to label %35 unwind label %11

35:                                               ; preds = %34
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #10
          to label %36 unwind label %11

36:                                               ; preds = %35
  %37 = invoke noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2) #10
          to label %38 unwind label %11

38:                                               ; preds = %36
  %39 = icmp sgt i32 %37, 3
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3) #10
          to label %42 unwind label %11

42:                                               ; preds = %40
  %43 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %41) #10
          to label %44 unwind label %11

44:                                               ; preds = %42
  %45 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4) #10
          to label %46 unwind label %11

46:                                               ; preds = %44
  %47 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %45) #10
          to label %48 unwind label %11

48:                                               ; preds = %46
  %49 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5) #10
          to label %50 unwind label %11

50:                                               ; preds = %48
  %51 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %49) #10
          to label %52 unwind label %11

52:                                               ; preds = %50
  %53 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull @.str.10) #10
          to label %54 unwind label %11

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef nonnull @.str.10) #10
          to label %56 unwind label %11

56:                                               ; preds = %54
  %57 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.10) #10
          to label %58 unwind label %11

58:                                               ; preds = %56, %38
  %59 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %60 unwind label %11

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %61 unwind label %62

61:                                               ; preds = %60
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

62:                                               ; preds = %60
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %64

64:                                               ; preds = %13, %29, %62, %11
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %12, %11 ], [ %30, %29 ], [ %14, %13 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %65
}

; Function Attrs: optsize
declare noundef i32 @_ZNK13DisplayString10getNumTagsEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK13DisplayString10getTagNameEi(ptr noundef nonnull align 8 dereferenceable(41), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13DisplayString9removeTagEi(ptr noundef nonnull align 8 dereferenceable(41), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %27

5:                                                ; preds = %2
  %6 = invoke noundef i32 @_ZNK13DisplayString10getNumArgsEPKc(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2) #10
          to label %7 unwind label %27

7:                                                ; preds = %5
  %8 = icmp sgt i32 %6, 3
  br i1 %8, label %9, label %29

9:                                                ; preds = %7
  %10 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3) #10
          to label %11 unwind label %27

11:                                               ; preds = %9
  %12 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %10) #10
          to label %13 unwind label %27

13:                                               ; preds = %11
  %14 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4) #10
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %14) #10
          to label %17 unwind label %27

17:                                               ; preds = %15
  %18 = invoke noundef ptr @_ZNK13DisplayString9getTagArgEPKci(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5) #10
          to label %19 unwind label %27

19:                                               ; preds = %17
  %20 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef %18) #10
          to label %21 unwind label %27

21:                                               ; preds = %19
  %22 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull @.str.10) #10
          to label %23 unwind label %27

23:                                               ; preds = %21
  %24 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef nonnull @.str.10) #10
          to label %25 unwind label %27

25:                                               ; preds = %23
  %26 = invoke noundef zeroext i1 @_ZN13DisplayString9setTagArgEPKciS1_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.10) #10
          to label %29 unwind label %27

27:                                               ; preds = %29, %25, %23, %21, %19, %17, %15, %13, %11, %9, %5, %2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %25, %7
  %30 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %31 unwind label %27

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %30, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %32 unwind label %33

32:                                               ; preds = %31
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

33:                                               ; preds = %31
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %28, %27 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %class.DisplayString, align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @_ZN13DisplayStringC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
  invoke void @_ZN17DisplayStringUtil18parseDisplayStringEPKcR13DisplayString(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %5 unwind label %10

5:                                                ; preds = %2
  invoke fastcc void @_ZL9renameTagR13DisplayStringPKcS2_(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #10
          to label %6 unwind label %10

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZNK13DisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #10
          to label %8 unwind label %10

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
          to label %9 unwind label %12

9:                                                ; preds = %8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void

10:                                               ; preds = %6, %5, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN13DisplayStringD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !83 {
  %3 = tail call noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef %0, ptr noundef %1) #10
  %4 = tail call noundef ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement(ptr noundef %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !83 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !84

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef nonnull %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !85

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %4) #10
  br label %8

8:                                                ; preds = %6, %3, %1
  %9 = phi ptr [ null, %1 ], [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !86 {
  %3 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 17, ptr noundef nonnull @.str.11, ptr noundef %1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !87

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 14) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !88

11:                                               ; preds = %5
  %12 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 17, ptr noundef nonnull @.str.11, ptr noundef %1) #10
  br label %13

13:                                               ; preds = %5, %11, %2
  %14 = phi ptr [ %3, %2 ], [ %12, %11 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !89 {
  %3 = tail call noundef ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc(ptr noundef %0, ptr noundef %1) #10
  %4 = tail call noundef zeroext i1 @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement(ptr noundef %3) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !90

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef nonnull %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !91

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %4) #10
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.13) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(6) @.str.14) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #10
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #9
  resume { ptr, i32 } %17

18:                                               ; preds = %10, %6
  %19 = load i8, ptr %7, align 1, !tbaa !92
  %20 = icmp eq i8 %19, 116
  br label %21

21:                                               ; preds = %18, %3, %1
  %22 = phi i1 [ false, %1 ], [ %20, %18 ], [ true, %3 ]
  ret i1 %22
}

; Function Attrs: optsize
declare noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3, !prof !94

3:                                                ; preds = %1
  %4 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds ptr, ptr %5, i64 33
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 18) #10
  %9 = icmp ne ptr %4, null
  %10 = zext i1 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %17, label %12, !prof !95

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #10
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %34

17:                                               ; preds = %3
  br i1 %9, label %18, label %37, !prof !96

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 33
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef 34) #10
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29, !prof !85

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #10
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #12
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %18
  %30 = load ptr, ptr %4, align 8, !tbaa !80
  %31 = getelementptr inbounds ptr, ptr %30, i64 30
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef 34) #10
  br label %37

34:                                               ; preds = %27, %15
  %35 = phi ptr [ %25, %27 ], [ %13, %15 ]
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %35) #9
  resume { ptr, i32 } %36

37:                                               ; preds = %29, %17, %1
  %38 = phi ptr [ null, %1 ], [ %33, %29 ], [ null, %17 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ...) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12NEDException4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #3 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN14NEDElementUtil7compareEP10NEDElementS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  %7 = load ptr, ptr %1, align 8, !tbaa !80
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(112) %1) #10
  %11 = sub nsw i32 %6, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !80
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %26, label %38

19:                                               ; preds = %26
  %20 = add nuw nsw i32 %27, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %38, !llvm.loop !98

26:                                               ; preds = %13, %19
  %27 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %27) #10
  %32 = load ptr, ptr %1, align 8, !tbaa !80
  %33 = getelementptr inbounds ptr, ptr %32, i64 16
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %27) #10
  %36 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %31, ptr noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %19, label %38

38:                                               ; preds = %26, %19, %13, %2
  %39 = phi i32 [ %11, %2 ], [ 0, %13 ], [ %36, %26 ], [ 0, %19 ]
  ret i32 %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !99 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !100

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !101

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #16
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !92
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !102

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !92
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !64 {
  %3 = tail call noundef i32 @_ZN14NEDElementUtil7compareEP10NEDElementS1_(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1) #10
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
  %26 = tail call noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef nonnull %21, ptr noundef nonnull %20) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load ptr, ptr %21, align 8, !tbaa !80
  %30 = getelementptr inbounds ptr, ptr %29, i64 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(112) %21) #10
  %33 = load ptr, ptr %20, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %20) #10
  %37 = icmp ne ptr %32, null
  %38 = icmp ne ptr %36, null
  %39 = or i1 %37, %38
  br i1 %39, label %17, label %40, !llvm.loop !103

40:                                               ; preds = %25, %28, %5, %23, %2
  %41 = phi i32 [ %3, %2 ], [ %24, %23 ], [ 0, %5 ], [ %26, %25 ], [ 0, %28 ]
  ret i32 %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14NEDElementUtil9isNEDTypeEP10NEDElement(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  %6 = add i32 %5, -9
  %7 = icmp ult i32 %6, 5
  ret i1 %7
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn }
attributes #13 = { noreturn optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!63}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!36 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!37 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!38 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!39 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!40 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!41 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!42 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!43 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!44 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!45 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!46 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!47 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!48 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!49 = !{ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, i64 25}
!50 = !{ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement, i64 25}
!51 = !{ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement, ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, i64 6}
!52 = !{ptr @_ZN14NEDElementUtil16propertyAsStringEP15PropertyElement, ptr @_ZNK14LiteralElement8getValueEv, i64 6}
!53 = !{ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 41}
!54 = !{ptr @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil16getLocalPropertyEP10NEDElementPKc, i64 2}
!55 = !{ptr @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc, ptr @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement, i64 2}
!56 = !{ptr @_ZN14NEDElementUtil14propertyAsBoolEP15PropertyElement, ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, i64 2}
!57 = !{ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 7}
!58 = !{ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, ptr @__cxa_allocate_exception, i64 2}
!59 = !{ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, ptr @_ZN12NEDExceptionC1EP10NEDElementPKcz, i64 2}
!60 = !{ptr @_ZN14NEDElementUtil19getTheOnlyValueFromEP15PropertyElement, ptr @__cxa_free_exception, i64 1}
!61 = !{ptr @_ZNK14LiteralElement8getValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 322}
!62 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!"nedutil.cc:_ZL9renameTagR13DisplayStringPKcS2_"}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"function_entry_count", i64 1891507}
!69 = !{!"function_entry_count", i64 1889443}
!70 = !{!71, !71, i64 0}
!71 = !{!"long", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C++ TBAA"}
!74 = !{!"branch_weights", i32 1257663, i32 631782}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !77, i64 0}
!77 = !{!"any pointer", !72, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"branch_weights", i32 1889444, i32 1}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !73, i64 0}
!82 = distinct !{!82, !67}
!83 = !{!"function_entry_count", i64 25}
!84 = !{!"branch_weights", i32 20, i32 7}
!85 = !{!"branch_weights", i32 1, i32 7}
!86 = !{!"function_entry_count", i64 27}
!87 = !{!"branch_weights", i32 25, i32 4}
!88 = !{!"branch_weights", i32 10, i32 16}
!89 = !{!"function_entry_count", i64 2}
!90 = !{!"branch_weights", i32 1, i32 3}
!91 = !{!"branch_weights", i32 3, i32 1}
!92 = !{!72, !72, i64 0}
!93 = !{!"function_entry_count", i64 8}
!94 = !{!"branch_weights", i32 1, i32 9}
!95 = !{!"branch_weights", i32 9, i32 1}
!96 = !{!"branch_weights", i32 7, i32 3}
!97 = !{!"function_entry_count", i64 322}
!98 = distinct !{!98, !67}
!99 = !{!"function_entry_count", i64 3403184}
!100 = !{!"branch_weights", i32 274228, i32 3128958}
!101 = !{!"branch_weights", i32 1, i32 3128958}
!102 = !{!"branch_weights", i32 121684, i32 152545}
!103 = distinct !{!103, !67}
