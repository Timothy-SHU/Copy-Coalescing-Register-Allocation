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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }

$__clang_call_terminate = comdat any

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
@.str.23 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_exceptions.cc, ptr null }]

@_ZN6dealii13ExceptionBaseC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii13ExceptionBaseC2Ev
@_ZN6dealii13ExceptionBaseC1EPKciS2_S2_S2_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr), ptr @_ZN6dealii13ExceptionBaseC2EPKciS2_S2_S2_
@_ZN6dealii13ExceptionBaseC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii13ExceptionBaseC2ERKS0_
@_ZN6dealii13ExceptionBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii13ExceptionBaseD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions28set_additional_assert_outputEPKc(ptr noundef %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 0, i32 1), align 8, !tbaa !41
  %3 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 noundef 0, i64 noundef %2, ptr noundef %0, i64 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions33suppress_stacktrace_in_exceptionsEv() local_unnamed_addr #5 !prof !48 {
  store i8 0, ptr @_ZN6dealii18deal_II_exceptions15show_stacktraceE, align 1, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions26disable_abort_on_exceptionEv() local_unnamed_addr #5 !prof !48 {
  store i8 0, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(60) %0) unnamed_addr #6 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr @.str, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr @.str, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr @.str, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr @.str, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %8, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2EPKciS2_S2_S2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %13, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(60) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(60) %1) unnamed_addr #7 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  store ptr %5, ptr %3, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !57
  store i32 %8, ptr %6, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  store ptr %11, ptr %9, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  store ptr %14, ptr %12, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  store ptr %17, ptr %15, align 8, !tbaa !60
  %18 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  store ptr null, ptr %18, align 8, !tbaa !61
  %19 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  store i32 0, ptr %19, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #25
  store ptr null, ptr %2, align 8, !tbaa !61
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN6dealii13ExceptionBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii13ExceptionBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #25
  store ptr null, ptr %2, align 8, !tbaa !61
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 !prof !48 {
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  store ptr %4, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr nocapture noundef nonnull readonly align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !annotation !63 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = icmp eq i32 %17, 0
  %19 = load i8, ptr @_ZN6dealii18deal_II_exceptions15show_stacktraceE, align 1, !range !64
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %520, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 8, !tbaa !51
  %24 = getelementptr i8, ptr %23, i64 -24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = getelementptr inbounds %"class.std::basic_ios", ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !72

30:                                               ; preds = %22
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

31:                                               ; preds = %22
  %32 = getelementptr inbounds %"class.std::ctype", ptr %28, i64 0, i32 8
  %33 = load i8, ptr %32, align 8, !tbaa !73
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35, !prof !76

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.std::ctype", ptr %28, i64 0, i32 9, i64 10
  %37 = load i8, ptr %36, align 1, !tbaa !77
  br label %43

38:                                               ; preds = %31
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %28)
  %39 = load ptr, ptr %28, align 8, !tbaa !51
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef signext i8 %41(ptr noundef nonnull align 8 dereferenceable(570) %28, i8 noundef signext 10), !prof !78
  br label %43

43:                                               ; preds = %35, %38
  %44 = phi i8 [ %37, %35 ], [ %42, %38 ]
  %45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %44)
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 11)
  %48 = load ptr, ptr %1, align 8, !tbaa !51
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  %52 = getelementptr inbounds %"class.std::basic_ios", ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !72

55:                                               ; preds = %43
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

56:                                               ; preds = %43
  %57 = getelementptr inbounds %"class.std::ctype", ptr %53, i64 0, i32 8
  %58 = load i8, ptr %57, align 8, !tbaa !73
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !76

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::ctype", ptr %53, i64 0, i32 9, i64 10
  %62 = load i8, ptr %61, align 1, !tbaa !77
  br label %68

63:                                               ; preds = %56
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %53)
  %64 = load ptr, ptr %53, align 8, !tbaa !51
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef signext i8 %66(ptr noundef nonnull align 8 dereferenceable(570) %53, i8 noundef signext 10), !prof !78
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i8 [ %62, %60 ], [ %67, %63 ]
  %70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %69)
  %71 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %70)
  %72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull @.str.3, i64 noundef 11)
  %73 = load ptr, ptr %71, align 8, !tbaa !51
  %74 = getelementptr i8, ptr %73, i64 -24
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds i8, ptr %71, i64 %75
  %77 = getelementptr inbounds %"class.std::basic_ios", ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81, !prof !72

80:                                               ; preds = %68
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

81:                                               ; preds = %68
  %82 = getelementptr inbounds %"class.std::ctype", ptr %78, i64 0, i32 8
  %83 = load i8, ptr %82, align 8, !tbaa !73
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85, !prof !76

85:                                               ; preds = %81
  %86 = getelementptr inbounds %"class.std::ctype", ptr %78, i64 0, i32 9, i64 10
  %87 = load i8, ptr %86, align 1, !tbaa !77
  br label %93

88:                                               ; preds = %81
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %78)
  %89 = load ptr, ptr %78, align 8, !tbaa !51
  %90 = getelementptr inbounds ptr, ptr %89, i64 6
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef signext i8 %91(ptr noundef nonnull align 8 dereferenceable(570) %78, i8 noundef signext 10), !prof !78
  br label %93

93:                                               ; preds = %85, %88
  %94 = phi i8 [ %87, %85 ], [ %92, %88 ]
  %95 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %71, i8 noundef signext %94)
  %96 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %95)
  %97 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  br label %106

106:                                              ; preds = %200, %93
  %107 = phi i64 [ %201, %200 ], [ 0, %93 ]
  %108 = load i32, ptr %16, align 8, !tbaa !62
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %111, label %161

111:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  %112 = load ptr, ptr %97, align 8, !tbaa !61
  %113 = getelementptr inbounds ptr, ptr %112, i64 %107
  %114 = load ptr, ptr %113, align 8, !tbaa !79
  store ptr %98, ptr %9, align 8, !tbaa !80
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #27
          to label %117 unwind label %204

117:                                              ; preds = %116
  unreachable

118:                                              ; preds = %111
  %119 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %114) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  store i64 %119, ptr %7, align 8, !tbaa !81
  %120 = icmp ugt i64 %119, 15
  br i1 %120, label %121, label %125, !prof !82

121:                                              ; preds = %118
  %122 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %123 unwind label %202

123:                                              ; preds = %121
  store ptr %122, ptr %9, align 8, !tbaa !83
  %124 = load i64, ptr %7, align 8, !tbaa !81
  store i64 %124, ptr %98, align 8, !tbaa !77
  br label %125

125:                                              ; preds = %123, %118
  %126 = load ptr, ptr %9, align 8, !tbaa !83
  switch i64 %119, label %129 [
    i64 1, label %127
    i64 0, label %130
  ], !prof !84

127:                                              ; preds = %125
  %128 = load i8, ptr %114, align 1, !tbaa !77
  store i8 %128, ptr %126, align 1, !tbaa !77
  br label %130

129:                                              ; preds = %125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr nonnull align 1 %114, i64 %119, i1 false), !prof !85
  br label %130

130:                                              ; preds = %125, %127, %129
  %131 = load i64, ptr %7, align 8, !tbaa !81
  store i64 %131, ptr %99, align 8, !tbaa !41
  %132 = load ptr, ptr %9, align 8, !tbaa !83
  %133 = getelementptr inbounds i8, ptr %132, i64 %131
  store i8 0, ptr %133, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  %134 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, i64 noundef 0, i64 noundef 13) #25
  %135 = icmp eq i64 %134, -1
  br i1 %135, label %136, label %161

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #25
  %137 = load ptr, ptr %97, align 8, !tbaa !61
  %138 = getelementptr inbounds ptr, ptr %137, i64 %107
  %139 = load ptr, ptr %138, align 8, !tbaa !79
  store ptr %100, ptr %10, align 8, !tbaa !80
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #27
          to label %142 unwind label %208

142:                                              ; preds = %141
  unreachable

143:                                              ; preds = %136
  %144 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %139) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store i64 %144, ptr %6, align 8, !tbaa !81
  %145 = icmp ugt i64 %144, 15
  br i1 %145, label %146, label %150, !prof !82

146:                                              ; preds = %143
  %147 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %148 unwind label %206

