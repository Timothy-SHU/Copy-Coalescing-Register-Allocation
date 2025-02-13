; ModuleID = 'source/base/exceptions.cc'
source_filename = "source/base/exceptions.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.dealii::LogStream" = type { %"class.std::stack", ptr, ptr, i32, i32, i8, i8, double, double, i8, ptr, %"class.std::map" }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.dealii::ExceptionBase" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%struct._Guard = type { ptr }

$_ZNSt9exceptionC2Ev = comdat any

$_ZNSt9exceptionC2ERKS_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN6dealii9LogStreamlsIPKcEERS0_RKT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN6dealii9LogStream5printIPKcEEvRKT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN6dealii18deal_II_exceptions15show_stacktraceE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN6dealii18deal_II_exceptions18abort_on_exceptionE = dso_local local_unnamed_addr global i8 1, align 1
@_ZTVN6dealii13ExceptionBaseE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii13ExceptionBaseE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii13ExceptionBaseD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Stacktrace:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ExceptionBase\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"deal_II_exceptions\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"An error occurred in line <\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"> of file <\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"> in function\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"The violated condition was: \00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"The name and call sequence of the exception was:\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Additional Information: \00", align 1
@_ZN6dealii7deallogE = external global %"class.dealii::LogStream", align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@_ZTISt9exception = external constant ptr
@_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11 = internal global i64 0, align 8
@.str.17 = private unnamed_addr constant [57 x i8] c"--------------------------------------------------------\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.18 = private unnamed_addr constant [61 x i8] c"*** Exception encountered in exception handling routines ***\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"*** Aborting! ***\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"*** Message is \00", align 1
@_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN6dealii18deal_II_exceptions9internals14last_exceptionE = dso_local local_unnamed_addr global ptr null, align 8
@.str.21 = private unnamed_addr constant [68 x i8] c"******** More assertions fail but messages are suppressed! ********\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"******** Program is not aborted since another exception is active! ********\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii13ExceptionBaseE = dso_local constant [25 x i8] c"N6dealii13ExceptionBaseE\00", align 1
@_ZTIN6dealii13ExceptionBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii13ExceptionBaseE, ptr @_ZTISt9exception }, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.23 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_exceptions.cc, ptr null }]

@_ZN6dealii13ExceptionBaseC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii13ExceptionBaseC2Ev
@_ZN6dealii13ExceptionBaseC1EPKciS2_S2_S2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr), ptr @_ZN6dealii13ExceptionBaseC2EPKciS2_S2_S2_
@_ZN6dealii13ExceptionBaseC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii13ExceptionBaseC2ERKS0_
@_ZN6dealii13ExceptionBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii13ExceptionBaseD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E) #20
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions28set_additional_assert_outputEPKc(ptr noundef %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions33suppress_stacktrace_in_exceptionsEv() local_unnamed_addr #7 !prof !39 {
  store i8 0, ptr @_ZN6dealii18deal_II_exceptions15show_stacktraceE, align 1, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions26disable_abort_on_exceptionEv() local_unnamed_addr #7 !prof !39 {
  store i8 0, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #5 align 2 !prof !39 {
  tail call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr @.str, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr @.str, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr @.str, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr @.str, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %8, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2EPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 align 2 !prof !39 {
  tail call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %13, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #5 align 2 !prof !39 {
  tail call void @_ZNSt9exceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  store ptr %5, ptr %3, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !51
  store i32 %8, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 4
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !58
  store <2 x ptr> %11, ptr %9, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  store ptr %14, ptr %12, align 8, !tbaa !54
  %15 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %16, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #5 align 2 !prof !39 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #20
  store ptr null, ptr %2, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii13ExceptionBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 align 2 !prof !39 {
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr nocapture noundef nonnull readonly align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !56
  %15 = icmp eq i32 %14, 0
  %16 = load i8, ptr @_ZN6dealii18deal_II_exceptions15show_stacktraceE, align 1, !range !59
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %125, label %19

19:                                               ; preds = %2
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #18
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.3) #18
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %25 = load i32, ptr %13, align 8, !tbaa !56
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  br label %40

29:                                               ; preds = %58, %55
  %30 = phi i32 [ %56, %55 ], [ %60, %58 ]
  %31 = phi i64 [ %41, %55 ], [ %59, %58 ]
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %25, %19 ], [ %30, %29 ]
  %35 = phi i32 [ 0, %19 ], [ %32, %29 ]
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %37, label %125

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %39 = zext i32 %35 to i64
  br label %74

40:                                               ; preds = %27, %58
  %41 = phi i64 [ 0, %27 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %42 = load ptr, ptr %28, align 8, !tbaa !55
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %44, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %45 unwind label %63

45:                                               ; preds = %40
  %46 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, i64 noundef 0) #20
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %49 = load ptr, ptr %28, align 8, !tbaa !55
  %50 = getelementptr inbounds ptr, ptr %49, i64 %41
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %52 unwind label %65

52:                                               ; preds = %48
  %53 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, i64 noundef 0) #20
  %54 = icmp eq i64 %53, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, ptr %13, align 8, !tbaa !56
  br label %29

