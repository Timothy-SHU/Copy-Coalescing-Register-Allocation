; ModuleID = 'simulator/patternmatcher.cc'
source_filename = "simulator/patternmatcher.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.PatternMatcher = type { %"class.std::vector", i8, %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl" }
%"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl" = type { %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.PatternMatcher::Elem" = type { i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i64, i64 }
%"struct.std::vector<PatternMatcher::Elem>::_Temporary_value" = type { ptr, %"union.std::vector<PatternMatcher::Elem>::_Temporary_value::_Storage" }
%"union.std::vector<PatternMatcher::Elem>::_Temporary_value::_Storage" = type { %"struct.PatternMatcher::Elem" }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.4 }
%union.anon.4 = type { ptr }

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_ = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_ = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@.str = private unnamed_addr constant [28 x i8] c"unmatched '}' in expression\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"?!\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SET(%s)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NEGSET(%s)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%ld..%ld\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"PatternMatcher: patternPrefixMatches() doesn't support case-insensitive match\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1

@_ZN14PatternMatcherC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PatternMatcherC2Ev
@_ZN14PatternMatcherC1EPKcbbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, i1), ptr @_ZN14PatternMatcherC2EPKcbbb
@_ZN14PatternMatcherD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PatternMatcherD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14PatternMatcherC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %3, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !tbaa !63
  store i8 0, ptr %3, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14PatternMatcherC2EPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %6 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %7, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %8, align 8, !tbaa !63
  store i8 0, ptr %7, align 8, !tbaa !66
  invoke void @_ZN14PatternMatcher10setPatternEPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %9 unwind label %10, !prof !68

9:                                                ; preds = %5
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = load ptr, ptr %6, align 8, !tbaa !69
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, ptr %8, align 8, !tbaa !63
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %12) #24
  br label %18

18:                                               ; preds = %14, %17
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14PatternMatcher10setPatternEPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.PatternMatcher::Elem", align 8
  %8 = alloca %"struct.PatternMatcher::Elem", align 8
  %9 = alloca %"struct.PatternMatcher::Elem", align 8
  %10 = zext i1 %4 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !70
  %12 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %40, label %15, !prof !68

15:                                               ; preds = %5, %36
  %16 = phi ptr [ %37, %36 ], [ %11, %5 ]
  %17 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 2, i32 2
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 2, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = icmp ult i64 %23, 16
  tail call void @llvm.assume(i1 %24)
  br label %26

25:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #24
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 1, i32 2
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !63
  %34 = icmp ult i64 %33, 16
  tail call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %26
  tail call void @_ZdlPv(ptr noundef %28) #24
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %16, i64 1
  %38 = icmp eq ptr %37, %13
  br i1 %38, label %39, label %15, !llvm.loop !73

39:                                               ; preds = %36
  store ptr %11, ptr %12, align 8, !tbaa !72
  br label %40

40:                                               ; preds = %5, %39
  %41 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  store i8 %10, ptr %41, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr %1, ptr %6, align 8, !tbaa !82
  %42 = load i8, ptr %1, align 1, !tbaa !66
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %131, label %44, !prof !83

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1
  %46 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 2
  %47 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 1
  %48 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 2
  %50 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 1
  %51 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  br label %52

52:                                               ; preds = %44, %127
  %53 = phi ptr [ %1, %44 ], [ %128, %127 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #25
  store ptr %46, ptr %45, align 8, !tbaa !58
  store i64 0, ptr %47, align 8, !tbaa !63
  store i8 0, ptr %46, align 8, !tbaa !66
  store ptr %49, ptr %48, align 8, !tbaa !58
  store i64 0, ptr %50, align 8, !tbaa !63
  store i8 0, ptr %49, align 8, !tbaa !66
  %54 = load i8, ptr %53, align 1, !tbaa !66
  switch i8 %54, label %103 [
    i8 63, label %55
    i8 91, label %58
    i8 123, label %87
    i8 42, label %95
  ], !prof !84

55:                                               ; preds = %52
  %56 = select i1 %2, i32 2, i32 1
  store i32 %56, ptr %7, align 8, !tbaa !85
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %57, ptr %6, align 8, !tbaa !82
  br label %104

58:                                               ; preds = %52
  %59 = load ptr, ptr %0, align 8, !tbaa !82
  %60 = load ptr, ptr %12, align 8, !tbaa !82
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %103, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %60, i64 -1
  %64 = load i32, ptr %63, align 8, !tbaa !85
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 3
  %68 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 4
  %69 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 93, ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %68)
  br i1 %69, label %86, label %103

70:                                               ; preds = %103, %112, %108, %94
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = load ptr, ptr %48, align 8, !tbaa !69
  %73 = icmp eq ptr %72, %49
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, ptr %50, align 8, !tbaa !63
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  br label %78

77:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %72) #24
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr %45, align 8, !tbaa !69
  %80 = icmp eq ptr %79, %46
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, ptr %47, align 8, !tbaa !63
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %79) #24
  br label %85

85:                                               ; preds = %81, %84
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #25
  br label %235

86:                                               ; preds = %66
  store i32 5, ptr %7, align 8, !tbaa !85
  br label %104

87:                                               ; preds = %52
  %88 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 3
  %89 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 4
  %90 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 125, ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %89)
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  store i32 5, ptr %7, align 8, !tbaa !85
  %92 = load ptr, ptr %6, align 8, !tbaa !82
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %93, ptr %6, align 8, !tbaa !82
  br label %104

94:                                               ; preds = %87
  invoke void @_ZN14PatternMatcher8parseSetERPKcRNS_4ElemE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %104 unwind label %70

95:                                               ; preds = %52
  %96 = getelementptr inbounds i8, ptr %53, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !66
  %98 = icmp eq i8 %97, 42
  br i1 %98, label %99, label %101, !prof !88

99:                                               ; preds = %95
  store i32 6, ptr %7, align 8, !tbaa !85
  %100 = getelementptr inbounds i8, ptr %53, i64 2
  store ptr %100, ptr %6, align 8, !tbaa !82
  br label %104

101:                                              ; preds = %95
  %102 = select i1 %2, i32 7, i32 6
  store i32 %102, ptr %7, align 8, !tbaa !85
  store ptr %96, ptr %6, align 8, !tbaa !82
  br label %104

103:                                              ; preds = %58, %62, %66, %52
  invoke void @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %104 unwind label %70, !prof !89

104:                                              ; preds = %103, %94, %99, %101, %91, %86, %55
  %105 = load ptr, ptr %12, align 8, !tbaa !82
  %106 = load ptr, ptr %51, align 8, !tbaa !90
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %112, label %108, !prof !91

108:                                              ; preds = %104
  invoke void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %105, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %109 unwind label %70

109:                                              ; preds = %108
  %110 = load ptr, ptr %12, align 8, !tbaa !72
  %111 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %110, i64 1
  store ptr %111, ptr %12, align 8, !tbaa !72
  br label %113

112:                                              ; preds = %104
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %105, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %113 unwind label %70

113:                                              ; preds = %109, %112
  %114 = load ptr, ptr %48, align 8, !tbaa !69
  %115 = icmp eq ptr %114, %49
  br i1 %115, label %116, label %119, !prof !92

116:                                              ; preds = %113
  %117 = load i64, ptr %50, align 8, !tbaa !63
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br label %120

119:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %114) #24
  br label %120

120:                                              ; preds = %119, %116
  %121 = load ptr, ptr %45, align 8, !tbaa !69
  %122 = icmp eq ptr %121, %46
  br i1 %122, label %123, label %126, !prof !93

123:                                              ; preds = %120
  %124 = load i64, ptr %47, align 8, !tbaa !63
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %127

