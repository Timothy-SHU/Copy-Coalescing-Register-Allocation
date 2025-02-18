; ModuleID = 'ProblemListenerDefault.cpp'
source_filename = "ProblemListenerDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1022ProblemListenerDefaultE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ProblemListenerDefaultE, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD0Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii] }, align 8
@_ZN11xalanc_1_10L9xmlHeaderE = internal constant [5 x i16] [i16 88, i16 77, i16 76, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L11xpathHeaderE = internal constant [7 x i16] [i16 88, i16 80, i16 97, i16 116, i16 104, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L10xsltHeaderE = internal constant [6 x i16] [i16 88, i16 83, i16 76, i16 84, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L12locationOpenE = internal constant [3 x i16] [i16 32, i16 40, i16 0], align 2
@_ZN11xalanc_1_10L12uriSeparatorE = internal constant [3 x i16] [i16 44, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L13locationCloseE = internal constant [2 x i16] [i16 41, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ProblemListenerDefaultE = dso_local constant [40 x i8] c"N11xalanc_1_1022ProblemListenerDefaultE\00", align 1
@_ZTIN11xalanc_1_1015ProblemListenerE = external constant ptr
@_ZTIN11xalanc_1_1022ProblemListenerDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ProblemListenerDefaultE, ptr @_ZTIN11xalanc_1_1015ProblemListenerE }, align 8

@_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE
@_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1022ProblemListenerDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !45
  ret void
}

declare void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 !prof !48 {
  %10 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq i32 %1, 3
  %19 = select i1 %18, ptr @_ZN11xalanc_1_10L11xpathHeaderE, ptr @_ZN11xalanc_1_10L10xsltHeaderE
  %20 = icmp eq i32 %1, 1
  %21 = select i1 %20, ptr @_ZN11xalanc_1_10L9xmlHeaderE, ptr %19
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %22 = icmp eq i32 %2, 1
  %23 = select i1 %22, i32 85, i32 86
  %24 = icmp eq i32 %2, 2
  %25 = select i1 %24, i32 84, i32 %23
  %26 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %25, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %29 unwind label %27

27:                                               ; preds = %9, %69, %65, %59, %55, %53, %48, %42, %40, %35, %29
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %178

29:                                               ; preds = %9
  %30 = load ptr, ptr %0, align 8, !tbaa !39
  %31 = getelementptr inbounds ptr, ptr %30, i64 18
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %33 unwind label %27

33:                                               ; preds = %29
  %34 = icmp eq ptr %4, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %4, align 8, !tbaa !39
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(36) ptr %38(ptr noundef nonnull align 8 dereferenceable(322) %4)
          to label %40 unwind label %27

40:                                               ; preds = %35
  %41 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 87, ptr noundef nonnull align 8 dereferenceable(36) %39)
          to label %42 unwind label %27

42:                                               ; preds = %40
  %43 = load ptr, ptr %0, align 8, !tbaa !39
  %44 = getelementptr inbounds ptr, ptr %43, i64 18
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %46 unwind label %27

46:                                               ; preds = %42, %33
  %47 = icmp eq ptr %3, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %3, align 8, !tbaa !39
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef nonnull align 8 dereferenceable(36) ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %53 unwind label %27

53:                                               ; preds = %48
  %54 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 88, ptr noundef nonnull align 8 dereferenceable(36) %52)
          to label %55 unwind label %27

55:                                               ; preds = %53
  %56 = load ptr, ptr %0, align 8, !tbaa !39
  %57 = getelementptr inbounds ptr, ptr %56, i64 18
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %54)
          to label %59 unwind label %27

59:                                               ; preds = %55, %46
  %60 = load ptr, ptr %0, align 8, !tbaa !39
  %61 = getelementptr inbounds ptr, ptr %60, i64 14
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L12locationOpenE, i32 noundef -1)
          to label %63 unwind label %27

63:                                               ; preds = %59
  %64 = icmp eq ptr %6, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 8, !tbaa !39
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, i32 noundef -1)
          to label %69 unwind label %27

69:                                               ; preds = %65
  %70 = load ptr, ptr %0, align 8, !tbaa !39
  %71 = getelementptr inbounds ptr, ptr %70, i64 14
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L12uriSeparatorE, i32 noundef -1)
          to label %73 unwind label %27

73:                                               ; preds = %69, %63
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %74 unwind label %138

74:                                               ; preds = %73
  %75 = sext i32 %7 to i64
  %76 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %75, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %77 unwind label %140

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %78 unwind label %142

78:                                               ; preds = %77
  %79 = sext i32 %8 to i64
  %80 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %79, ptr noundef nonnull align 8 dereferenceable(36) %12)
          to label %81 unwind label %144

81:                                               ; preds = %78
  %82 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %12)
          to label %83 unwind label %144