57:                                               ; preds = %45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %58

58:                                               ; preds = %57, %52
  %59 = add nuw nsw i64 %41, 1
  %60 = load i32, ptr %13, align 8, !tbaa !56
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %40, label %29, !llvm.loop !60

63:                                               ; preds = %40
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %48
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  br label %67

67:                                               ; preds = %63, %65
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %126

69:                                               ; preds = %101
  %70 = add nuw nsw i64 %75, 1
  %71 = load i32, ptr %13, align 8, !tbaa !56
  %72 = trunc i64 %70 to i32
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %125, !llvm.loop !62

74:                                               ; preds = %37, %69
  %75 = phi i64 [ %39, %37 ], [ %70, %69 ]
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 35) #18
  %77 = trunc i64 %75 to i32
  %78 = sub i32 %77, %35
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %76, i32 noundef %78) #18
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull @.str.6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %81 = load ptr, ptr %38, align 8, !tbaa !55
  %82 = getelementptr inbounds ptr, ptr %81, i64 %75
  %83 = load ptr, ptr %82, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %83, ptr noundef nonnull align 1 dereferenceable(1) %8) #18
          to label %84 unwind label %103

84:                                               ; preds = %74
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  %85 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 40, i64 noundef 0) #20
  %86 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 43, i64 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %87 = add i64 %85, 1
  %88 = and i64 %87, 4294967295
  %89 = xor i64 %85, -1
  %90 = add i64 %86, %89
  %91 = and i64 %90, 4294967295
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %88, i64 noundef %91) #18
          to label %92 unwind label %105

92:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  %93 = and i64 %85, 4294967295
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %93) #18
          to label %94 unwind label %107

94:                                               ; preds = %92
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7) #18
          to label %95 unwind label %109

95:                                               ; preds = %94
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
          to label %96 unwind label %111

96:                                               ; preds = %95
  %97 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %99 unwind label %117

99:                                               ; preds = %96
  %100 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %101 unwind label %117

101:                                              ; preds = %99
  %102 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br i1 %102, label %125, label %69

103:                                              ; preds = %74
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  br label %123

105:                                              ; preds = %84
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %121

107:                                              ; preds = %92
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %115

109:                                              ; preds = %94
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %113

111:                                              ; preds = %95
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  br label %119

117:                                              ; preds = %99, %96
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %116, %115 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  br label %121

121:                                              ; preds = %119, %105
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  br label %123

123:                                              ; preds = %121, %103
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %126

125:                                              ; preds = %69, %101, %33, %2
  ret void

126:                                              ; preds = %67, %123
  %127 = phi { ptr, i32 } [ %124, %123 ], [ %68, %67 ]
  resume { ptr, i32 } %127
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #18
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6 align 2