126:                                              ; preds = %120
  call void @_ZdlPv(ptr noundef %121) #24
  br label %127

127:                                              ; preds = %123, %126
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #25
  %128 = load ptr, ptr %6, align 8, !tbaa !82
  %129 = load i8, ptr %128, align 1, !tbaa !66
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %52, !prof !94, !llvm.loop !95

131:                                              ; preds = %127, %40
  br i1 %3, label %188, label %132, !prof !68

132:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #25
  %133 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1
  %134 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1, i32 2
  store ptr %134, ptr %133, align 8, !tbaa !58
  %135 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1, i32 1
  store i64 0, ptr %135, align 8, !tbaa !63
  store i8 0, ptr %134, align 8, !tbaa !66
  %136 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2
  %137 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2, i32 2
  store ptr %137, ptr %136, align 8, !tbaa !58
  %138 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2, i32 1
  store i64 0, ptr %138, align 8, !tbaa !63
  store i8 0, ptr %137, align 8, !tbaa !66
  store i32 6, ptr %8, align 8, !tbaa !85
  %139 = load ptr, ptr %0, align 8, !tbaa !82
  %140 = load ptr, ptr %12, align 8, !tbaa !82
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %132
  %143 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %140, i64 -1
  %144 = load i32, ptr %143, align 8, !tbaa !85
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %149, label %146

146:                                              ; preds = %142, %132
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %149 unwind label %147

147:                                              ; preds = %146
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %172

149:                                              ; preds = %146, %142
  %150 = load ptr, ptr %0, align 8, !tbaa !82
  %151 = load i32, ptr %150, align 8, !tbaa !85
  %152 = icmp eq i32 %151, 6
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = invoke ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %150, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %157 unwind label %155

155:                                              ; preds = %153
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %172

157:                                              ; preds = %153, %149
  %158 = load ptr, ptr %136, align 8, !tbaa !69
  %159 = icmp eq ptr %158, %137
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, ptr %138, align 8, !tbaa !63
  %162 = icmp ult i64 %161, 16
  call void @llvm.assume(i1 %162)
  br label %164

163:                                              ; preds = %157
  call void @_ZdlPv(ptr noundef %158) #24
  br label %164

164:                                              ; preds = %163, %160
  %165 = load ptr, ptr %133, align 8, !tbaa !69
  %166 = icmp eq ptr %165, %134
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, ptr %135, align 8, !tbaa !63
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %165) #24
  br label %171

171:                                              ; preds = %167, %170
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #25
  br label %188

172:                                              ; preds = %155, %147
  %173 = phi { ptr, i32 } [ %156, %155 ], [ %148, %147 ]
  %174 = load ptr, ptr %136, align 8, !tbaa !69
  %175 = icmp eq ptr %174, %137
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i64, ptr %138, align 8, !tbaa !63
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %180

179:                                              ; preds = %172
  call void @_ZdlPv(ptr noundef %174) #24
  br label %180

180:                                              ; preds = %179, %176
  %181 = load ptr, ptr %133, align 8, !tbaa !69
  %182 = icmp eq ptr %181, %134
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64, ptr %135, align 8, !tbaa !63
  %185 = icmp ult i64 %184, 16
  call void @llvm.assume(i1 %185)
  br label %187

186:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %181) #24
  br label %187

187:                                              ; preds = %183, %186
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #25
  br label %235

188:                                              ; preds = %171, %131
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %9) #25
  %189 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 1
  %190 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 1, i32 2
  store ptr %190, ptr %189, align 8, !tbaa !58
  %191 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 1, i32 1
  store i64 0, ptr %191, align 8, !tbaa !63
  store i8 0, ptr %190, align 8, !tbaa !66
  %192 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 2
  %193 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 2, i32 2
  store ptr %193, ptr %192, align 8, !tbaa !58
  %194 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 2, i32 1
  store i64 0, ptr %194, align 8, !tbaa !63
  store i8 0, ptr %193, align 8, !tbaa !66
  store i32 8, ptr %9, align 8, !tbaa !85
  %195 = load ptr, ptr %12, align 8, !tbaa !82
  %196 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !90
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %203, label %199, !prof !91

199:                                              ; preds = %188
  invoke void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %195, ptr noundef nonnull align 8 dereferenceable(88) %9)
          to label %200 unwind label %219

200:                                              ; preds = %199
  %201 = load ptr, ptr %12, align 8, !tbaa !72
  %202 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %201, i64 1
  store ptr %202, ptr %12, align 8, !tbaa !72
  br label %204

203:                                              ; preds = %188
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %195, ptr noundef nonnull align 8 dereferenceable(88) %9)
          to label %204 unwind label %219

204:                                              ; preds = %200, %203
  %205 = load ptr, ptr %192, align 8, !tbaa !69
  %206 = icmp eq ptr %205, %193
  br i1 %206, label %207, label %210, !prof !68

207:                                              ; preds = %204
  %208 = load i64, ptr %194, align 8, !tbaa !63
  %209 = icmp ult i64 %208, 16
  call void @llvm.assume(i1 %209)
  br label %211

210:                                              ; preds = %204
  call void @_ZdlPv(ptr noundef %205) #24
  br label %211

211:                                              ; preds = %210, %207
  %212 = load ptr, ptr %189, align 8, !tbaa !69
  %213 = icmp eq ptr %212, %190
  br i1 %213, label %214, label %217, !prof !68

214:                                              ; preds = %211
  %215 = load i64, ptr %191, align 8, !tbaa !63
  %216 = icmp ult i64 %215, 16
  call void @llvm.assume(i1 %216)
  br label %218

217:                                              ; preds = %211
  call void @_ZdlPv(ptr noundef %212) #24
  br label %218

218:                                              ; preds = %214, %217
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret void

219:                                              ; preds = %203, %199
  %220 = landingpad { ptr, i32 }
          cleanup
  %221 = load ptr, ptr %192, align 8, !tbaa !69
  %222 = icmp eq ptr %221, %193
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i64, ptr %194, align 8, !tbaa !63
  %225 = icmp ult i64 %224, 16
  call void @llvm.assume(i1 %225)
  br label %227

226:                                              ; preds = %219
  call void @_ZdlPv(ptr noundef %221) #24
  br label %227

227:                                              ; preds = %226, %223
  %228 = load ptr, ptr %189, align 8, !tbaa !69
  %229 = icmp eq ptr %228, %190
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i64, ptr %191, align 8, !tbaa !63
  %232 = icmp ult i64 %231, 16
  call void @llvm.assume(i1 %232)
  br label %234

233:                                              ; preds = %227
  call void @_ZdlPv(ptr noundef %228) #24
  br label %234

234:                                              ; preds = %230, %233
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #25
  br label %235

235:                                              ; preds = %234, %187, %85
  %236 = phi { ptr, i32 } [ %71, %85 ], [ %220, %234 ], [ %173, %187 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  resume { ptr, i32 } %236
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %30, label %6, !prof !96

6:                                                ; preds = %1, %27
  %7 = phi ptr [ %28, %27 ], [ %2, %1 ]
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !97

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #24
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26, !prof !97

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !63
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #24
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 1
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %6, !prof !98, !llvm.loop !73

30:                                               ; preds = %27, %1
  %31 = load ptr, ptr %0, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !99

33:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %31) #24
  br label %34

34:                                               ; preds = %30, %33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14PatternMatcherD2Ev(ptr noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !101

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %11

11:                                               ; preds = %6, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !70
  %13 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %40, label %16, !prof !96

16:                                               ; preds = %11, %37
  %17 = phi ptr [ %38, %37 ], [ %12, %11 ]
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 2, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26, !prof !97

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !63
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %19) #24
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 1, i32 2
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %36, !prof !97

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 0, i32 1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !63
  %35 = icmp ult i64 %34, 16
  tail call void @llvm.assume(i1 %35)
  br label %37

36:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %29) #24
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 1
  %39 = icmp eq ptr %38, %14
  br i1 %39, label %40, label %16, !prof !98, !llvm.loop !73

40:                                               ; preds = %37, %11
  %41 = load ptr, ptr %0, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !99

43:                                               ; preds = %40
  tail call void @_ZdlPv(ptr noundef %41) #24
  br label %44

44:                                               ; preds = %40, %43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #4 align 2 !prof !102 {
  store i64 -1, ptr %4, align 8, !tbaa !103
  store i64 -1, ptr %3, align 8, !tbaa !103
  %6 = load ptr, ptr %1, align 8, !tbaa !82
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !66
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -48
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %21, !prof !104

12:                                               ; preds = %5
  %13 = tail call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #25
  store i64 %13, ptr %3, align 8, !tbaa !103
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %7, %12 ], [ %20, %14 ]
  %16 = load i8, ptr %15, align 1, !tbaa !66
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, -48
  %19 = icmp ult i32 %18, 10
  %20 = getelementptr inbounds i8, ptr %15, i64 1
  br i1 %19, label %14, label %21, !prof !105, !llvm.loop !106

21:                                               ; preds = %14, %5
  %22 = phi ptr [ %7, %5 ], [ %15, %14 ]
  %23 = load i8, ptr %22, align 1, !tbaa !66
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %49, !prof !107

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !66
  %28 = icmp eq i8 %27, 46
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %22, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !66
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = tail call i64 @strtol(ptr nocapture noundef nonnull %30, ptr noundef null, i32 noundef 10) #25
  store i64 %36, ptr %4, align 8, !tbaa !103
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %30, %35 ], [ %43, %37 ]
  %39 = load i8, ptr %38, align 1, !tbaa !66
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  br i1 %42, label %37, label %44, !llvm.loop !108

44:                                               ; preds = %37, %29
  %45 = phi ptr [ %30, %29 ], [ %38, %37 ]
  %46 = load i8, ptr %45, align 1, !tbaa !66
  %47 = icmp eq i8 %46, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %45, ptr %1, align 8, !tbaa !82
  br label %49

49:                                               ; preds = %44, %21, %25, %48
  %50 = phi i1 [ true, %48 ], [ false, %25 ], [ false, %21 ], [ false, %44 ]
  ret i1 %50
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i32 0, ptr %2, align 8, !tbaa !85
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 2
  br label %9

9:                                                ; preds = %41, %3
  %10 = load ptr, ptr %1, align 8, !tbaa !82
  %11 = load i8, ptr %10, align 1, !tbaa !66
  switch i8 %11, label %12 [
    i8 0, label %45
    i8 63, label %45
    i8 123, label %45
    i8 42, label %45
  ], !prof !110

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %13 = icmp eq i8 %11, 92
  br i1 %13, label %14, label %18, !prof !111

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %16, ptr %1, align 8, !tbaa !82
  %17 = load i8, ptr %16, align 1, !tbaa !66
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext %17)
  br label %35

18:                                               ; preds = %12
  %19 = load i64, ptr %7, align 8, !tbaa !63
  %20 = add i64 %19, 1
  %21 = load ptr, ptr %6, align 8, !tbaa !69
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %25, !prof !112

23:                                               ; preds = %18
  %24 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %24)
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i64, ptr %8, align 8
  %27 = select i1 %22, i64 15, i64 %26, !prof !112
  %28 = icmp ugt i64 %20, %27
  br i1 %28, label %29, label %30, !prof !113

29:                                               ; preds = %25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %19, i64 noundef 0, ptr noundef null, i64 noundef 1)
  br label %30

30:                                               ; preds = %25, %29
  %31 = load ptr, ptr %6, align 8, !tbaa !69
  %32 = getelementptr inbounds i8, ptr %31, i64 %19
  store i8 %11, ptr %32, align 1, !tbaa !66
  store i64 %20, ptr %7, align 8, !tbaa !63
  %33 = load ptr, ptr %6, align 8, !tbaa !69
  %34 = getelementptr inbounds i8, ptr %33, i64 %20
  store i8 0, ptr %34, align 1, !tbaa !66
  br label %35

35:                                               ; preds = %30, %14
  %36 = load ptr, ptr %1, align 8, !tbaa !82
  %37 = load i8, ptr %36, align 1, !tbaa !66
  %38 = icmp eq i8 %37, 91
  br i1 %38, label %39, label %41, !prof !114

39:                                               ; preds = %35
  store ptr %36, ptr %5, align 8, !tbaa !82
  %40 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 93, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %40, label %44, label %41, !prof !107

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %1, align 8, !tbaa !82
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %43, ptr %1, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %9

44:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %45

45:                                               ; preds = %9, %9, %9, %9, %44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14PatternMatcher8parseSetERPKcRNS_4ElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca [3 x i8], align 1
  %5 = load ptr, ptr %1, align 8, !tbaa !82
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !82
  store i32 3, ptr %2, align 8, !tbaa !85
  %7 = load i8, ptr %6, align 1, !tbaa !66
  %8 = icmp eq i8 %7, 94
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  store i32 4, ptr %2, align 8, !tbaa !85
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %10, ptr %1, align 8, !tbaa !82
  br label %11

11:                                               ; preds = %9, %3
  %12 = load ptr, ptr %1, align 8, !tbaa !82
  %13 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  %14 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %15 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %16 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2
  br label %19

19:                                               ; preds = %49, %11
  %20 = load ptr, ptr %1, align 8, !tbaa !82
  %21 = load i8, ptr %20, align 1, !tbaa !66
  switch i8 %21, label %24 [
    i8 125, label %22
    i8 0, label %53
  ]

22:                                               ; preds = %19
  %23 = icmp eq ptr %20, %12
  br i1 %23, label %24, label %51

24:                                               ; preds = %19, %22
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #25
  store i8 0, ptr %13, align 1, !tbaa !66
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !66
  %27 = icmp eq i8 %26, 45
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %20, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !66
  switch i8 %30, label %31 [
    i8 0, label %34
    i8 125, label %34
  ]

31:                                               ; preds = %28
  %32 = load i8, ptr %20, align 1, !tbaa !66
  store i8 %32, ptr %4, align 1, !tbaa !66
  store i8 %30, ptr %15, align 1, !tbaa !66
  %33 = getelementptr inbounds i8, ptr %20, i64 3
  br label %36

34:                                               ; preds = %28, %28, %24
  %35 = load i8, ptr %20, align 1, !tbaa !66
  store i8 %35, ptr %14, align 1, !tbaa !66
  store i8 %35, ptr %4, align 1, !tbaa !66
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %25, %34 ], [ %33, %31 ]
  store ptr %37, ptr %1, align 8, !tbaa !82
  %38 = load i8, ptr %16, align 8, !tbaa !76, !range !115, !noundef !116
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8, ptr %4, align 1, !tbaa !66
  %42 = zext i8 %41 to i32
  %43 = call i32 @toupper(i32 noundef %42) #26
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %4, align 1, !tbaa !66
  %45 = load i8, ptr %17, align 1, !tbaa !66
  %46 = zext i8 %45 to i32
  %47 = call i32 @toupper(i32 noundef %46) #26
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %17, align 1, !tbaa !66
  br label %49

49:                                               ; preds = %40, %36
  %50 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #25
  br label %19, !llvm.loop !117

51:                                               ; preds = %22
  %52 = icmp eq i8 %21, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %19, %51
  %54 = call ptr @__cxa_allocate_exception(i64 48) #25
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str)
          to label %55 unwind label %56