148:                                              ; preds = %146
  store ptr %147, ptr %10, align 8, !tbaa !83
  %149 = load i64, ptr %6, align 8, !tbaa !81
  store i64 %149, ptr %100, align 8, !tbaa !77
  br label %150

150:                                              ; preds = %148, %143
  %151 = load ptr, ptr %10, align 8, !tbaa !83
  switch i64 %144, label %154 [
    i64 1, label %152
    i64 0, label %155
  ], !prof !84

152:                                              ; preds = %150
  %153 = load i8, ptr %139, align 1, !tbaa !77
  store i8 %153, ptr %151, align 1, !tbaa !77
  br label %155

154:                                              ; preds = %150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr nonnull align 1 %139, i64 %144, i1 false), !prof !85
  br label %155

155:                                              ; preds = %150, %152, %154
  %156 = load i64, ptr %6, align 8, !tbaa !81
  store i64 %156, ptr %101, align 8, !tbaa !41
  %157 = load ptr, ptr %10, align 8, !tbaa !83
  %158 = getelementptr inbounds i8, ptr %157, i64 %156
  store i8 0, ptr %158, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %159 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 18) #25
  %160 = icmp ne i64 %159, -1
  br label %161

161:                                              ; preds = %130, %155, %106
  %162 = phi i1 [ false, %130 ], [ true, %155 ], [ false, %106 ]
  %163 = phi i1 [ true, %130 ], [ %160, %155 ], [ false, %106 ]
  br i1 %162, label %164, label %172

164:                                              ; preds = %161
  %165 = load ptr, ptr %10, align 8, !tbaa !83
  %166 = icmp eq ptr %165, %102
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, ptr %103, align 8, !tbaa !41
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %165) #26
  br label %171

171:                                              ; preds = %167, %170
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  br label %172

172:                                              ; preds = %161, %171
  br i1 %110, label %173, label %181

173:                                              ; preds = %172
  %174 = load ptr, ptr %9, align 8, !tbaa !83
  %175 = icmp eq ptr %174, %104
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i64, ptr %105, align 8, !tbaa !41
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %180

179:                                              ; preds = %173
  call void @_ZdlPv(ptr noundef %174) #26
  br label %180

180:                                              ; preds = %176, %179
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  br label %181

181:                                              ; preds = %172, %180
  br i1 %163, label %200, label %182

182:                                              ; preds = %181
  %183 = trunc i64 %107 to i32
  %184 = getelementptr %"class.std::ios_base", ptr %1, i64 0, i32 2
  %185 = load i32, ptr %16, align 8, !tbaa !62
  %186 = icmp sgt i32 %185, %183
  br i1 %186, label %187, label %520

187:                                              ; preds = %182
  %188 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 7
  %189 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %190 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %193 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %195 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %196 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %198 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %199 = and i64 %107, 4294967295
  br label %226

200:                                              ; preds = %181
  %201 = add nuw i64 %107, 1
  br label %106, !llvm.loop !86

202:                                              ; preds = %121
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %219

204:                                              ; preds = %116
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %219

206:                                              ; preds = %146
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %210

208:                                              ; preds = %141
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi { ptr, i32 } [ %207, %206 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  %212 = load ptr, ptr %9, align 8, !tbaa !83
  %213 = icmp eq ptr %212, %98
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !41
  %217 = icmp ult i64 %216, 16
  call void @llvm.assume(i1 %217)
  br label %219

218:                                              ; preds = %210
  call void @_ZdlPv(ptr noundef %212) #26
  br label %219

219:                                              ; preds = %202, %204, %218, %214
  %220 = phi { ptr, i32 } [ %211, %214 ], [ %211, %218 ], [ %203, %202 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  br label %521

221:                                              ; preds = %461
  %222 = add nuw i64 %227, 1
  %223 = load i32, ptr %16, align 8, !tbaa !62
  %224 = trunc i64 %222 to i32
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %520, !llvm.loop !89

226:                                              ; preds = %187, %221
  %227 = phi i64 [ %107, %187 ], [ %222, %221 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 35, ptr %8, align 1, !tbaa !77
  %228 = load ptr, ptr %1, align 8, !tbaa !51
  %229 = getelementptr i8, ptr %228, i64 -24
  %230 = load i64, ptr %229, align 8
  %231 = getelementptr i8, ptr %184, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !90
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %226
  %235 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %8, i64 noundef 1)
  br label %238

236:                                              ; preds = %226
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 35)
  br label %238

238:                                              ; preds = %234, %236
  %239 = phi ptr [ %235, %234 ], [ %1, %236 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %240 = sub nuw nsw i64 %227, %199
  %241 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %239, i64 noundef %240)
  %242 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %241, ptr noundef nonnull @.str.6, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #25
  %243 = load ptr, ptr %188, align 8, !tbaa !61
  %244 = getelementptr inbounds ptr, ptr %243, i64 %227
  %245 = load ptr, ptr %244, align 8, !tbaa !79
  store ptr %189, ptr %11, align 8, !tbaa !80
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %238
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #27
          to label %248 unwind label %464

248:                                              ; preds = %247
  unreachable

249:                                              ; preds = %238
  %250 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %245) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store i64 %250, ptr %5, align 8, !tbaa !81
  %251 = icmp ugt i64 %250, 15
  br i1 %251, label %252, label %256, !prof !82

252:                                              ; preds = %249
  %253 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %254 unwind label %462

254:                                              ; preds = %252
  store ptr %253, ptr %11, align 8, !tbaa !83
  %255 = load i64, ptr %5, align 8, !tbaa !81
  store i64 %255, ptr %189, align 8, !tbaa !77
  br label %256

256:                                              ; preds = %254, %249
  %257 = load ptr, ptr %11, align 8, !tbaa !83
  switch i64 %250, label %260 [
    i64 1, label %258
    i64 0, label %261
  ], !prof !84

258:                                              ; preds = %256
  %259 = load i8, ptr %245, align 1, !tbaa !77
  store i8 %259, ptr %257, align 1, !tbaa !77
  br label %261

260:                                              ; preds = %256
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr nonnull align 1 %245, i64 %250, i1 false), !prof !85
  br label %261

261:                                              ; preds = %256, %258, %260
  %262 = load i64, ptr %5, align 8, !tbaa !81
  store i64 %262, ptr %190, align 8, !tbaa !41
  %263 = load ptr, ptr %11, align 8, !tbaa !83
  %264 = getelementptr inbounds i8, ptr %263, i64 %262
  store i8 0, ptr %264, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %265 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 40, i64 noundef 0) #25
  %266 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 43, i64 noundef 0) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #25
  %267 = add i64 %265, 1
  %268 = and i64 %267, 4294967295
  %269 = load i64, ptr %190, align 8, !tbaa !41
  %270 = icmp ult i64 %269, %268
  br i1 %270, label %271, label %273

271:                                              ; preds = %261
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i64 noundef %268, i64 noundef %269) #27
          to label %272 unwind label %468

272:                                              ; preds = %271
  unreachable

273:                                              ; preds = %261
  %274 = xor i64 %265, -1
  %275 = add i64 %266, %274
  %276 = and i64 %275, 4294967295
  store ptr %191, ptr %12, align 8, !tbaa !80
  %277 = load ptr, ptr %11, align 8, !tbaa !83
  %278 = getelementptr inbounds i8, ptr %277, i64 %268
  %279 = sub i64 %269, %268
  %280 = call noundef i64 @llvm.umin.i64(i64 %279, i64 %276)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %280, ptr %4, align 8, !tbaa !81
  %281 = icmp ugt i64 %280, 15
  br i1 %281, label %282, label %286, !prof !82

282:                                              ; preds = %273
  %283 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %284 unwind label %466

284:                                              ; preds = %282
  store ptr %283, ptr %12, align 8, !tbaa !83
  %285 = load i64, ptr %4, align 8, !tbaa !81
  store i64 %285, ptr %191, align 8, !tbaa !77
  br label %286

286:                                              ; preds = %284, %273
  %287 = load ptr, ptr %12, align 8, !tbaa !83
  %288 = trunc i64 %280 to i32
  switch i32 %288, label %291 [
    i32 1, label %289
    i32 0, label %292
  ], !prof !84

289:                                              ; preds = %286
  %290 = load i8, ptr %278, align 1, !tbaa !77
  store i8 %290, ptr %287, align 1, !tbaa !77
  br label %292

291:                                              ; preds = %286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %287, ptr align 1 %278, i64 %280, i1 false), !prof !85
  br label %292