; Function Attrs: nounwind optsize
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !63 {
  %3 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #20
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 !prof !39 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9) #18
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #18
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.10) #18
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #18
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.11) #18
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.12) #18
  %14 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15) #18
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.13) #18
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.12) #18
  %21 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %22) #18
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.14) #18
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @.str.12) #18
  %28 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.15) #18
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %34 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !40, !range !59, !noundef !64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull align 8 dereferenceable(8) %28) #18
  %38 = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) %37, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  br label %39

39:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !39 {
  tail call void @_ZN6dealii9LogStream5printIPKcEEvRKT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 !prof !39 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16) #18
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = load atomic i8, ptr @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11 acquire, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !65

6:                                                ; preds = %1
  %7 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #20
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, ptr nonnull @__dso_handle) #19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #19
  br label %11

11:                                               ; preds = %9, %6, %1
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
          to label %12 unwind label %30

12:                                               ; preds = %11
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17) #18
          to label %14 unwind label %32

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %16 unwind label %32

16:                                               ; preds = %14
  invoke void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %17 unwind label %32

17:                                               ; preds = %16
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %21 unwind label %32

21:                                               ; preds = %17
  invoke void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %22 unwind label %32

22:                                               ; preds = %21
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17) #18
          to label %24 unwind label %32

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %26 unwind label %32

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2) #18
          to label %27 unwind label %34

27:                                               ; preds = %26
  %28 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %29 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #19
  ret ptr %29

30:                                               ; preds = %11
  %31 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %38

32:                                               ; preds = %24, %22, %21, %17, %16, %14, %12
  %33 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %36

34:                                               ; preds = %26
  %35 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %31, %30 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  %41 = extractvalue { ptr, i32 } %39, 1
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #19
  %42 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #19
  %43 = icmp eq i32 %41, %42
  %44 = call ptr @__cxa_begin_catch(ptr %40) #19
  br i1 %43, label %45, label %66

45:                                               ; preds = %38
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18) #18
          to label %47 unwind label %75

47:                                               ; preds = %45
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %49 unwind label %75

49:                                               ; preds = %47
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @.str.20) #18
          to label %51 unwind label %75

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %53 unwind label %75

53:                                               ; preds = %51
  %54 = load ptr, ptr %44, align 8, !tbaa !44
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %44) #20
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %57) #18
          to label %59 unwind label %75

59:                                               ; preds = %53
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %61 unwind label %75

61:                                               ; preds = %59
  %62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.19) #18
          to label %63 unwind label %75

63:                                               ; preds = %61
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %65 unwind label %75

65:                                               ; preds = %63
  call void @abort() #23
  unreachable

66:                                               ; preds = %38
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18) #18
          to label %68 unwind label %75

68:                                               ; preds = %66
  %69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %70 unwind label %75

70:                                               ; preds = %68
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull @.str.19) #18
          to label %72 unwind label %75

72:                                               ; preds = %70
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %74 unwind label %75

74:                                               ; preds = %72
  call void @abort() #23
  unreachable

75:                                               ; preds = %63, %61, %59, %53, %51, %49, %47, %45, %72, %70, %68, %66
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #24
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions9internals18issue_error_assertEPKciS3_S3_S3_RNS_13ExceptionBaseE(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(60) %5) local_unnamed_addr #6 !prof !39 {
  tail call void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %7 = load i32, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !66
  switch i32 %7, label %24 [
    i32 0, label %8
    i32 1, label %19
  ]

8:                                                ; preds = %6
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17) #18
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  tail call void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
  tail call void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #18
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17) #18
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %16 = tail call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E) #20
  br i1 %16, label %24, label %17

17:                                               ; preds = %8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E) #18
  br label %21

19:                                               ; preds = %6
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.21) #18
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ]
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  br label %24