55:                                               ; preds = %53
  call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #27
  unreachable

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %54) #25
  resume { ptr, i32 } %57

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %59, ptr %1, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #1 comdat align 2 !prof !57 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %2
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !72
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !72
  br label %12

11:                                               ; preds = %2
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !82
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %65, label %14

14:                                               ; preds = %3
  %15 = icmp eq ptr %10, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %17 = load ptr, ptr %9, align 8, !tbaa !72
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %17, i64 1
  store ptr %18, ptr %9, align 8, !tbaa !72
  br label %67

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %5, i64 %8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !118
  %21 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1
  store i8 0, ptr %21, align 8, !tbaa !66
  call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(88) %2)
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %20, ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %22 unwind label %43

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !63
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %32

31:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %24) #24
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1, i32 2
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !63
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %34) #24
  br label %42

42:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #25
  br label %67

43:                                               ; preds = %19
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2, i32 2
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 2, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !63
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %46) #24
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1, i32 2
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %4, i64 0, i32 1, i32 0, i32 1, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !63
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %56) #24
  br label %64

64:                                               ; preds = %59, %63
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #25
  resume { ptr, i32 } %44

65:                                               ; preds = %3
  %66 = getelementptr inbounds i8, ptr %5, i64 %8
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %66, ptr noundef nonnull align 8 dereferenceable(88) %2)
  br label %67

67:                                               ; preds = %16, %42, %65
  %68 = load ptr, ptr %0, align 8, !tbaa !70
  %69 = getelementptr inbounds i8, ptr %68, i64 %8
  ret ptr %69
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !120
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14PatternMatcher4dumpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 88
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %16 = sext i32 %1 to i64
  br label %18

17:                                               ; preds = %57, %2
  ret void

18:                                               ; preds = %13, %57
  %19 = phi i64 [ %16, %13 ], [ %59, %57 ]
  %20 = phi ptr [ %6, %13 ], [ %61, %57 ]
  %21 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19
  %22 = load i32, ptr %21, align 8, !tbaa !85
  switch i32 %22, label %57 [
    i32 0, label %23
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
    i32 4, label %43
    i32 5, label %47
    i32 6, label %53
    i32 7, label %55
  ]

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %24 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %25)
  %26 = load ptr, ptr %3, align 8, !tbaa !69
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %26)
  %28 = load ptr, ptr %3, align 8, !tbaa !69
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, ptr %15, align 8, !tbaa !63
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %34

33:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %28) #24
  br label %34

34:                                               ; preds = %30, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %57

35:                                               ; preds = %18
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %57

37:                                               ; preds = %18
  %38 = call i32 @putchar(i32 63)
  br label %57

39:                                               ; preds = %18
  %40 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %41)
  br label %57

43:                                               ; preds = %18
  %44 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %45)
  br label %57

47:                                               ; preds = %18
  %48 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !122
  %50 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %20, i64 %19, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !123
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %49, i64 noundef %51)
  br label %57

53:                                               ; preds = %18
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %57

55:                                               ; preds = %18
  %56 = call i32 @putchar(i32 42)
  br label %57

57:                                               ; preds = %18, %55, %53, %47, %43, %39, %37, %35, %34
  %58 = call i32 @putchar(i32 32)
  %59 = add nsw i64 %19, 1
  %60 = load ptr, ptr %4, align 8, !tbaa !72
  %61 = load ptr, ptr %0, align 8, !tbaa !70
  %62 = ptrtoint ptr %60 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 88
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = icmp slt i64 %59, %67
  br i1 %68, label %18, label %17, !llvm.loop !124
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7isInSetEcPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i8 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 align 2 !prof !57 {
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !76, !range !115, !noundef !116
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext i8 %1 to i32
  %9 = tail call i32 @toupper(i32 noundef %8) #26
  %10 = trunc i32 %9 to i8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i8 [ %1, %3 ], [ %10, %7 ]
  %13 = load i8, ptr %2, align 1, !tbaa !66
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %24
  %16 = phi i1 [ %27, %24 ], [ %14, %11 ]
  %17 = phi i8 [ %26, %24 ], [ %13, %11 ]
  %18 = phi ptr [ %25, %24 ], [ %2, %11 ]
  %19 = icmp slt i8 %12, %17
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !66
  %23 = icmp sgt i8 %12, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds i8, ptr %18, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !66
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %15, label %28, !llvm.loop !125

28:                                               ; preds = %20, %24, %11
  %29 = phi i1 [ %14, %11 ], [ %16, %20 ], [ %27, %24 ]
  ret i1 %29
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  br label %5

5:                                                ; preds = %191, %4
  %6 = phi i32 [ %2, %4 ], [ %192, %191 ]
  %7 = phi ptr [ %1, %4 ], [ %193, %191 ]
  %8 = phi i1 [ undef, %4 ], [ %194, %191 ]
  %9 = sext i32 %6 to i64
  %10 = load ptr, ptr %0, align 8, !tbaa !70
  %11 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !85
  switch i32 %12, label %188 [
    i32 0, label %16
    i32 1, label %51
    i32 2, label %56
    i32 3, label %60
    i32 4, label %91
    i32 5, label %122
    i32 6, label %148
    i32 7, label %13
    i32 8, label %185
  ], !prof !127

13:                                               ; preds = %5
  %14 = add nsw i32 %6, 1
  %15 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %7, i32 noundef %14, i32 noundef %3)
  br i1 %15, label %191, label %179, !prof !128

16:                                               ; preds = %5
  %17 = icmp sgt i32 %3, 0
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 1
  %19 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !63
  %21 = trunc i64 %20 to i32
  br i1 %17, label %22, label %34, !prof !129

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %10 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 88
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %29, -2
  %31 = icmp eq i32 %6, %30
  %32 = select i1 %31, i32 %3, i32 0
  %33 = sub nsw i32 %21, %32
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i32 [ %21, %16 ], [ %33, %22 ]
  %36 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !76, !range !115, !noundef !116
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %18, align 8, !tbaa !69
  %40 = sext i32 %35 to i64
  br i1 %38, label %43, label %41, !prof !129

41:                                               ; preds = %34
  %42 = tail call i32 @strncmp(ptr noundef %7, ptr noundef %39, i64 noundef %40) #26
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @strncasecmp(ptr noundef %7, ptr noundef %39, i64 noundef %40) #26
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %191, !prof !130

48:                                               ; preds = %45
  %49 = sext i32 %35 to i64
  %50 = getelementptr inbounds i8, ptr %7, i64 %49
  br label %188

51:                                               ; preds = %5
  %52 = load i8, ptr %7, align 1, !tbaa !66
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %191, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %7, i64 1
  br label %188

56:                                               ; preds = %5
  %57 = load i8, ptr %7, align 1, !tbaa !66
  switch i8 %57, label %58 [
    i8 0, label %191
    i8 46, label %191
  ], !prof !131

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, ptr %7, i64 1
  br label %188

60:                                               ; preds = %5
  %61 = load i8, ptr %7, align 1, !tbaa !66
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %191, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = load i8, ptr %64, align 8, !tbaa !76, !range !115, !noundef !116
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = zext i8 %61 to i32
  %71 = tail call i32 @toupper(i32 noundef %70) #26
  %72 = trunc i32 %71 to i8
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i8 [ %61, %63 ], [ %72, %69 ]
  %75 = load i8, ptr %66, align 1, !tbaa !66
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %191, label %77

77:                                               ; preds = %73, %85
  %78 = phi i8 [ %87, %85 ], [ %75, %73 ]
  %79 = phi ptr [ %86, %85 ], [ %66, %73 ]
  %80 = icmp slt i8 %74, %78
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %79, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !66
  %84 = icmp sgt i8 %74, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds i8, ptr %79, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !66
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %191, label %77, !llvm.loop !125