292:                                              ; preds = %286, %289, %291
  %293 = load i64, ptr %4, align 8, !tbaa !81
  store i64 %293, ptr %192, align 8, !tbaa !41
  %294 = load ptr, ptr %12, align 8, !tbaa !83
  %295 = getelementptr inbounds i8, ptr %294, i64 %293
  store i8 0, ptr %295, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #25
  %296 = and i64 %265, 4294967295
  store ptr %193, ptr %15, align 8, !tbaa !80
  %297 = load i64, ptr %190, align 8, !tbaa !41
  %298 = load ptr, ptr %11, align 8, !tbaa !83
  %299 = call noundef i64 @llvm.umin.i64(i64 %297, i64 %296)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store i64 %299, ptr %3, align 8, !tbaa !81
  %300 = icmp ugt i64 %299, 15
  br i1 %300, label %301, label %305, !prof !82

301:                                              ; preds = %292
  %302 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %303 unwind label %470

303:                                              ; preds = %301
  store ptr %302, ptr %15, align 8, !tbaa !83
  %304 = load i64, ptr %3, align 8, !tbaa !81
  store i64 %304, ptr %193, align 8, !tbaa !77
  br label %305

305:                                              ; preds = %303, %292
  %306 = load ptr, ptr %15, align 8, !tbaa !83
  %307 = trunc i64 %299 to i32
  switch i32 %307, label %310 [
    i32 1, label %308
    i32 0, label %311
  ], !prof !84

308:                                              ; preds = %305
  %309 = load i8, ptr %298, align 1, !tbaa !77
  store i8 %309, ptr %306, align 1, !tbaa !77
  br label %311

310:                                              ; preds = %305
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %306, ptr align 1 %298, i64 %299, i1 false), !prof !85
  br label %311

311:                                              ; preds = %305, %308, %310
  %312 = load i64, ptr %3, align 8, !tbaa !81
  store i64 %312, ptr %194, align 8, !tbaa !41
  %313 = load ptr, ptr %15, align 8, !tbaa !83
  %314 = getelementptr inbounds i8, ptr %313, i64 %312
  store i8 0, ptr %314, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %315 = load i64, ptr %194, align 8, !tbaa !41
  %316 = and i64 %315, -2
  %317 = icmp eq i64 %316, 4611686018427387902
  br i1 %317, label %318, label %320, !prof !91

318:                                              ; preds = %311
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
          to label %319 unwind label %474

319:                                              ; preds = %318
  unreachable

320:                                              ; preds = %311
  %321 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %322 unwind label %472

322:                                              ; preds = %320
  store ptr %195, ptr %14, align 8, !tbaa !80, !alias.scope !92
  %323 = load ptr, ptr %321, align 8, !tbaa !83
  %324 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %321, i64 0, i32 2
  %325 = icmp eq ptr %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %321, i64 0, i32 1
  %328 = load i64, ptr %327, align 8, !tbaa !41
  %329 = icmp ult i64 %328, 16
  call void @llvm.assume(i1 %329)
  %330 = add nuw nsw i64 %328, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %195, ptr noundef nonnull align 8 dereferenceable(1) %324, i64 %330, i1 false)
  br label %333

331:                                              ; preds = %322
  store ptr %323, ptr %14, align 8, !tbaa !83, !alias.scope !92
  %332 = load i64, ptr %324, align 8, !tbaa !77
  store i64 %332, ptr %195, align 8, !tbaa !77, !alias.scope !92
  br label %333

333:                                              ; preds = %326, %331
  %334 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %321, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !41
  store i64 %335, ptr %196, align 8, !tbaa !41, !alias.scope !92
  store ptr %324, ptr %321, align 8, !tbaa !83
  store i64 0, ptr %334, align 8, !tbaa !41
  store i8 0, ptr %324, align 8, !tbaa !77
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %336 = load i64, ptr %192, align 8, !tbaa !41, !noalias !95
  %337 = load i64, ptr %196, align 8, !tbaa !41, !noalias !95
  %338 = sub i64 4611686018427387903, %337
  %339 = icmp ult i64 %338, %336
  br i1 %339, label %340, label %342

340:                                              ; preds = %333
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
          to label %341 unwind label %478

341:                                              ; preds = %340
  unreachable

342:                                              ; preds = %333
  %343 = load ptr, ptr %12, align 8, !tbaa !83, !noalias !95
  %344 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %343, i64 noundef %336)
          to label %345 unwind label %476

345:                                              ; preds = %342
  store ptr %197, ptr %13, align 8, !tbaa !80, !alias.scope !95
  %346 = load ptr, ptr %344, align 8, !tbaa !83
  %347 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %344, i64 0, i32 2
  %348 = icmp eq ptr %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %345
  %350 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %344, i64 0, i32 1
  %351 = load i64, ptr %350, align 8, !tbaa !41
  %352 = icmp ult i64 %351, 16
  call void @llvm.assume(i1 %352)
  %353 = add nuw nsw i64 %351, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %197, ptr noundef nonnull align 8 dereferenceable(1) %347, i64 %353, i1 false)
  br label %356

354:                                              ; preds = %345
  store ptr %346, ptr %13, align 8, !tbaa !83, !alias.scope !95
  %355 = load i64, ptr %347, align 8, !tbaa !77
  store i64 %355, ptr %197, align 8, !tbaa !77, !alias.scope !95
  br label %356

356:                                              ; preds = %349, %354
  %357 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %344, i64 0, i32 1
  %358 = load i64, ptr %357, align 8, !tbaa !41
  store i64 %358, ptr %198, align 8, !tbaa !41, !alias.scope !95
  store ptr %347, ptr %344, align 8, !tbaa !83
  store i64 0, ptr %357, align 8, !tbaa !41
  store i8 0, ptr %347, align 8, !tbaa !77
  %359 = load ptr, ptr %11, align 8, !tbaa !83
  %360 = icmp eq ptr %359, %189
  br i1 %360, label %361, label %364

361:                                              ; preds = %356
  %362 = load i64, ptr %190, align 8, !tbaa !41
  %363 = icmp ult i64 %362, 16
  call void @llvm.assume(i1 %363)
  br label %364

364:                                              ; preds = %361, %356
  %365 = load ptr, ptr %13, align 8, !tbaa !83
  %366 = icmp eq ptr %365, %197
  br i1 %366, label %367, label %377

367:                                              ; preds = %364
  %368 = load i64, ptr %198, align 8, !tbaa !41
  %369 = icmp ult i64 %368, 16
  call void @llvm.assume(i1 %369)
  switch i64 %368, label %372 [
    i64 0, label %373
    i64 1, label %370
  ]

370:                                              ; preds = %367
  %371 = load i8, ptr %365, align 1, !tbaa !77
  store i8 %371, ptr %359, align 1, !tbaa !77
  br label %373

372:                                              ; preds = %367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %359, ptr align 1 %365, i64 %368, i1 false)
  br label %373

373:                                              ; preds = %372, %370, %367
  %374 = load i64, ptr %198, align 8, !tbaa !41
  store i64 %374, ptr %190, align 8, !tbaa !41
  %375 = load ptr, ptr %11, align 8, !tbaa !83
  %376 = getelementptr inbounds i8, ptr %375, i64 %374
  store i8 0, ptr %376, align 1, !tbaa !77
  br label %391

377:                                              ; preds = %364
  br i1 %360, label %378, label %381

378:                                              ; preds = %377
  %379 = load i64, ptr %190, align 8, !tbaa !41
  %380 = icmp ult i64 %379, 16
  call void @llvm.assume(i1 %380)
  br label %383

381:                                              ; preds = %377
  %382 = load i64, ptr %189, align 8, !tbaa !77
  br label %383

383:                                              ; preds = %381, %378
  %384 = phi ptr [ null, %378 ], [ %359, %381 ]
  %385 = phi i64 [ undef, %378 ], [ %382, %381 ]
  store ptr %365, ptr %11, align 8, !tbaa !83
  %386 = load i64, ptr %198, align 8, !tbaa !41
  store i64 %386, ptr %190, align 8, !tbaa !41
  %387 = load i64, ptr %197, align 8, !tbaa !77
  store i64 %387, ptr %189, align 8, !tbaa !77
  %388 = icmp eq ptr %384, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %383
  store ptr %384, ptr %13, align 8, !tbaa !83
  store i64 %385, ptr %197, align 8, !tbaa !77
  br label %391