24:                                               ; preds = %21, %6, %8
  %25 = load i32, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !66
  %26 = add i32 %25, 1
  store i32 %26, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !66
  store ptr %5, ptr @_ZN6dealii18deal_II_exceptions9internals14last_exceptionE, align 8, !tbaa !58
  %27 = tail call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #25
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = icmp ult i32 %26, 2
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22) #18
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  br label %38

33:                                               ; preds = %24
  %34 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !40, !range !59, !noundef !64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @abort() #23
  unreachable

37:                                               ; preds = %33
  store i32 %25, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !66
  br label %38

38:                                               ; preds = %28, %30, %37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef zeroext i1 @_ZSt18uncaught_exceptionv() local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions9internals5abortEv() local_unnamed_addr #5 !prof !39 {
  %1 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !40, !range !59, !noundef !64
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @abort() #23
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  store i64 %6, ptr %4, align 8, !tbaa !68
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #18
  %10 = load i64, ptr %4, align 8, !tbaa !68
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #18
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #20
  store ptr null, ptr %5, align 8, !tbaa !70
  %15 = load i64, ptr %4, align 8, !tbaa !68
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !39 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !58
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !39 {
  store ptr %1, ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !39 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !39 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9LogStream5printIPKcEEvRKT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !39 {
  %3 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_exceptions.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { noreturn optsize }
attributes #23 = { noreturn nounwind optsize }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 952893667334}
!4 = !{!"MaxCount", i64 138244457713}
!5 = !{!"MaxInternalCount", i64 61570300772}
!6 = !{!"MaxFunctionCount", i64 138244457713}
!7 = !{!"NumCounts", i64 74881}
!8 = !{!"NumFunctions", i64 41355}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 138244457713, i32 1}
!14 = !{i32 100000, i64 138244457713, i32 1}
!15 = !{i32 200000, i64 135283113845, i32 2}
!16 = !{i32 300000, i64 61570300772, i32 3}
!17 = !{i32 400000, i64 59335447748, i32 5}
!18 = !{i32 500000, i64 54202702756, i32 7}
!19 = !{i32 600000, i64 27583525196, i32 8}
!20 = !{i32 700000, i64 9717284942, i32 14}
!21 = !{i32 800000, i64 4099381952, i32 32}
!22 = !{i32 900000, i64 1194611288, i32 75}
!23 = !{i32 950000, i64 329112231, i32 158}
!24 = !{i32 990000, i64 26264717, i32 515}
!25 = !{i32 999000, i64 1278962, i32 1689}
!26 = !{i32 999900, i64 136932, i32 3466}
!27 = !{i32 999990, i64 17760, i32 4671}
!28 = !{i32 999999, i64 520, i32 6951}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN6dealii18deal_II_exceptions28set_additional_assert_outputEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 1}
!36 = !{ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 1181}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"bool", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !43, i64 0}
!46 = !{!47, !49, i64 8}
!47 = !{!"_ZTSN6dealii13ExceptionBaseE", !48, i64 0, !49, i64 8, !50, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !50, i64 56}
!48 = !{!"_ZTSSt9exception"}
!49 = !{!"any pointer", !42, i64 0}
!50 = !{!"int", !42, i64 0}
!51 = !{!47, !50, i64 16}
!52 = !{!47, !49, i64 24}
!53 = !{!47, !49, i64 32}
!54 = !{!47, !49, i64 40}
!55 = !{!47, !49, i64 48}
!56 = !{!47, !50, i64 56}
!57 = !{!"function_entry_count", i64 13999}
!58 = !{!49, !49, i64 0}
!59 = !{i8 0, i8 2}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!"function_entry_count", i64 1181}
!64 = !{}
!65 = !{!"branch_weights", i32 1, i32 1048575}
!66 = !{!50, !50, i64 0}
!67 = !{!"function_entry_count", i64 67805}
!68 = !{!69, !69, i64 0}
!69 = !{!"long", !42, i64 0}
!70 = !{!71, !49, i64 0}
!71 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !49, i64 0}