89:                                               ; preds = %81
  %90 = getelementptr inbounds i8, ptr %7, i64 1
  br label %188

91:                                               ; preds = %5
  %92 = load i8, ptr %7, align 1, !tbaa !66
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %191, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %96 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !69
  %98 = load i8, ptr %95, align 8, !tbaa !76, !range !115, !noundef !116
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = zext i8 %92 to i32
  %102 = tail call i32 @toupper(i32 noundef %101) #26
  %103 = trunc i32 %102 to i8
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i8 [ %92, %94 ], [ %103, %100 ]
  %106 = load i8, ptr %97, align 1, !tbaa !66
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %104, %116
  %109 = phi i8 [ %118, %116 ], [ %106, %104 ]
  %110 = phi ptr [ %117, %116 ], [ %97, %104 ]
  %111 = icmp slt i8 %105, %109
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !66
  %115 = icmp sgt i8 %105, %114
  br i1 %115, label %116, label %191

116:                                              ; preds = %112, %108
  %117 = getelementptr inbounds i8, ptr %110, i64 2
  %118 = load i8, ptr %117, align 1, !tbaa !66
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %108, !llvm.loop !125

120:                                              ; preds = %116, %104
  %121 = getelementptr inbounds i8, ptr %7, i64 1
  br label %188

122:                                              ; preds = %5
  %123 = load i8, ptr %7, align 1, !tbaa !66
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %124, -48
  %126 = icmp ult i32 %125, 10
  br i1 %126, label %127, label %191

127:                                              ; preds = %122
  %128 = tail call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #25
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi ptr [ %7, %127 ], [ %135, %129 ]
  %131 = load i8, ptr %130, align 1, !tbaa !66
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -48
  %134 = icmp ult i32 %133, 10
  %135 = getelementptr inbounds i8, ptr %130, i64 1
  br i1 %134, label %129, label %136, !llvm.loop !132

136:                                              ; preds = %129
  %137 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 3
  %138 = load i64, ptr %137, align 8, !tbaa !122
  %139 = icmp sgt i64 %138, -1
  %140 = icmp slt i64 %128, %138
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %191, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %10, i64 %9, i32 4
  %144 = load i64, ptr %143, align 8, !tbaa !123
  %145 = icmp sgt i64 %144, -1
  %146 = icmp sgt i64 %128, %144
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %191, label %188

148:                                              ; preds = %5
  %149 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !72
  %151 = ptrtoint ptr %150 to i64
  %152 = ptrtoint ptr %10 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 88
  %155 = trunc i64 %154 to i32
  %156 = add nsw i32 %155, -2
  %157 = icmp eq i32 %6, %156
  br i1 %157, label %191, label %158, !prof !133

158:                                              ; preds = %148
  %159 = add nsw i32 %155, -3
  %160 = icmp eq i32 %6, %159
  br i1 %160, label %161, label %169, !prof !134

161:                                              ; preds = %158
  %162 = getelementptr %"struct.PatternMatcher::Elem", ptr %11, i64 1
  %163 = load i32, ptr %162, align 8, !tbaa !85
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169, !prof !135

165:                                              ; preds = %161
  %166 = getelementptr %"struct.PatternMatcher::Elem", ptr %11, i64 1, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !69
  %168 = tail call noundef zeroext i1 @_Z18opp_stringendswithPKcS0_(ptr noundef %7, ptr noundef %167)
  br label %191

169:                                              ; preds = %161, %158
  %170 = add nsw i32 %6, 1
  %171 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %7, i32 noundef %170, i32 noundef %3)
  br i1 %171, label %191, label %172, !prof !136

172:                                              ; preds = %169, %176
  %173 = phi ptr [ %177, %176 ], [ %7, %169 ]
  %174 = load i8, ptr %173, align 1, !tbaa !66
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %191, !prof !137

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %173, i64 1
  %178 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %177, i32 noundef %170, i32 noundef %3)
  br i1 %178, label %191, label %172, !prof !138, !llvm.loop !139

179:                                              ; preds = %13, %182
  %180 = phi ptr [ %183, %182 ], [ %7, %13 ]
  %181 = load i8, ptr %180, align 1, !tbaa !66
  switch i8 %181, label %182 [
    i8 0, label %191
    i8 46, label %191
  ], !prof !140

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %180, i64 1
  %184 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %183, i32 noundef %14, i32 noundef %3)
  br i1 %184, label %191, label %179, !prof !141, !llvm.loop !142

185:                                              ; preds = %5
  %186 = load i8, ptr %7, align 1, !tbaa !66
  %187 = icmp eq i8 %186, 0
  br label %191

188:                                              ; preds = %142, %5, %120, %89, %58, %54, %48
  %189 = phi ptr [ %7, %5 ], [ %121, %120 ], [ %90, %89 ], [ %59, %58 ], [ %55, %54 ], [ %50, %48 ], [ %130, %142 ]
  %190 = add nsw i32 %6, 1
  br label %191

191:                                              ; preds = %182, %179, %179, %176, %172, %112, %85, %13, %169, %73, %56, %148, %136, %142, %122, %91, %60, %56, %51, %45, %188, %185, %165
  %192 = phi i32 [ %190, %188 ], [ %6, %185 ], [ %6, %165 ], [ %6, %45 ], [ %6, %51 ], [ %6, %56 ], [ %6, %60 ], [ %6, %91 ], [ %6, %122 ], [ %6, %142 ], [ %6, %136 ], [ %6, %148 ], [ %6, %56 ], [ %6, %73 ], [ %6, %169 ], [ %6, %13 ], [ %6, %85 ], [ %6, %112 ], [ %6, %172 ], [ %6, %176 ], [ %6, %179 ], [ %6, %179 ], [ %6, %182 ]
  %193 = phi ptr [ %189, %188 ], [ %7, %185 ], [ %7, %165 ], [ %7, %45 ], [ %7, %51 ], [ %7, %56 ], [ %7, %60 ], [ %7, %91 ], [ %7, %122 ], [ %130, %142 ], [ %130, %136 ], [ %7, %148 ], [ %7, %56 ], [ %7, %73 ], [ %7, %169 ], [ %7, %13 ], [ %7, %85 ], [ %7, %112 ], [ %177, %176 ], [ %173, %172 ], [ %183, %182 ], [ %180, %179 ], [ %180, %179 ]
  %194 = phi i1 [ %8, %188 ], [ %187, %185 ], [ %168, %165 ], [ false, %45 ], [ false, %51 ], [ false, %56 ], [ false, %60 ], [ false, %91 ], [ false, %122 ], [ false, %142 ], [ false, %136 ], [ true, %148 ], [ false, %56 ], [ false, %73 ], [ true, %169 ], [ true, %13 ], [ false, %85 ], [ false, %112 ], [ %175, %172 ], [ %175, %176 ], [ true, %182 ], [ false, %179 ], [ false, %179 ]
  %195 = phi i1 [ true, %188 ], [ false, %185 ], [ false, %165 ], [ false, %45 ], [ false, %51 ], [ false, %56 ], [ false, %60 ], [ false, %91 ], [ false, %122 ], [ false, %142 ], [ false, %136 ], [ false, %148 ], [ false, %56 ], [ false, %73 ], [ false, %169 ], [ false, %13 ], [ false, %85 ], [ false, %112 ], [ false, %172 ], [ false, %176 ], [ false, %179 ], [ false, %179 ], [ false, %182 ]
  br i1 %195, label %5, label %196, !prof !143