390:                                              ; preds = %383
  store ptr %197, ptr %13, align 8, !tbaa !83
  br label %391

391:                                              ; preds = %373, %389, %390
  store i64 0, ptr %198, align 8, !tbaa !41
  %392 = load ptr, ptr %13, align 8, !tbaa !83
  store i8 0, ptr %392, align 1, !tbaa !77
  %393 = load ptr, ptr %13, align 8, !tbaa !83
  %394 = icmp eq ptr %393, %197
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i64, ptr %198, align 8, !tbaa !41
  %397 = icmp ult i64 %396, 16
  call void @llvm.assume(i1 %397)
  br label %399

398:                                              ; preds = %391
  call void @_ZdlPv(ptr noundef %393) #26
  br label %399

399:                                              ; preds = %395, %398
  %400 = load ptr, ptr %14, align 8, !tbaa !83
  %401 = icmp eq ptr %400, %195
  br i1 %401, label %402, label %405

402:                                              ; preds = %399
  %403 = load i64, ptr %196, align 8, !tbaa !41
  %404 = icmp ult i64 %403, 16
  call void @llvm.assume(i1 %404)
  br label %406

405:                                              ; preds = %399
  call void @_ZdlPv(ptr noundef %400) #26
  br label %406

406:                                              ; preds = %402, %405
  %407 = load ptr, ptr %15, align 8, !tbaa !83
  %408 = icmp eq ptr %407, %193
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load i64, ptr %194, align 8, !tbaa !41
  %411 = icmp ult i64 %410, 16
  call void @llvm.assume(i1 %411)
  br label %413

412:                                              ; preds = %406
  call void @_ZdlPv(ptr noundef %407) #26
  br label %413

413:                                              ; preds = %409, %412
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #25
  %414 = load ptr, ptr %11, align 8, !tbaa !83
  %415 = load i64, ptr %190, align 8, !tbaa !41
  %416 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %414, i64 noundef %415)
          to label %417 unwind label %498

417:                                              ; preds = %413
  %418 = load ptr, ptr %416, align 8, !tbaa !51
  %419 = getelementptr i8, ptr %418, i64 -24
  %420 = load i64, ptr %419, align 8
  %421 = getelementptr inbounds i8, ptr %416, i64 %420
  %422 = getelementptr inbounds %"class.std::basic_ios", ptr %421, i64 0, i32 5
  %423 = load ptr, ptr %422, align 8, !tbaa !65
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %427, !prof !72

425:                                              ; preds = %417
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %426 unwind label %500

426:                                              ; preds = %425
  unreachable

427:                                              ; preds = %417
  %428 = getelementptr inbounds %"class.std::ctype", ptr %423, i64 0, i32 8
  %429 = load i8, ptr %428, align 8, !tbaa !73
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %434, label %431, !prof !76

431:                                              ; preds = %427
  %432 = getelementptr inbounds %"class.std::ctype", ptr %423, i64 0, i32 9, i64 10
  %433 = load i8, ptr %432, align 1, !tbaa !77
  br label %440

434:                                              ; preds = %427
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %423)
          to label %435 unwind label %498

435:                                              ; preds = %434
  %436 = load ptr, ptr %423, align 8, !tbaa !51
  %437 = getelementptr inbounds ptr, ptr %436, i64 6
  %438 = load ptr, ptr %437, align 8
  %439 = invoke noundef signext i8 %438(ptr noundef nonnull align 8 dereferenceable(570) %423, i8 noundef signext 10)
          to label %440 unwind label %498, !prof !78

440:                                              ; preds = %431, %435
  %441 = phi i8 [ %433, %431 ], [ %439, %435 ]
  %442 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %416, i8 noundef signext %441)
          to label %443 unwind label %498

443:                                              ; preds = %440
  %444 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %442)
          to label %445 unwind label %498

445:                                              ; preds = %443
  %446 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.8) #25
  %447 = icmp eq i32 %446, 0
  %448 = load ptr, ptr %12, align 8, !tbaa !83
  %449 = icmp eq ptr %448, %191
  br i1 %449, label %450, label %453

450:                                              ; preds = %445
  %451 = load i64, ptr %192, align 8, !tbaa !41
  %452 = icmp ult i64 %451, 16
  call void @llvm.assume(i1 %452)
  br label %454

453:                                              ; preds = %445
  call void @_ZdlPv(ptr noundef %448) #26
  br label %454

454:                                              ; preds = %450, %453
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  %455 = load ptr, ptr %11, align 8, !tbaa !83
  %456 = icmp eq ptr %455, %189
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load i64, ptr %190, align 8, !tbaa !41
  %459 = icmp ult i64 %458, 16
  call void @llvm.assume(i1 %459)
  br label %461

460:                                              ; preds = %454
  call void @_ZdlPv(ptr noundef %455) #26
  br label %461

461:                                              ; preds = %457, %460
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  br i1 %447, label %520, label %221

462:                                              ; preds = %252
  %463 = landingpad { ptr, i32 }
          cleanup
  br label %518

464:                                              ; preds = %247
  %465 = landingpad { ptr, i32 }
          cleanup
  br label %518

466:                                              ; preds = %282
  %467 = landingpad { ptr, i32 }
          cleanup
  br label %510

468:                                              ; preds = %271
  %469 = landingpad { ptr, i32 }
          cleanup
  br label %510

470:                                              ; preds = %301
  %471 = landingpad { ptr, i32 }
          cleanup
  br label %496

472:                                              ; preds = %320
  %473 = landingpad { ptr, i32 }
          cleanup
  br label %488

474:                                              ; preds = %318
  %475 = landingpad { ptr, i32 }
          cleanup
  br label %488

476:                                              ; preds = %342
  %477 = landingpad { ptr, i32 }
          cleanup
  br label %480

478:                                              ; preds = %340
  %479 = landingpad { ptr, i32 }
          cleanup
  br label %480

480:                                              ; preds = %478, %476
  %481 = phi { ptr, i32 } [ %477, %476 ], [ %479, %478 ]
  %482 = load ptr, ptr %14, align 8, !tbaa !83
  %483 = icmp eq ptr %482, %195
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = load i64, ptr %196, align 8, !tbaa !41
  %486 = icmp ult i64 %485, 16
  call void @llvm.assume(i1 %486)
  br label %488

487:                                              ; preds = %480
  call void @_ZdlPv(ptr noundef %482) #26
  br label %488

488:                                              ; preds = %472, %474, %487, %484
  %489 = phi { ptr, i32 } [ %481, %484 ], [ %481, %487 ], [ %473, %472 ], [ %475, %474 ]
  %490 = load ptr, ptr %15, align 8, !tbaa !83
  %491 = icmp eq ptr %490, %193
  br i1 %491, label %492, label %495

492:                                              ; preds = %488
  %493 = load i64, ptr %194, align 8, !tbaa !41
  %494 = icmp ult i64 %493, 16
  call void @llvm.assume(i1 %494)
  br label %496

495:                                              ; preds = %488
  call void @_ZdlPv(ptr noundef %490) #26
  br label %496