83:                                               ; preds = %81
  %84 = load ptr, ptr %0, align 8, !tbaa !39
  %85 = getelementptr inbounds ptr, ptr %84, i64 18
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %87 unwind label %144

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !39
  %89 = getelementptr inbounds ptr, ptr %88, i64 14
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L13locationCloseE, i32 noundef -1)
          to label %91 unwind label %144

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !39
  %93 = getelementptr inbounds ptr, ptr %92, i64 19
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %95 unwind label %144

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !53
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = load ptr, ptr %12, align 8, !tbaa !57
  %103 = load ptr, ptr %102, align 8, !tbaa !39
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef %101)
          to label %109 unwind label %106

106:                                              ; preds = %99
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #10
  unreachable

109:                                              ; preds = %95, %99
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #8
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !53
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  %116 = load ptr, ptr %11, align 8, !tbaa !57
  %117 = load ptr, ptr %116, align 8, !tbaa !39
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %115)
          to label %123 unwind label %120

120:                                              ; preds = %113
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @__clang_call_terminate(ptr %122) #10
  unreachable

123:                                              ; preds = %109, %113
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #8
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !53
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = load ptr, ptr %10, align 8, !tbaa !57
  %131 = load ptr, ptr %130, align 8, !tbaa !39
  %132 = getelementptr inbounds ptr, ptr %131, i64 3
  %133 = load ptr, ptr %132, align 8
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef %129)
          to label %137 unwind label %134

134:                                              ; preds = %127
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #10
  unreachable

137:                                              ; preds = %123, %127
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  ret void

138:                                              ; preds = %73
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %176

140:                                              ; preds = %74
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %161

142:                                              ; preds = %77
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %159

144:                                              ; preds = %91, %87, %83, %81, %78
  %145 = landingpad { ptr, i32 }
          cleanup
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !53
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !56
  %152 = load ptr, ptr %12, align 8, !tbaa !57
  %153 = load ptr, ptr %152, align 8, !tbaa !39
  %154 = getelementptr inbounds ptr, ptr %153, i64 3
  %155 = load ptr, ptr %154, align 8
  invoke void %155(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %151)
          to label %159 unwind label %156

156:                                              ; preds = %149
  %157 = landingpad { ptr, i32 }
          catch ptr null
  %158 = extractvalue { ptr, i32 } %157, 0
  call void @__clang_call_terminate(ptr %158) #10
  unreachable

159:                                              ; preds = %149, %144, %142
  %160 = phi { ptr, i32 } [ %143, %142 ], [ %145, %144 ], [ %145, %149 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #8
  br label %161

161:                                              ; preds = %159, %140
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %141, %140 ]
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !53
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !56
  %169 = load ptr, ptr %11, align 8, !tbaa !57
  %170 = load ptr, ptr %169, align 8, !tbaa !39
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %168)
          to label %176 unwind label %173

173:                                              ; preds = %166
  %174 = landingpad { ptr, i32 }
          catch ptr null
  %175 = extractvalue { ptr, i32 } %174, 0
  call void @__clang_call_terminate(ptr %175) #10
  unreachable

176:                                              ; preds = %166, %161, %138
  %177 = phi { ptr, i32 } [ %139, %138 ], [ %162, %161 ], [ %162, %166 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #8
  br label %178

178:                                              ; preds = %176, %27
  %179 = phi { ptr, i32 } [ %177, %176 ], [ %28, %27 ]
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %181 = load i64, ptr %180, align 8, !tbaa !53
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !56
  %186 = load ptr, ptr %10, align 8, !tbaa !57
  %187 = load ptr, ptr %186, align 8, !tbaa !39
  %188 = getelementptr inbounds ptr, ptr %187, i64 3
  %189 = load ptr, ptr %188, align 8
  invoke void %189(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef %185)
          to label %193 unwind label %190

190:                                              ; preds = %183
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #10
  unreachable

193:                                              ; preds = %178, %183
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  resume { ptr, i32 } %179
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !48 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1015ProblemListenerC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev, ptr @_ZN11xalanc_1_1015ProblemListenerD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !41, i64 0}
!45 = !{!46, !43, i64 16}
!46 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !47, i64 0, !43, i64 8, !43, i64 16}
!47 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !43, i64 16}
!50 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !51, i64 0, !52, i64 8, !43, i64 16}
!51 = !{!"_ZTSN11xalanc_1_106WriterE"}
!52 = !{!"bool", !44, i64 0}
!53 = !{!54, !55, i64 16}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !43, i64 0, !55, i64 8, !55, i64 16, !43, i64 24}
!55 = !{!"long", !44, i64 0}
!56 = !{!54, !43, i64 24}
!57 = !{!54, !43, i64 0}