196:                                              ; preds = %191
  ret i1 %194
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_Z18opp_stringendswithPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7matchesEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !144 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = load ptr, ptr %0, align 8, !tbaa !70
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 88
  %10 = icmp ult i64 %9, 2
  %11 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !range !115
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %10, i1 true, i1 %13, !prof !145
  br i1 %14, label %57, label %15, !prof !145

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %5, i64 %8
  %17 = getelementptr %"struct.PatternMatcher::Elem", ptr %16, i64 -2
  %18 = load i32, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %57, !prof !146

20:                                               ; preds = %15
  %21 = getelementptr %"struct.PatternMatcher::Elem", ptr %16, i64 -2, i32 1
  %22 = getelementptr %"struct.PatternMatcher::Elem", ptr %16, i64 -2, i32 1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %26 = trunc i64 %25 to i32
  %27 = icmp sgt i32 %24, 1
  %28 = icmp sgt i32 %26, 1
  %29 = select i1 %27, i1 %28, i1 false, !prof !147
  br i1 %29, label %30, label %57, !prof !147

30:                                               ; preds = %20
  %31 = add i64 %23, 4294967295
  %32 = and i64 %31, 4294967295
  %33 = icmp eq i64 %23, 0
  br i1 %33, label %34, label %35, !prof !148

34:                                               ; preds = %30
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.14, i64 noundef %32, i64 noundef %23) #27
  unreachable

35:                                               ; preds = %30
  %36 = add i64 %25, 4294967295
  %37 = and i64 %36, 4294967295
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !66
  %40 = load ptr, ptr %21, align 8, !tbaa !69
  %41 = getelementptr inbounds i8, ptr %40, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !66
  %43 = icmp eq i8 %39, %42
  br i1 %43, label %44, label %59, !prof !149

44:                                               ; preds = %35
  %45 = add i64 %23, 4294967294
  %46 = and i64 %45, 4294967295
  %47 = icmp ugt i64 %23, %46
  br i1 %47, label %49, label %48, !prof !150

48:                                               ; preds = %44
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.14, i64 noundef %46, i64 noundef %23) #27
  unreachable

49:                                               ; preds = %44
  %50 = add i64 %25, 4294967294
  %51 = and i64 %50, 4294967295
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !66
  %54 = getelementptr inbounds i8, ptr %40, i64 %46
  %55 = load i8, ptr %54, align 1, !tbaa !66
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %57, label %59, !prof !151

57:                                               ; preds = %20, %49, %15, %2
  %58 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %59

59:                                               ; preds = %35, %49, %57
  %60 = phi i1 [ %58, %57 ], [ false, %49 ], [ false, %35 ]
  ret i1 %60
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14PatternMatcher20patternPrefixMatchesEPKci(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !76, !range !115, !noundef !116
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #25
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.10)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #27
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #25
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load ptr, ptr %0, align 8, !tbaa !70
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 88
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %51, label %21

21:                                               ; preds = %12
  %22 = getelementptr i8, ptr %15, i64 %18
  %23 = getelementptr %"struct.PatternMatcher::Elem", ptr %22, i64 -2
  %24 = load i32, ptr %23, align 8, !tbaa !85
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = getelementptr %"struct.PatternMatcher::Elem", ptr %22, i64 -2, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  %31 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %30) #26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %26
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #26
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  %37 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !63
  %39 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #25
  %40 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef %38, ptr noundef nonnull %35, i64 noundef %39)
  %41 = getelementptr %"struct.PatternMatcher::Elem", ptr %22, i64 -2, i32 1, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !63
  %43 = ptrtoint ptr %35 to i64
  %44 = ptrtoint ptr %28 to i64
  %45 = sub i64 %44, %43
  %46 = add i64 %45, %42
  %47 = trunc i64 %46 to i32
  %48 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef %47)
  %49 = load ptr, ptr %36, align 8
  %50 = select i1 %48, ptr %49, ptr null
  br label %51

51:                                               ; preds = %33, %21, %26, %12
  %52 = phi ptr [ null, %12 ], [ null, %21 ], [ null, %26 ], [ %50, %33 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher17containsWildcardsEPKc(ptr noundef readonly %0) local_unnamed_addr #12 align 2 !prof !152 {
  %2 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 63) #26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16, !prof !153

4:                                                ; preds = %1
  %5 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 42) #26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16, !prof !154

7:                                                ; preds = %4
  %8 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !154

10:                                               ; preds = %7
  %11 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 123) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !154

13:                                               ; preds = %10
  %14 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.11) #26
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %13, %10, %7, %4, %1
  %17 = phi i1 [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %15, %13 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !120
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat !prof !57 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12, !prof !156

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 88
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 104811045873349725)
  %18 = select i1 %16, i64 104811045873349725, i64 %17, !prof !156
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 88
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !156

23:                                               ; preds = %12
  %24 = mul nuw nsw i64 %18, 88
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #29
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21
  invoke void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %29 unwind label %38, !prof !157

29:                                               ; preds = %26
  %30 = tail call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %6, ptr noundef %1, ptr noundef %27, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %31 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %30, i64 1
  %32 = tail call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %31, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %33 = icmp eq ptr %6, null
  br i1 %33, label %35, label %34, !prof !158

34:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %6) #24
  br label %35

35:                                               ; preds = %29, %34
  %36 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !70
  store ptr %32, ptr %4, align 8, !tbaa !72
  %37 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %18
  store ptr %37, ptr %36, align 8, !tbaa !90
  ret void

38:                                               ; preds = %26
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #25
  %42 = icmp eq ptr %27, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 2, i32 2
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 2, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !63
  %51 = icmp ult i64 %50, 16
  tail call void @llvm.assume(i1 %51)
  br label %53

52:                                               ; preds = %43
  tail call void @_ZdlPv(ptr noundef %45) #24
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !69
  %56 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 1, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %27, i64 %21, i32 1, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = icmp ult i64 %60, 16
  tail call void @llvm.assume(i1 %61)
  br label %65

62:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %55) #24
  br label %65

63:                                               ; preds = %67
  %64 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %68 unwind label %69

65:                                               ; preds = %62, %58
  br i1 %42, label %67, label %66

66:                                               ; preds = %38, %65
  tail call void @_ZdlPv(ptr noundef %27) #24
  br label %67

67:                                               ; preds = %66, %65
  invoke void @__cxa_rethrow() #27
          to label %72 unwind label %63

68:                                               ; preds = %63
  resume { ptr, i32 } %64

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  tail call void @__clang_call_terminate(ptr %71) #28
  unreachable

72:                                               ; preds = %67
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, ptr %2, align 8, !tbaa !85
  store i32 %6, ptr %1, align 8, !tbaa !85
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 2
  store ptr %9, ptr %7, align 8, !tbaa !58
  %10 = load ptr, ptr %8, align 8, !tbaa !69
  %11 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store i64 %12, ptr %5, align 8, !tbaa !103
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %18, !prof !160

14:                                               ; preds = %3
  %15 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
  store ptr %15, ptr %7, align 8, !tbaa !69
  %16 = load i64, ptr %5, align 8, !tbaa !103
  %17 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 2
  store i64 %16, ptr %17, align 8, !tbaa !66
  br label %18

18:                                               ; preds = %14, %3
  %19 = load ptr, ptr %7, align 8, !tbaa !69
  switch i64 %12, label %22 [
    i64 1, label %20
    i64 0, label %23
  ], !prof !161

20:                                               ; preds = %18
  %21 = load i8, ptr %10, align 1, !tbaa !66
  store i8 %21, ptr %19, align 1, !tbaa !66
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %10, i64 %12, i1 false), !prof !162
  br label %23