496:                                              ; preds = %495, %492, %470
  %497 = phi { ptr, i32 } [ %471, %470 ], [ %489, %492 ], [ %489, %495 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #25
  br label %502

498:                                              ; preds = %413, %440, %443, %434, %435
  %499 = landingpad { ptr, i32 }
          cleanup
  br label %502

500:                                              ; preds = %425
  %501 = landingpad { ptr, i32 }
          cleanup
  br label %502

502:                                              ; preds = %498, %500, %496
  %503 = phi { ptr, i32 } [ %497, %496 ], [ %499, %498 ], [ %501, %500 ]
  %504 = load ptr, ptr %12, align 8, !tbaa !83
  %505 = icmp eq ptr %504, %191
  br i1 %505, label %506, label %509

506:                                              ; preds = %502
  %507 = load i64, ptr %192, align 8, !tbaa !41
  %508 = icmp ult i64 %507, 16
  call void @llvm.assume(i1 %508)
  br label %510

509:                                              ; preds = %502
  call void @_ZdlPv(ptr noundef %504) #26
  br label %510

510:                                              ; preds = %466, %468, %509, %506
  %511 = phi { ptr, i32 } [ %503, %506 ], [ %503, %509 ], [ %467, %466 ], [ %469, %468 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  %512 = load ptr, ptr %11, align 8, !tbaa !83
  %513 = icmp eq ptr %512, %189
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = load i64, ptr %190, align 8, !tbaa !41
  %516 = icmp ult i64 %515, 16
  call void @llvm.assume(i1 %516)
  br label %518

517:                                              ; preds = %510
  call void @_ZdlPv(ptr noundef %512) #26
  br label %518

518:                                              ; preds = %462, %464, %517, %514
  %519 = phi { ptr, i32 } [ %511, %514 ], [ %511, %517 ], [ %463, %462 ], [ %465, %464 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  br label %521

520:                                              ; preds = %221, %461, %182, %2
  ret void

521:                                              ; preds = %219, %518
  %522 = phi { ptr, i32 } [ %519, %518 ], [ %220, %219 ]
  resume { ptr, i32 } %522
}

; Function Attrs: cold inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr nocapture noundef nonnull readonly align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 27)
  %4 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = zext i32 %5 to i64
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6)
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.10, i64 noundef 11)
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %7, align 8, !tbaa !51
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  %17 = getelementptr inbounds %"class.std::ios_base", ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !98
  %19 = or i32 %18, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %16, i32 noundef %19)
  br label %23

20:                                               ; preds = %2
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #25
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %10, i64 noundef %21)
  br label %23

23:                                               ; preds = %12, %20
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.11, i64 noundef 13)
  %25 = load ptr, ptr %7, align 8, !tbaa !51
  %26 = getelementptr i8, ptr %25, i64 -24
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %28, i8 noundef signext 10)
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %29)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.12, i64 noundef 4)
  %33 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load ptr, ptr %31, align 8, !tbaa !51
  %38 = getelementptr i8, ptr %37, i64 -24
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr %31, i64 %39
  %41 = getelementptr inbounds %"class.std::ios_base", ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !98
  %43 = or i32 %42, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %40, i32 noundef %43)
  br label %47

44:                                               ; preds = %23
  %45 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #25
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %34, i64 noundef %45)
  br label %47

47:                                               ; preds = %36, %44
  %48 = load ptr, ptr %31, align 8, !tbaa !51
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %31, i64 %50
  %52 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %51, i8 noundef signext 10)
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %52)
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull @.str.13, i64 noundef 28)
  %56 = load ptr, ptr %54, align 8, !tbaa !51
  %57 = getelementptr i8, ptr %56, i64 -24
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %54, i64 %58
  %60 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %59, i8 noundef signext 10)
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %54, i8 noundef signext %60)
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61)
  %63 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull @.str.12, i64 noundef 4)
  %64 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load ptr, ptr %62, align 8, !tbaa !51
  %69 = getelementptr i8, ptr %68, i64 -24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds i8, ptr %62, i64 %70
  %72 = getelementptr inbounds %"class.std::ios_base", ptr %71, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !98
  %74 = or i32 %73, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %71, i32 noundef %74)
  br label %78

75:                                               ; preds = %47
  %76 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #25
  %77 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull %65, i64 noundef %76)
  br label %78

78:                                               ; preds = %67, %75
  %79 = load ptr, ptr %62, align 8, !tbaa !51
  %80 = getelementptr i8, ptr %79, i64 -24
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds i8, ptr %62, i64 %81
  %83 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %82, i8 noundef signext 10)
  %84 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %62, i8 noundef signext %83)
  %85 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %84)
  %86 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull @.str.14, i64 noundef 48)
  %87 = load ptr, ptr %85, align 8, !tbaa !51
  %88 = getelementptr i8, ptr %87, i64 -24
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds i8, ptr %85, i64 %89
  %91 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %90, i8 noundef signext 10)
  %92 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %85, i8 noundef signext %91)
  %93 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %92)
  %94 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull @.str.12, i64 noundef 4)
  %95 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %0, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %78
  %99 = load ptr, ptr %93, align 8, !tbaa !51
  %100 = getelementptr i8, ptr %99, i64 -24
  %101 = load i64, ptr %100, align 8
  %102 = getelementptr inbounds i8, ptr %93, i64 %101
  %103 = getelementptr inbounds %"class.std::ios_base", ptr %102, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !98
  %105 = or i32 %104, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %102, i32 noundef %105)
  br label %109

106:                                              ; preds = %78
  %107 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #25
  %108 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull %96, i64 noundef %107)
  br label %109

109:                                              ; preds = %98, %106
  %110 = load ptr, ptr %93, align 8, !tbaa !51
  %111 = getelementptr i8, ptr %110, i64 -24
  %112 = load i64, ptr %111, align 8
  %113 = getelementptr inbounds i8, ptr %93, i64 %112
  %114 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %113, i8 noundef signext 10)
  %115 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %93, i8 noundef signext %114)
  %116 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %115)
  %117 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @.str.15, i64 noundef 24)
  %118 = load ptr, ptr %116, align 8, !tbaa !51
  %119 = getelementptr i8, ptr %118, i64 -24
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr inbounds i8, ptr %116, i64 %120
  %122 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %121, i8 noundef signext 10)
  %123 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %116, i8 noundef signext %122)
  %124 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %123)
  %125 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !49, !range !64, !noundef !99
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %109
  %128 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %129 = load ptr, ptr %95, align 8, !tbaa !79
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load ptr, ptr %128, align 8, !tbaa !51
  %133 = getelementptr i8, ptr %132, i64 -24
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr inbounds i8, ptr %128, i64 %134
  %136 = getelementptr inbounds %"class.std::ios_base", ptr %135, i64 0, i32 5
  %137 = load i32, ptr %136, align 8, !tbaa !98
  %138 = or i32 %137, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %135, i32 noundef %138)
  br label %142

139:                                              ; preds = %127
  %140 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %129) #25
  %141 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %128, ptr noundef nonnull %129, i64 noundef %140)
  br label %142

142:                                              ; preds = %131, %139
  %143 = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %144

144:                                              ; preds = %142, %109
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !48 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 6)
  %4 = load ptr, ptr %1, align 8, !tbaa !51
  %5 = getelementptr i8, ptr %4, i64 -24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %7, i8 noundef signext 10)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %8)
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !annotation !63 {
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = load atomic i8, ptr @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11 acquire, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !100

6:                                                ; preds = %1
  %7 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  store ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 2), ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, align 8, !tbaa !80
  store i64 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 1), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 2), align 8, !tbaa !77
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, ptr nonnull @__dso_handle) #25
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11) #25
  br label %11

11:                                               ; preds = %9, %6, %1
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %12 unwind label %142

12:                                               ; preds = %11
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17, i64 noundef 56)
          to label %14 unwind label %144

14:                                               ; preds = %12
  %15 = load ptr, ptr %2, align 8, !tbaa !51
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  %19 = getelementptr inbounds %"class.std::basic_ios", ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = icmp eq ptr %20, null
  br i1 %21, label %56, label %22, !prof !72

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.std::ctype", ptr %20, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !73
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26, !prof !76

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::ctype", ptr %20, i64 0, i32 9, i64 10
  %28 = load i8, ptr %27, align 1, !tbaa !77
  br label %35

29:                                               ; preds = %22
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %20)
          to label %30 unwind label %144

30:                                               ; preds = %29
  %31 = load ptr, ptr %20, align 8, !tbaa !51
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef signext i8 %33(ptr noundef nonnull align 8 dereferenceable(570) %20, i8 noundef signext 10)
          to label %35 unwind label %144, !prof !78

35:                                               ; preds = %26, %30
  %36 = phi i8 [ %28, %26 ], [ %34, %30 ]
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %36)
          to label %38 unwind label %144

38:                                               ; preds = %35
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %40 unwind label %144

40:                                               ; preds = %38
  invoke void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %41 unwind label %144

41:                                               ; preds = %40
  %42 = load ptr, ptr %0, align 8, !tbaa !51
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %45 unwind label %144

45:                                               ; preds = %41
  invoke void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %46 unwind label %144

46:                                               ; preds = %45
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17, i64 noundef 56)
          to label %48 unwind label %144

48:                                               ; preds = %46
  %49 = load ptr, ptr %2, align 8, !tbaa !51
  %50 = getelementptr i8, ptr %49, i64 -24
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds i8, ptr %2, i64 %51
  %53 = getelementptr inbounds %"class.std::basic_ios", ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58, !prof !72

56:                                               ; preds = %48, %14
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %57 unwind label %144

57:                                               ; preds = %56
  unreachable

58:                                               ; preds = %48
  %59 = getelementptr inbounds %"class.std::ctype", ptr %54, i64 0, i32 8
  %60 = load i8, ptr %59, align 8, !tbaa !73
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62, !prof !76

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.std::ctype", ptr %54, i64 0, i32 9, i64 10
  %64 = load i8, ptr %63, align 1, !tbaa !77
  br label %71

65:                                               ; preds = %58
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %54)
          to label %66 unwind label %144

66:                                               ; preds = %65
  %67 = load ptr, ptr %54, align 8, !tbaa !51
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef signext i8 %69(ptr noundef nonnull align 8 dereferenceable(570) %54, i8 noundef signext 10)
          to label %71 unwind label %144, !prof !78

71:                                               ; preds = %62, %66
  %72 = phi i8 [ %64, %62 ], [ %70, %66 ]
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %72)
          to label %74 unwind label %144

74:                                               ; preds = %71
  %75 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %76 unwind label %144

76:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %77)
          to label %78 unwind label %146

78:                                               ; preds = %76
  %79 = load ptr, ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, align 8, !tbaa !83
  %80 = icmp eq ptr %79, getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 2)
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 1), align 8, !tbaa !41
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %3, align 8, !tbaa !83
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !41
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  switch i64 %90, label %94 [
    i64 0, label %95
    i64 1, label %92
  ]

92:                                               ; preds = %88
  %93 = load i8, ptr %85, align 1, !tbaa !77
  store i8 %93, ptr %79, align 1, !tbaa !77
  br label %95

94:                                               ; preds = %88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %85, i64 %90, i1 false)
  br label %95

95:                                               ; preds = %94, %92, %88
  %96 = load i64, ptr %89, align 8, !tbaa !41
  store i64 %96, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 1), align 8, !tbaa !41
  %97 = load ptr, ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, align 8, !tbaa !83
  %98 = getelementptr inbounds i8, ptr %97, i64 %96
  store i8 0, ptr %98, align 1, !tbaa !77
  br label %114

99:                                               ; preds = %84
  br i1 %80, label %100, label %103

100:                                              ; preds = %99
  %101 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 1), align 8, !tbaa !41
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  br label %105

103:                                              ; preds = %99
  %104 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 2), align 8, !tbaa !77
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi ptr [ null, %100 ], [ %79, %103 ]
  %107 = phi i64 [ undef, %100 ], [ %104, %103 ]
  store ptr %85, ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, align 8, !tbaa !83
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !41
  store i64 %109, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 1), align 8, !tbaa !41
  %110 = load i64, ptr %86, align 8, !tbaa !77
  store i64 %110, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, i64 0, i32 2), align 8, !tbaa !77
  %111 = icmp eq ptr %106, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  store ptr %106, ptr %3, align 8, !tbaa !83
  store i64 %107, ptr %86, align 8, !tbaa !77
  br label %114

113:                                              ; preds = %105
  store ptr %86, ptr %3, align 8, !tbaa !83
  br label %114

114:                                              ; preds = %95, %112, %113
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 0, ptr %115, align 8, !tbaa !41
  %116 = load ptr, ptr %3, align 8, !tbaa !83
  store i8 0, ptr %116, align 1, !tbaa !77
  %117 = load ptr, ptr %3, align 8, !tbaa !83
  %118 = icmp eq ptr %117, %86
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, ptr %115, align 8, !tbaa !41
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %114
  call void @_ZdlPv(ptr noundef %117) #26
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  %124 = load ptr, ptr @_ZZNK6dealii13ExceptionBase4whatEvE11descriptionB5cxx11, align 8, !tbaa !83
  %125 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %125, ptr %2, align 8, !tbaa !51
  %126 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %127 = getelementptr i8, ptr %125, i64 -24
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %2, i64 %128
  store ptr %126, ptr %129, align 8, !tbaa !51
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %77, align 8, !tbaa !51
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !83
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2, i32 2
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %138, !prof !101

134:                                              ; preds = %123
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !41
  %137 = icmp ult i64 %136, 16
  call void @llvm.assume(i1 %137)
  br label %139

138:                                              ; preds = %123
  call void @_ZdlPv(ptr noundef %131) #26
  br label %139

139:                                              ; preds = %134, %138
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %77, align 8, !tbaa !51
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %140) #25
  %141 = getelementptr inbounds i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %141) #25
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #25
  ret ptr %124

142:                                              ; preds = %11
  %143 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %168

144:                                              ; preds = %56, %66, %65, %30, %29, %74, %71, %38, %35, %46, %12, %45, %41, %40
  %145 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %148

146:                                              ; preds = %76
  %147 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi { ptr, i32 } [ %147, %146 ], [ %145, %144 ]
  %150 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %150, ptr %2, align 8, !tbaa !51
  %151 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %152 = getelementptr i8, ptr %150, i64 -24
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr inbounds i8, ptr %2, i64 %153
  store ptr %151, ptr %154, align 8, !tbaa !51
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %155, align 8, !tbaa !51
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !83
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2, i32 2
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %160, label %164, !prof !101

160:                                              ; preds = %148
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 2, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !41
  %163 = icmp ult i64 %162, 16
  call void @llvm.assume(i1 %163)
  br label %165

164:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %157) #26
  br label %165

165:                                              ; preds = %160, %164
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %155, align 8, !tbaa !51
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %2, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %166) #25
  %167 = getelementptr inbounds i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %167) #25
  br label %168

168:                                              ; preds = %165, %142
  %169 = phi { ptr, i32 } [ %149, %165 ], [ %143, %142 ]
  %170 = extractvalue { ptr, i32 } %169, 0
  %171 = extractvalue { ptr, i32 } %169, 1
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #25
  %172 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #25
  %173 = icmp eq i32 %171, %172
  %174 = call ptr @__cxa_begin_catch(ptr %170) #25
  br i1 %173, label %175, label %303

175:                                              ; preds = %168
  %176 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 60)
          to label %177 unwind label %362

177:                                              ; preds = %175
  %178 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !51
  %179 = getelementptr i8, ptr %178, i64 -24
  %180 = load i64, ptr %179, align 8
  %181 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %180
  %182 = getelementptr inbounds %"class.std::basic_ios", ptr %181, i64 0, i32 5
  %183 = load ptr, ptr %182, align 8, !tbaa !65
  %184 = icmp eq ptr %183, null
  br i1 %184, label %341, label %185, !prof !72

185:                                              ; preds = %177
  %186 = getelementptr inbounds %"class.std::ctype", ptr %183, i64 0, i32 8
  %187 = load i8, ptr %186, align 8, !tbaa !73
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %192, label %189, !prof !76

189:                                              ; preds = %185
  %190 = getelementptr inbounds %"class.std::ctype", ptr %183, i64 0, i32 9, i64 10
  %191 = load i8, ptr %190, align 1, !tbaa !77
  br label %198

192:                                              ; preds = %185
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %183)
          to label %193 unwind label %362

193:                                              ; preds = %192
  %194 = load ptr, ptr %183, align 8, !tbaa !51
  %195 = getelementptr inbounds ptr, ptr %194, i64 6
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef signext i8 %196(ptr noundef nonnull align 8 dereferenceable(570) %183, i8 noundef signext 10)
          to label %198 unwind label %362, !prof !78

198:                                              ; preds = %189, %193
  %199 = phi i8 [ %191, %189 ], [ %197, %193 ]
  %200 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %199)
          to label %201 unwind label %362

201:                                              ; preds = %198
  %202 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %203 unwind label %362

203:                                              ; preds = %201
  %204 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.20, i64 noundef 15)
          to label %205 unwind label %362

205:                                              ; preds = %203
  %206 = load ptr, ptr %202, align 8, !tbaa !51
  %207 = getelementptr i8, ptr %206, i64 -24
  %208 = load i64, ptr %207, align 8
  %209 = getelementptr inbounds i8, ptr %202, i64 %208
  %210 = getelementptr inbounds %"class.std::basic_ios", ptr %209, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !65
  %212 = icmp eq ptr %211, null
  br i1 %212, label %341, label %213, !prof !72

213:                                              ; preds = %205
  %214 = getelementptr inbounds %"class.std::ctype", ptr %211, i64 0, i32 8
  %215 = load i8, ptr %214, align 8, !tbaa !73
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217, !prof !76