23:                                               ; preds = %18, %20, %22
  %24 = load i64, ptr %5, align 8, !tbaa !103
  %25 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !63
  %26 = load ptr, ptr %7, align 8, !tbaa !69
  %27 = getelementptr inbounds i8, ptr %26, i64 %24
  store i8 0, ptr %27, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  %29 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2
  %30 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2, i32 2
  store ptr %30, ptr %28, align 8, !tbaa !58
  %31 = load ptr, ptr %29, align 8, !tbaa !69
  %32 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %33, ptr %4, align 8, !tbaa !103
  %34 = icmp ugt i64 %33, 15
  br i1 %34, label %35, label %40, !prof !160

35:                                               ; preds = %23
  %36 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %37 unwind label %52

37:                                               ; preds = %35
  store ptr %36, ptr %28, align 8, !tbaa !69
  %38 = load i64, ptr %4, align 8, !tbaa !103
  %39 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2, i32 2
  store i64 %38, ptr %39, align 8, !tbaa !66
  br label %40

40:                                               ; preds = %37, %23
  %41 = load ptr, ptr %28, align 8, !tbaa !69
  switch i64 %33, label %44 [
    i64 1, label %42
    i64 0, label %45
  ], !prof !161

42:                                               ; preds = %40
  %43 = load i8, ptr %31, align 1, !tbaa !66
  store i8 %43, ptr %41, align 1, !tbaa !66
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %31, i64 %33, i1 false), !prof !162
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = load i64, ptr %4, align 8, !tbaa !103
  %47 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !63
  %48 = load ptr, ptr %28, align 8, !tbaa !69
  %49 = getelementptr inbounds i8, ptr %48, i64 %46
  store i8 0, ptr %49, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %50 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  %51 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false)
  ret void

52:                                               ; preds = %35
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = load ptr, ptr %7, align 8, !tbaa !69
  %55 = icmp eq ptr %54, %9
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !63
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %61

60:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %54) #24
  br label %61

61:                                               ; preds = %60, %56
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %63, label %6

6:                                                ; preds = %4, %59
  %7 = phi ptr [ %61, %59 ], [ %2, %4 ]
  %8 = phi ptr [ %60, %59 ], [ %0, %4 ]
  %9 = load i32, ptr %8, align 8, !tbaa !85
  store i32 %9, ptr %7, align 8, !tbaa !85
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 2
  store ptr %12, ptr %10, align 8, !tbaa !58
  %13 = load ptr, ptr %11, align 8, !tbaa !69
  %14 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %21, !prof !163

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  %20 = add nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %20, i1 false), !prof !164
  br label %23

21:                                               ; preds = %6
  store ptr %13, ptr %10, align 8, !tbaa !69
  %22 = load i64, ptr %14, align 8, !tbaa !66
  store i64 %22, ptr %12, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 1, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !63
  store ptr %14, ptr %11, align 8, !tbaa !69
  store i64 0, ptr %24, align 8, !tbaa !63
  store i8 0, ptr %14, align 1, !tbaa !66
  %27 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2
  %29 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 2
  store ptr %29, ptr %27, align 8, !tbaa !58
  %30 = load ptr, ptr %28, align 8, !tbaa !69
  %31 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38, !prof !163

33:                                               ; preds = %23
  %34 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !63
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false), !prof !165
  br label %40

38:                                               ; preds = %23
  store ptr %30, ptr %27, align 8, !tbaa !69
  %39 = load i64, ptr %31, align 8, !tbaa !66
  store i64 %39, ptr %29, align 8, !tbaa !66
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 2, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !63
  %43 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 2, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !63
  store ptr %31, ptr %28, align 8, !tbaa !69
  store i64 0, ptr %41, align 8, !tbaa !63
  store i8 0, ptr %31, align 1, !tbaa !66
  %44 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 3
  %45 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false)
  %46 = load ptr, ptr %28, align 8, !tbaa !69, !alias.scope !166, !noalias !169
  %47 = icmp eq ptr %46, %31
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, ptr %41, align 8, !tbaa !63, !alias.scope !166, !noalias !169
  %50 = icmp ult i64 %49, 16
  tail call void @llvm.assume(i1 %50)
  br label %52

51:                                               ; preds = %40
  tail call void @_ZdlPv(ptr noundef %46) #24
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %11, align 8, !tbaa !69, !alias.scope !166, !noalias !169
  %54 = icmp eq ptr %53, %14
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, ptr %24, align 8, !tbaa !63, !alias.scope !166, !noalias !169
  %57 = icmp ult i64 %56, 16
  tail call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %52
  tail call void @_ZdlPv(ptr noundef %53) #24
  br label %59

59:                                               ; preds = %58, %55
  %60 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 1
  %61 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 1
  %62 = icmp eq ptr %60, %1
  br i1 %62, label %63, label %6, !llvm.loop !171

63:                                               ; preds = %59, %4
  %64 = phi ptr [ %2, %4 ], [ %61, %59 ]
  ret ptr %64
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %4 = load i32, ptr %2, align 8, !tbaa !85
  store i32 %4, ptr %1, align 8, !tbaa !85
  %5 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 2
  store ptr %7, ptr %5, align 8, !tbaa !58
  %8 = load ptr, ptr %6, align 8, !tbaa !69
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16, !prof !163

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !63
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false), !prof !173
  br label %18

16:                                               ; preds = %3
  store ptr %8, ptr %5, align 8, !tbaa !69
  %17 = load i64, ptr %9, align 8, !tbaa !66
  store i64 %17, ptr %7, align 8, !tbaa !66
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !63
  %21 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !63
  store ptr %9, ptr %6, align 8, !tbaa !69
  store i64 0, ptr %19, align 8, !tbaa !63
  store i8 0, ptr %9, align 8, !tbaa !66
  %22 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2, i32 2
  store ptr %24, ptr %22, align 8, !tbaa !58
  %25 = load ptr, ptr %23, align 8, !tbaa !69
  %26 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2, i32 2
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %33, !prof !163

28:                                               ; preds = %18
  %29 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = icmp ult i64 %30, 16
  tail call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %24, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %32, i1 false), !prof !174
  br label %35

33:                                               ; preds = %18
  store ptr %25, ptr %22, align 8, !tbaa !69
  %34 = load i64, ptr %26, align 8, !tbaa !66
  store i64 %34, ptr %24, align 8, !tbaa !66
  br label %35

35:                                               ; preds = %28, %33
  %36 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !63
  store ptr %26, ptr %23, align 8, !tbaa !69
  store i64 0, ptr %36, align 8, !tbaa !63
  store i8 0, ptr %26, align 8, !tbaa !66
  %39 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  %40 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %5, i64 -1
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(88) %6) #25
  %7 = load ptr, ptr %4, align 8, !tbaa !72
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 1
  store ptr %8, ptr %4, align 8, !tbaa !72
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 -1
  %10 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %7)
  %11 = load i32, ptr %2, align 8, !tbaa !85
  store i32 %11, ptr %1, align 8, !tbaa !85
  %12 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13) #25
  %15 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2
  %17 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  %18 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  %19 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !57 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 88
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %25, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %13, i64 -1
  %15 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 -1
  %16 = load i32, ptr %14, align 8, !tbaa !85
  store i32 %16, ptr %15, align 8, !tbaa !85
  %17 = getelementptr %"struct.PatternMatcher::Elem", ptr %12, i64 -1, i32 1
  %18 = getelementptr %"struct.PatternMatcher::Elem", ptr %13, i64 -1, i32 1
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18) #25
  %20 = getelementptr %"struct.PatternMatcher::Elem", ptr %12, i64 -1, i32 2
  %21 = getelementptr %"struct.PatternMatcher::Elem", ptr %13, i64 -1, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21) #25
  %23 = getelementptr %"struct.PatternMatcher::Elem", ptr %12, i64 -1, i32 3
  %24 = getelementptr %"struct.PatternMatcher::Elem", ptr %13, i64 -1, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false)
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !175