217:                                              ; preds = %213
  %218 = getelementptr inbounds %"class.std::ctype", ptr %211, i64 0, i32 9, i64 10
  %219 = load i8, ptr %218, align 1, !tbaa !77
  br label %226

220:                                              ; preds = %213
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %211)
          to label %221 unwind label %362

221:                                              ; preds = %220
  %222 = load ptr, ptr %211, align 8, !tbaa !51
  %223 = getelementptr inbounds ptr, ptr %222, i64 6
  %224 = load ptr, ptr %223, align 8
  %225 = invoke noundef signext i8 %224(ptr noundef nonnull align 8 dereferenceable(570) %211, i8 noundef signext 10)
          to label %226 unwind label %362, !prof !78

226:                                              ; preds = %217, %221
  %227 = phi i8 [ %219, %217 ], [ %225, %221 ]
  %228 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %202, i8 noundef signext %227)
          to label %229 unwind label %362

229:                                              ; preds = %226
  %230 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %228)
          to label %231 unwind label %362

231:                                              ; preds = %229
  %232 = load ptr, ptr %174, align 8, !tbaa !51
  %233 = getelementptr inbounds ptr, ptr %232, i64 2
  %234 = load ptr, ptr %233, align 8
  %235 = call noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(8) %174) #25
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %245

237:                                              ; preds = %231
  %238 = load ptr, ptr %230, align 8, !tbaa !51
  %239 = getelementptr i8, ptr %238, i64 -24
  %240 = load i64, ptr %239, align 8
  %241 = getelementptr inbounds i8, ptr %230, i64 %240
  %242 = getelementptr inbounds %"class.std::ios_base", ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !98
  %244 = or i32 %243, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %241, i32 noundef %244)
          to label %248 unwind label %362

245:                                              ; preds = %231
  %246 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %235) #25
  %247 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef nonnull %235, i64 noundef %246)
          to label %248 unwind label %362

248:                                              ; preds = %237, %245
  %249 = load ptr, ptr %230, align 8, !tbaa !51
  %250 = getelementptr i8, ptr %249, i64 -24
  %251 = load i64, ptr %250, align 8
  %252 = getelementptr inbounds i8, ptr %230, i64 %251
  %253 = getelementptr inbounds %"class.std::basic_ios", ptr %252, i64 0, i32 5
  %254 = load ptr, ptr %253, align 8, !tbaa !65
  %255 = icmp eq ptr %254, null
  br i1 %255, label %341, label %256, !prof !72

256:                                              ; preds = %248
  %257 = getelementptr inbounds %"class.std::ctype", ptr %254, i64 0, i32 8
  %258 = load i8, ptr %257, align 8, !tbaa !73
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %263, label %260, !prof !76

260:                                              ; preds = %256
  %261 = getelementptr inbounds %"class.std::ctype", ptr %254, i64 0, i32 9, i64 10
  %262 = load i8, ptr %261, align 1, !tbaa !77
  br label %269

263:                                              ; preds = %256
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %254)
          to label %264 unwind label %362

264:                                              ; preds = %263
  %265 = load ptr, ptr %254, align 8, !tbaa !51
  %266 = getelementptr inbounds ptr, ptr %265, i64 6
  %267 = load ptr, ptr %266, align 8
  %268 = invoke noundef signext i8 %267(ptr noundef nonnull align 8 dereferenceable(570) %254, i8 noundef signext 10)
          to label %269 unwind label %362, !prof !78

269:                                              ; preds = %260, %264
  %270 = phi i8 [ %262, %260 ], [ %268, %264 ]
  %271 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %230, i8 noundef signext %270)
          to label %272 unwind label %362

272:                                              ; preds = %269
  %273 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %271)
          to label %274 unwind label %362

274:                                              ; preds = %272
  %275 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %273, ptr noundef nonnull @.str.19, i64 noundef 17)
          to label %276 unwind label %362

276:                                              ; preds = %274
  %277 = load ptr, ptr %273, align 8, !tbaa !51
  %278 = getelementptr i8, ptr %277, i64 -24
  %279 = load i64, ptr %278, align 8
  %280 = getelementptr inbounds i8, ptr %273, i64 %279
  %281 = getelementptr inbounds %"class.std::basic_ios", ptr %280, i64 0, i32 5
  %282 = load ptr, ptr %281, align 8, !tbaa !65
  %283 = icmp eq ptr %282, null
  br i1 %283, label %341, label %284, !prof !72

284:                                              ; preds = %276
  %285 = getelementptr inbounds %"class.std::ctype", ptr %282, i64 0, i32 8
  %286 = load i8, ptr %285, align 8, !tbaa !73
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288, !prof !76

288:                                              ; preds = %284
  %289 = getelementptr inbounds %"class.std::ctype", ptr %282, i64 0, i32 9, i64 10
  %290 = load i8, ptr %289, align 1, !tbaa !77
  br label %297

291:                                              ; preds = %284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %282)
          to label %292 unwind label %362

292:                                              ; preds = %291
  %293 = load ptr, ptr %282, align 8, !tbaa !51
  %294 = getelementptr inbounds ptr, ptr %293, i64 6
  %295 = load ptr, ptr %294, align 8
  %296 = invoke noundef signext i8 %295(ptr noundef nonnull align 8 dereferenceable(570) %282, i8 noundef signext 10)
          to label %297 unwind label %362, !prof !78

297:                                              ; preds = %288, %292
  %298 = phi i8 [ %290, %288 ], [ %296, %292 ]
  %299 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %273, i8 noundef signext %298)
          to label %300 unwind label %362

300:                                              ; preds = %297
  %301 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %299)
          to label %302 unwind label %362

302:                                              ; preds = %300
  call void @abort() #28
  unreachable

303:                                              ; preds = %168
  %304 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 60)
          to label %305 unwind label %362

305:                                              ; preds = %303
  %306 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !51
  %307 = getelementptr i8, ptr %306, i64 -24
  %308 = load i64, ptr %307, align 8
  %309 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %308
  %310 = getelementptr inbounds %"class.std::basic_ios", ptr %309, i64 0, i32 5
  %311 = load ptr, ptr %310, align 8, !tbaa !65
  %312 = icmp eq ptr %311, null
  br i1 %312, label %341, label %313, !prof !72

313:                                              ; preds = %305
  %314 = getelementptr inbounds %"class.std::ctype", ptr %311, i64 0, i32 8
  %315 = load i8, ptr %314, align 8, !tbaa !73
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %320, label %317, !prof !76

317:                                              ; preds = %313
  %318 = getelementptr inbounds %"class.std::ctype", ptr %311, i64 0, i32 9, i64 10
  %319 = load i8, ptr %318, align 1, !tbaa !77
  br label %326

320:                                              ; preds = %313
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %311)
          to label %321 unwind label %362

321:                                              ; preds = %320
  %322 = load ptr, ptr %311, align 8, !tbaa !51
  %323 = getelementptr inbounds ptr, ptr %322, i64 6
  %324 = load ptr, ptr %323, align 8
  %325 = invoke noundef signext i8 %324(ptr noundef nonnull align 8 dereferenceable(570) %311, i8 noundef signext 10)
          to label %326 unwind label %362, !prof !78

326:                                              ; preds = %317, %321
  %327 = phi i8 [ %319, %317 ], [ %325, %321 ]
  %328 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %327)
          to label %329 unwind label %362

329:                                              ; preds = %326
  %330 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %328)
          to label %331 unwind label %362

331:                                              ; preds = %329
  %332 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %330, ptr noundef nonnull @.str.19, i64 noundef 17)
          to label %333 unwind label %362

333:                                              ; preds = %331
  %334 = load ptr, ptr %330, align 8, !tbaa !51
  %335 = getelementptr i8, ptr %334, i64 -24
  %336 = load i64, ptr %335, align 8
  %337 = getelementptr inbounds i8, ptr %330, i64 %336
  %338 = getelementptr inbounds %"class.std::basic_ios", ptr %337, i64 0, i32 5
  %339 = load ptr, ptr %338, align 8, !tbaa !65
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %343, !prof !72

341:                                              ; preds = %333, %305, %276, %248, %205, %177
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %342 unwind label %362

342:                                              ; preds = %341
  unreachable

343:                                              ; preds = %333
  %344 = getelementptr inbounds %"class.std::ctype", ptr %339, i64 0, i32 8
  %345 = load i8, ptr %344, align 8, !tbaa !73
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %350, label %347, !prof !76

347:                                              ; preds = %343
  %348 = getelementptr inbounds %"class.std::ctype", ptr %339, i64 0, i32 9, i64 10
  %349 = load i8, ptr %348, align 1, !tbaa !77
  br label %356

350:                                              ; preds = %343
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %339)
          to label %351 unwind label %362

351:                                              ; preds = %350
  %352 = load ptr, ptr %339, align 8, !tbaa !51
  %353 = getelementptr inbounds ptr, ptr %352, i64 6
  %354 = load ptr, ptr %353, align 8
  %355 = invoke noundef signext i8 %354(ptr noundef nonnull align 8 dereferenceable(570) %339, i8 noundef signext 10)
          to label %356 unwind label %362, !prof !78

356:                                              ; preds = %347, %351
  %357 = phi i8 [ %349, %347 ], [ %355, %351 ]
  %358 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %330, i8 noundef signext %357)
          to label %359 unwind label %362

359:                                              ; preds = %356
  %360 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %358)
          to label %361 unwind label %362

361:                                              ; preds = %359
  call void @abort() #28
  unreachable

362:                                              ; preds = %341, %351, %350, %321, %320, %292, %291, %264, %263, %221, %220, %193, %192, %359, %356, %329, %326, %300, %297, %272, %269, %229, %226, %201, %198, %331, %303, %274, %245, %237, %203, %175
  %363 = landingpad { ptr, i32 }
          catch ptr null
  %364 = extractvalue { ptr, i32 } %363, 0
  call void @__clang_call_terminate(ptr %364) #28
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #10 align 2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #14

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat !prof !48 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions9internals18issue_error_assertEPKciS3_S3_S3_RNS_13ExceptionBaseE(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(60) %5) local_unnamed_addr #4 !prof !48 {
  %7 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %5, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %5, i64 0, i32 2
  store i32 %1, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %5, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %5, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.dealii::ExceptionBase", ptr %5, i64 0, i32 6
  store ptr %4, ptr %11, align 8, !tbaa !60
  %12 = load i32, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !102
  switch i32 %12, label %49 [
    i32 0, label %13
    i32 1, label %38
  ]

13:                                               ; preds = %6
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17, i64 noundef 56)
  %15 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !51
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  tail call void @_ZNK6dealii13ExceptionBase14print_exc_dataERSo(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
  %22 = load ptr, ptr %5, align 8, !tbaa !51
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
  tail call void @_ZNK6dealii13ExceptionBase17print_stack_traceERSo(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17, i64 noundef 56)
  %26 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !51
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %28
  %30 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %29, i8 noundef signext 10)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %30)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %33 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 0, i32 1), align 8, !tbaa !41
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %13
  %36 = load ptr, ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, align 8, !tbaa !83
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %36, i64 noundef %33)
  br label %40

38:                                               ; preds = %6
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.21, i64 noundef 67)
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi ptr [ @_ZSt4cerr, %38 ], [ %37, %35 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = getelementptr i8, ptr %42, i64 -24
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %45, i8 noundef signext 10)
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %41, i8 noundef signext %46)
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
  br label %49

49:                                               ; preds = %40, %6, %13
  %50 = load i32, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !102
  %51 = add i32 %50, 1
  store i32 %51, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !102
  store ptr %5, ptr @_ZN6dealii18deal_II_exceptions9internals14last_exceptionE, align 8, !tbaa !79
  %52 = tail call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #29
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = icmp ult i32 %51, 2
  br i1 %54, label %55, label %69

55:                                               ; preds = %53
  %56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 75)
  %57 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !51
  %58 = getelementptr i8, ptr %57, i64 -24
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %59
  %61 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %60, i8 noundef signext 10)
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %61)
  %63 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %62)
  br label %69

64:                                               ; preds = %49
  %65 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !49, !range !64, !noundef !99
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @abort() #28
  unreachable

68:                                               ; preds = %64
  store i32 %50, ptr @_ZN6dealii18deal_II_exceptions9internals20n_treated_exceptionsE, align 4, !tbaa !102
  br label %69

69:                                               ; preds = %53, %55, %68
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZSt18uncaught_exceptionv() local_unnamed_addr #17

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN6dealii18deal_II_exceptions9internals5abortEv() local_unnamed_addr #3 !prof !48 {
  %1 = load i8, ptr @_ZN6dealii18deal_II_exceptions18abort_on_exceptionE, align 1, !tbaa !49, !range !64, !noundef !99
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @abort() #28
  unreachable

4:                                                ; preds = %0
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #10 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #19

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_exceptions.cc() #21 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !40 !PGOFuncName !103 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  store ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 0, i32 2), ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, align 8, !tbaa !80
  store i64 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 0, i32 1), align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, i64 0, i32 2), align 8, !tbaa !77
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN6dealii18deal_II_exceptions24additional_assert_outputB5cxx11E, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(none) }
attributes #15 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN6dealii18deal_II_exceptions28set_additional_assert_outputEPKc, ptr @strlen, i64 1}
!36 = !{ptr @_ZN6dealii18deal_II_exceptions28set_additional_assert_outputEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_exceptions.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_exceptions.cc, ptr @__cxa_atexit, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !47, i64 8}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !47, i64 8, !45, i64 16}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"long", !45, i64 0}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"bool", !45, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !46, i64 0}
!53 = !{!54, !44, i64 8}
!54 = !{!"_ZTSN6dealii13ExceptionBaseE", !55, i64 0, !44, i64 8, !56, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !56, i64 56}
!55 = !{!"_ZTSSt9exception"}
!56 = !{!"int", !45, i64 0}
!57 = !{!54, !56, i64 16}
!58 = !{!54, !44, i64 24}
!59 = !{!54, !44, i64 32}
!60 = !{!54, !44, i64 40}
!61 = !{!54, !44, i64 48}
!62 = !{!54, !56, i64 56}
!63 = !{!"instr_prof_hash_mismatch"}
!64 = !{i8 0, i8 2}
!65 = !{!66, !44, i64 240}
!66 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !67, i64 0, !44, i64 216, !45, i64 224, !50, i64 225, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256}
!67 = !{!"_ZTSSt8ios_base", !47, i64 8, !47, i64 16, !68, i64 24, !69, i64 28, !69, i64 32, !44, i64 40, !70, i64 48, !45, i64 64, !56, i64 192, !44, i64 200, !71, i64 208}
!68 = !{!"_ZTSSt13_Ios_Fmtflags", !45, i64 0}
!69 = !{!"_ZTSSt12_Ios_Iostate", !45, i64 0}
!70 = !{!"_ZTSNSt8ios_base6_WordsE", !44, i64 0, !47, i64 8}
!71 = !{!"_ZTSSt6locale", !44, i64 0}
!72 = !{!"branch_weights", i32 0, i32 772}
!73 = !{!74, !45, i64 56}
!74 = !{!"_ZTSSt5ctypeIcE", !75, i64 0, !44, i64 16, !50, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !45, i64 56, !45, i64 57, !45, i64 313, !45, i64 569}
!75 = !{!"_ZTSNSt6locale5facetE", !56, i64 8}
!76 = !{!"branch_weights", i32 1, i32 771}
!77 = !{!45, !45, i64 0}
!78 = !{!"VP", i32 0, i64 0, i64 0, i64 0}
!79 = !{!44, !44, i64 0}
!80 = !{!43, !44, i64 0}
!81 = !{!47, !47, i64 0}
!82 = !{!"branch_weights", i32 316, i32 67445}
!83 = !{!42, !44, i64 0}
!84 = !{!"branch_weights", i32 24258, i32 14677, i32 28826}
!85 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 9, i64 0, i64 2, i64 0, i64 4, i64 0}
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !87, !88}
!90 = !{!67, !47, i64 16}
!91 = !{!"branch_weights", i32 0, i32 757}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!98 = !{!67, !69, i64 32}
!99 = !{}
!100 = !{!"branch_weights", i32 1, i32 1048575}
!101 = !{!"branch_weights", i32 2365, i32 319}
!102 = !{!56, !56, i64 0}
!103 = !{!"source/base/exceptions.cc;_GLOBAL__sub_I_exceptions.cc"}