27:                                               ; preds = %10, %3
  %28 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %28
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #1 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN14PatternMatcherC2EPKcbbb, ptr @_ZN14PatternMatcher10setPatternEPKcbbb, i64 39269}
!36 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, i64 39323}
!37 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, i64 78}
!38 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, i64 117823}
!39 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZdlPv, i64 4}
!40 = !{ptr @_ZN14PatternMatcherD2Ev, ptr @_ZdlPv, i64 39185}
!41 = !{ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, ptr @strtol, i64 10}
!42 = !{ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, i64 5}
!43 = !{ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, i64 16}
!44 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZN14PatternMatcher7doMatchEPKcii, i64 583521}
!45 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @strncmp, i64 1233668}
!46 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_Z18opp_stringendswithPKcS0_, i64 9844}
!47 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @strlen, i64 282842}
!48 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZN14PatternMatcher7doMatchEPKcii, i64 1070124}
!49 = !{ptr @_ZN14PatternMatcher17containsWildcardsEPKc, ptr @strchr, i64 402}
!50 = !{ptr @_ZN14PatternMatcher17containsWildcardsEPKc, ptr @strstr, i64 99}
!51 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_Znwm, i64 117823}
!52 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, i64 117823}
!53 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 235646}
!54 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZdlPv, i64 78554}
!55 = !{ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 167194}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !60, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !60, i64 0}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !65, i64 8, !61, i64 16}
!65 = !{!"long", !61, i64 0}
!66 = !{!61, !61, i64 0}
!67 = !{!"function_entry_count", i64 39269}
!68 = !{!"branch_weights", i32 39269, i32 0}
!69 = !{!64, !60, i64 0}
!70 = !{!71, !60, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!72 = !{!71, !60, i64 8}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!77, !81, i64 24}
!77 = !{!"_ZTS14PatternMatcher", !78, i64 0, !81, i64 24, !64, i64 32}
!78 = !{!"_ZTSSt6vectorIN14PatternMatcher4ElemESaIS1_EE", !79, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implE", !71, i64 0}
!81 = !{!"bool", !61, i64 0}
!82 = !{!60, !60, i64 0}
!83 = !{!"branch_weights", i32 1, i32 39268}
!84 = !{!"branch_weights", i32 39323, i32 6, i32 0, i32 0, i32 39303}
!85 = !{!86, !87, i64 0}
!86 = !{!"_ZTSN14PatternMatcher4ElemE", !87, i64 0, !64, i64 8, !64, i64 40, !65, i64 72, !65, i64 80}
!87 = !{!"_ZTSN14PatternMatcher8ElemTypeE", !61, i64 0}
!88 = !{!"branch_weights", i32 36, i32 39267}
!89 = !{!"branch_weights", i32 39323, i32 0}
!90 = !{!71, !60, i64 16}
!91 = !{!"branch_weights", i32 117823, i32 78}
!92 = !{!"branch_weights", i32 78632, i32 0}
!93 = !{!"branch_weights", i32 78628, i32 4}
!94 = !{!"branch_weights", i32 39268, i32 39364}
!95 = distinct !{!95, !74, !75}
!96 = !{!"branch_weights", i32 1, i32 39184}
!97 = !{!"branch_weights", i32 117555, i32 0}
!98 = !{!"branch_weights", i32 39184, i32 78371}
!99 = !{!"branch_weights", i32 0, i32 39185}
!100 = !{!"function_entry_count", i64 39185}
!101 = !{!"branch_weights", i32 39185, i32 0}
!102 = !{!"function_entry_count", i64 16}
!103 = !{!65, !65, i64 0}
!104 = !{!"branch_weights", i32 10, i32 6}
!105 = !{!"branch_weights", i32 10, i32 10}
!106 = distinct !{!106, !74, !75}
!107 = !{!"branch_weights", i32 0, i32 16}
!108 = distinct !{!108, !74, !75}
!109 = !{!"function_entry_count", i64 39323}
!110 = !{!"branch_weights", i32 157642, i32 50, i32 0, i32 0, i32 39273}
!111 = !{!"branch_weights", i32 0, i32 157642}
!112 = !{!"branch_weights", i32 158326, i32 7}
!113 = !{!"branch_weights", i32 5, i32 158328}
!114 = !{!"branch_weights", i32 16, i32 157626}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = distinct !{!117, !74, !75}
!118 = !{!119, !60, i64 0}
!119 = !{!"_ZTSNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueE", !60, i64 0, !61, i64 8}
!120 = !{!121, !121, i64 0}
!121 = !{!"vtable pointer", !62, i64 0}
!122 = !{!86, !65, i64 72}
!123 = !{!86, !65, i64 80}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = !{!"function_entry_count", i64 1642180}
!127 = !{!"branch_weights", i32 0, i32 1233668, i32 0, i32 120, i32 0, i32 0, i32 0, i32 416716, i32 50696, i32 19276}
!128 = !{!"branch_weights", i32 1, i32 20027}
!129 = !{!"branch_weights", i32 0, i32 1233668}
!130 = !{!"branch_weights", i32 78176, i32 1155492}
!131 = !{!"branch_weights", i32 120, i32 0, i32 0}
!132 = distinct !{!132, !74, !75}
!133 = !{!"branch_weights", i32 399620, i32 17096}
!134 = !{!"branch_weights", i32 9844, i32 7252}
!135 = !{!"branch_weights", i32 9844, i32 0}
!136 = !{!"branch_weights", i32 1, i32 7251}
!137 = !{!"branch_weights", i32 181656, i32 0}
!138 = !{!"branch_weights", i32 7251, i32 174405}
!139 = distinct !{!139, !74, !75}
!140 = !{!"branch_weights", i32 332452, i32 24, i32 30644}
!141 = !{!"branch_weights", i32 20027, i32 343093}
!142 = distinct !{!142, !74, !75}
!143 = !{!"branch_weights", i32 78296, i32 1642180}
!144 = !{!"function_entry_count", i64 1310042}
!145 = !{!"branch_weights", i32 0, i32 1310042}
!146 = !{!"branch_weights", i32 282842, i32 1027200}
!147 = !{!"branch_weights", i32 275470, i32 7372}
!148 = !{!"branch_weights", i32 0, i32 275470}
!149 = !{!"branch_weights", i32 39980, i32 235490}
!150 = !{!"branch_weights", i32 39980, i32 0}
!151 = !{!"branch_weights", i32 35552, i32 4428}
!152 = !{!"function_entry_count", i64 105}
!153 = !{!"branch_weights", i32 99, i32 6}
!154 = !{!"branch_weights", i32 99, i32 0}
!155 = !{!"function_entry_count", i64 117823}
!156 = !{!"branch_weights", i32 0, i32 117823}
!157 = !{!"branch_weights", i32 117823, i32 0}
!158 = !{!"branch_weights", i32 39269, i32 78554}
!159 = !{!"function_entry_count", i64 117901}
!160 = !{!"branch_weights", i32 1399683, i32 574359}
!161 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!162 = !{!"VP", i32 1, i64 95009, i64 17, i64 49535, i64 32, i64 18337, i64 33, i64 15663, i64 8, i64 5859}
!163 = !{!"branch_weights", i32 117907, i32 0}
!164 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 1, i64 0, i64 9, i64 0, i64 2, i64 0}
!165 = !{!"VP", i32 1, i64 0, i64 1, i64 0}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!168 = distinct !{!168, !"_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, !74, !75}
!172 = !{!"function_entry_count", i64 117907}
!173 = !{!"VP", i32 1, i64 117907, i64 5, i64 78374, i64 1, i64 39355, i64 9, i64 102, i64 2, i64 40}
!174 = !{!"VP", i32 1, i64 117907, i64 1, i64 117907}
!175 = distinct !{!175, !74, !75}
