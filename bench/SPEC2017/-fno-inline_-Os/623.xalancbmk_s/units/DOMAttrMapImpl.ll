; ModuleID = 'DOMAttrMapImpl.cpp'
source_filename = "DOMAttrMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMAttrMapImpl" = type <{ %"class.xercesc_2_7::DOMNamedNodeMap", ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMNamedNodeMap" = type { ptr }
%"class.xercesc_2_7::DOMNodeVector" = type { ptr, i64, i64 }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv = comdat any

$_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb = comdat any

$_ZN11xercesc_2_715DOMNamedNodeMapC2Ev = comdat any

$_ZN11xercesc_2_715DOMNamedNodeMapD2Ev = comdat any

$_ZN11xercesc_2_715DOMNamedNodeMapD0Ev = comdat any

$_ZN11xercesc_2_713DOMNodeVector4sizeEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_713DOMNodeVector9elementAtEm = comdat any

$_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZTSN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTIN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTVN11xercesc_2_715DOMNamedNodeMapE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_714DOMAttrMapImplE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DOMAttrMapImplE, ptr @_ZN11xercesc_2_714DOMAttrMapImplD2Ev, ptr @_ZN11xercesc_2_714DOMAttrMapImplD0Ev, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12setNamedItemEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl9getLengthEv, ptr @_ZN11xercesc_2_714DOMAttrMapImpl15removeNamedItemEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl14getNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneContentEPKS0_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneAttrMapEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemAtEm, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11setReadOnlyEbb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714DOMAttrMapImplE = dso_local constant [32 x i8] c"N11xercesc_2_714DOMAttrMapImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNamedNodeMapE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNamedNodeMapE }, comdat, align 8
@_ZTIN11xercesc_2_714DOMAttrMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DOMAttrMapImplE, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE }, align 8
@_ZTVN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE, ptr @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev, ptr @_ZN11xercesc_2_715DOMNamedNodeMapD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr

@_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeEPKS0_
@_ZN11xercesc_2_714DOMAttrMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_714DOMAttrMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl12setNamedItemEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %32

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !66
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
          to label %20 unwind label %35

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %10, align 8, !tbaa !69
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #10
          to label %28 unwind label %35

28:                                               ; preds = %22
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %27) #10
  br label %32

30:                                               ; preds = %20
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %32

32:                                               ; preds = %28, %30, %13
  %33 = phi ptr [ %14, %13 ], [ %29, %28 ], [ %31, %30 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 3, ptr noundef null, ptr noundef %33) #10
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

35:                                               ; preds = %32, %22, %15
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %187

37:                                               ; preds = %2
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds ptr, ptr %40, i64 12
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39) #10
  %44 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #10
  %45 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %44) #10
  %46 = icmp eq ptr %45, %43
  br i1 %46, label %75, label %47

47:                                               ; preds = %37
  %48 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %49 = load ptr, ptr %38, align 8, !tbaa !69
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %70

53:                                               ; preds = %47
  %54 = load ptr, ptr %49, align 8, !tbaa !66
  %55 = getelementptr inbounds ptr, ptr %54, i64 12
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %49) #10
          to label %58 unwind label %73

58:                                               ; preds = %53
  %59 = icmp eq ptr %57, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %38, align 8, !tbaa !69
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %61) #10
          to label %66 unwind label %73

66:                                               ; preds = %60
  %67 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %65) #10
  br label %70

68:                                               ; preds = %58
  %69 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %70

70:                                               ; preds = %66, %68, %51
  %71 = phi ptr [ %52, %51 ], [ %67, %66 ], [ %69, %68 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %48, i16 noundef signext 4, ptr noundef null, ptr noundef %71) #10
          to label %72 unwind label %73

72:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

73:                                               ; preds = %70, %60, %53
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %187

75:                                               ; preds = %37
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %76, label %77, label %105

77:                                               ; preds = %75
  %78 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %79 = load ptr, ptr %38, align 8, !tbaa !69
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %100

83:                                               ; preds = %77
  %84 = load ptr, ptr %79, align 8, !tbaa !66
  %85 = getelementptr inbounds ptr, ptr %84, i64 12
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %79) #10
          to label %88 unwind label %103

88:                                               ; preds = %83
  %89 = icmp eq ptr %87, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %38, align 8, !tbaa !69
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds ptr, ptr %92, i64 12
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %91) #10
          to label %96 unwind label %103

96:                                               ; preds = %90
  %97 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %95) #10
  br label %100

98:                                               ; preds = %88
  %99 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %100

100:                                              ; preds = %96, %98, %81
  %101 = phi ptr [ %82, %81 ], [ %97, %96 ], [ %99, %98 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %78, i16 noundef signext 7, ptr noundef null, ptr noundef %101) #10
          to label %102 unwind label %103

102:                                              ; preds = %100
  tail call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

103:                                              ; preds = %100, %90, %83
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %187

105:                                              ; preds = %75
  %106 = load ptr, ptr %1, align 8, !tbaa !66
  %107 = getelementptr inbounds ptr, ptr %106, i64 4
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef signext i16 %108(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %110 = icmp eq i16 %109, 2
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %38, align 8, !tbaa !69
  br label %147

113:                                              ; preds = %105
  %114 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %44) #10
  %115 = load ptr, ptr %38, align 8, !tbaa !69
  br i1 %114, label %116, label %147

116:                                              ; preds = %113
  %117 = load ptr, ptr %44, align 8, !tbaa !76
  %118 = icmp eq ptr %117, %115
  br i1 %118, label %147, label %119

119:                                              ; preds = %116
  %120 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %121 = load ptr, ptr %38, align 8, !tbaa !69
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %142

125:                                              ; preds = %119
  %126 = load ptr, ptr %121, align 8, !tbaa !66
  %127 = getelementptr inbounds ptr, ptr %126, i64 12
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %121) #10
          to label %130 unwind label %145

130:                                              ; preds = %125
  %131 = icmp eq ptr %129, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %38, align 8, !tbaa !69
  %134 = load ptr, ptr %133, align 8, !tbaa !66
  %135 = getelementptr inbounds ptr, ptr %134, i64 12
  %136 = load ptr, ptr %135, align 8
  %137 = invoke noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(8) %133) #10
          to label %138 unwind label %145

138:                                              ; preds = %132
  %139 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %137) #10
  br label %142

140:                                              ; preds = %130
  %141 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %142

142:                                              ; preds = %138, %140, %123
  %143 = phi ptr [ %124, %123 ], [ %139, %138 ], [ %141, %140 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %120, i16 noundef signext 10, ptr noundef null, ptr noundef %143) #10
          to label %144 unwind label %145

144:                                              ; preds = %142
  tail call void @__cxa_throw(ptr nonnull %120, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

145:                                              ; preds = %142, %132, %125
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %187

147:                                              ; preds = %111, %116, %113
  %148 = phi ptr [ %112, %111 ], [ %115, %116 ], [ %115, %113 ]
  store ptr %148, ptr %44, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %44, i1 noundef zeroext true) #10
  %149 = load ptr, ptr %1, align 8, !tbaa !66
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %153 = load ptr, ptr %0, align 8, !tbaa !66
  %154 = getelementptr inbounds ptr, ptr %153, i64 14
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef i32 %155(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %152) #10
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %168, label %158

158:                                              ; preds = %147
  %159 = xor i32 %156, -1
  %160 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !79
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %43) #10
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %164, ptr noundef %43) #10
  store ptr %164, ptr %160, align 8, !tbaa !79
  br label %165

165:                                              ; preds = %158, %163
  %166 = phi ptr [ %161, %158 ], [ %164, %163 ]
  %167 = zext nneg i32 %159 to i64
  tail call void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %166, ptr noundef nonnull %1, i64 noundef %167) #10
  br label %185

168:                                              ; preds = %147
  %169 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !79
  %171 = zext nneg i32 %156 to i64
  %172 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %170, i64 noundef %171) #10
  %173 = load ptr, ptr %169, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %173, ptr noundef nonnull %1, i64 noundef %171) #10
  %174 = icmp eq ptr %172, null
  br i1 %174, label %185, label %175

175:                                              ; preds = %168
  %176 = load ptr, ptr %38, align 8, !tbaa !69
  %177 = load ptr, ptr %176, align 8, !tbaa !66
  %178 = getelementptr inbounds ptr, ptr %177, i64 12
  %179 = load ptr, ptr %178, align 8
  %180 = tail call noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(8) %176) #10
  %181 = icmp eq ptr %180, null
  %182 = getelementptr inbounds i8, ptr %180, i64 24
  %183 = select i1 %181, ptr null, ptr %182
  %184 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %172) #10
  store ptr %183, ptr %184, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %184, i1 noundef zeroext false) #10
  br label %185

185:                                              ; preds = %165, %175, %168
  %186 = phi ptr [ null, %165 ], [ %172, %175 ], [ null, %168 ]
  ret ptr %186

187:                                              ; preds = %73, %103, %145, %35
  %188 = phi ptr [ %48, %73 ], [ %78, %103 ], [ %120, %145 ], [ %9, %35 ]
  %189 = phi { ptr, i32 } [ %74, %73 ], [ %104, %103 ], [ %146, %145 ], [ %36, %35 ]
  tail call void @__cxa_free_exception(ptr %188) #11
  resume { ptr, i32 } %189
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i64 noundef %1) unnamed_addr #0 align 2 !prof !80 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !81

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  %8 = icmp ugt i64 %7, %1
  br i1 %8, label %9, label %12, !prof !82

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !79
  %11 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %1) #10
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !83 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 14
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8, !prof !84

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = zext nneg i32 %6 to i64
  %12 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %11) #10
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_714DOMAttrMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #0 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !86

5:                                                ; preds = %1
  %6 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl15removeNamedItemEPKt(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %28

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 8, !tbaa !66
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
          to label %16 unwind label %31

16:                                               ; preds = %11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %6, align 8, !tbaa !69
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
          to label %24 unwind label %31

24:                                               ; preds = %18
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #10
  br label %28

26:                                               ; preds = %16
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %28

28:                                               ; preds = %24, %26, %9
  %29 = phi ptr [ %10, %9 ], [ %25, %24 ], [ %27, %26 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 7, ptr noundef null, ptr noundef %29) #10
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

31:                                               ; preds = %28, %18, %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %111

33:                                               ; preds = %2
  %34 = load ptr, ptr %0, align 8, !tbaa !66
  %35 = getelementptr inbounds ptr, ptr %34, i64 14
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %63

46:                                               ; preds = %39
  %47 = load ptr, ptr %42, align 8, !tbaa !66
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %42) #10
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = icmp eq ptr %50, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %41, align 8, !tbaa !69
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  %56 = getelementptr inbounds ptr, ptr %55, i64 12
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54) #10
          to label %59 unwind label %66

59:                                               ; preds = %53
  %60 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %58) #10
  br label %63

61:                                               ; preds = %51
  %62 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %63

63:                                               ; preds = %59, %61, %44
  %64 = phi ptr [ %45, %44 ], [ %60, %59 ], [ %62, %61 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %40, i16 noundef signext 8, ptr noundef null, ptr noundef %64) #10
          to label %65 unwind label %66

65:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

66:                                               ; preds = %63, %53, %46
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %111

68:                                               ; preds = %33
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = zext nneg i32 %37 to i64
  %72 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef %71) #10
  %73 = load ptr, ptr %69, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %73, i64 noundef %71) #10
  %74 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = getelementptr inbounds ptr, ptr %76, i64 12
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %75) #10
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds i8, ptr %79, i64 24
  %82 = select i1 %80, ptr null, ptr %81
  %83 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %72) #10
  store ptr %82, ptr %83, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %83, i1 noundef zeroext false) #10
  %84 = load ptr, ptr %0, align 8, !tbaa !66
  %85 = getelementptr inbounds ptr, ptr %84, i64 12
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef zeroext i1 %86(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  %88 = icmp ne ptr %72, null
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %110

90:                                               ; preds = %68
  %91 = load ptr, ptr %74, align 8, !tbaa !69
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds ptr, ptr %92, i64 63
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(96) %91) #10
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = getelementptr inbounds ptr, ptr %96, i64 4
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(25) %95, ptr noundef %1) #10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %90
  %102 = load ptr, ptr %99, align 8, !tbaa !66
  %103 = getelementptr inbounds ptr, ptr %102, i64 13
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %99, i1 noundef zeroext true) #10
  %106 = load ptr, ptr %0, align 8, !tbaa !66
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %105) #10
  br label %110

110:                                              ; preds = %90, %101, %68
  ret ptr %72

111:                                              ; preds = %66, %31
  %112 = phi ptr [ %40, %66 ], [ %5, %31 ]
  %113 = phi { ptr, i32 } [ %67, %66 ], [ %32, %31 ]
  tail call void @__cxa_free_exception(ptr %112) #11
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl14getNamedItemNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !65 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds ptr, ptr %4, i64 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = zext nneg i32 %7 to i64
  %13 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %12) #10
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %37, label %8, !prof !88

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %32

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !66
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
          to label %20 unwind label %35

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %10, align 8, !tbaa !69
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #10
          to label %28 unwind label %35

28:                                               ; preds = %22
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %27) #10
  br label %32

30:                                               ; preds = %20
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %32

32:                                               ; preds = %28, %30, %13
  %33 = phi ptr [ %14, %13 ], [ %29, %28 ], [ %31, %30 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 3, ptr noundef null, ptr noundef %33) #10
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

35:                                               ; preds = %32, %22, %15
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %188

37:                                               ; preds = %2
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds ptr, ptr %40, i64 12
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39) #10
  %44 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #10
  %45 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %44) #10
  %46 = icmp eq ptr %45, %43
  br i1 %46, label %75, label %47, !prof !88

47:                                               ; preds = %37
  %48 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %49 = load ptr, ptr %38, align 8, !tbaa !69
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %70

53:                                               ; preds = %47
  %54 = load ptr, ptr %49, align 8, !tbaa !66
  %55 = getelementptr inbounds ptr, ptr %54, i64 12
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %49) #10
          to label %58 unwind label %73

58:                                               ; preds = %53
  %59 = icmp eq ptr %57, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %38, align 8, !tbaa !69
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %61) #10
          to label %66 unwind label %73

66:                                               ; preds = %60
  %67 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %65) #10
  br label %70

68:                                               ; preds = %58
  %69 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %70

70:                                               ; preds = %66, %68, %51
  %71 = phi ptr [ %52, %51 ], [ %67, %66 ], [ %69, %68 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %48, i16 noundef signext 4, ptr noundef null, ptr noundef %71) #10
          to label %72 unwind label %73

72:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

73:                                               ; preds = %70, %60, %53
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %188

75:                                               ; preds = %37
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %76, label %77, label %105, !prof !89

77:                                               ; preds = %75
  %78 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %79 = load ptr, ptr %38, align 8, !tbaa !69
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %100

83:                                               ; preds = %77
  %84 = load ptr, ptr %79, align 8, !tbaa !66
  %85 = getelementptr inbounds ptr, ptr %84, i64 12
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %79) #10
          to label %88 unwind label %103

88:                                               ; preds = %83
  %89 = icmp eq ptr %87, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %38, align 8, !tbaa !69
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds ptr, ptr %92, i64 12
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %91) #10
          to label %96 unwind label %103

96:                                               ; preds = %90
  %97 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %95) #10
  br label %100

98:                                               ; preds = %88
  %99 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %100

100:                                              ; preds = %96, %98, %81
  %101 = phi ptr [ %82, %81 ], [ %97, %96 ], [ %99, %98 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %78, i16 noundef signext 7, ptr noundef null, ptr noundef %101) #10
          to label %102 unwind label %103

102:                                              ; preds = %100
  tail call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

103:                                              ; preds = %100, %90, %83
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %188

105:                                              ; preds = %75
  %106 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %44) #10
  br i1 %106, label %107, label %135, !prof !89

107:                                              ; preds = %105
  %108 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %109 = load ptr, ptr %38, align 8, !tbaa !69
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %130

113:                                              ; preds = %107
  %114 = load ptr, ptr %109, align 8, !tbaa !66
  %115 = getelementptr inbounds ptr, ptr %114, i64 12
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %109) #10
          to label %118 unwind label %133

118:                                              ; preds = %113
  %119 = icmp eq ptr %117, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %38, align 8, !tbaa !69
  %122 = load ptr, ptr %121, align 8, !tbaa !66
  %123 = getelementptr inbounds ptr, ptr %122, i64 12
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %121) #10
          to label %126 unwind label %133

126:                                              ; preds = %120
  %127 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %125) #10
  br label %130

128:                                              ; preds = %118
  %129 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %130

130:                                              ; preds = %126, %128, %111
  %131 = phi ptr [ %112, %111 ], [ %127, %126 ], [ %129, %128 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %108, i16 noundef signext 10, ptr noundef null, ptr noundef %131) #10
          to label %132 unwind label %133

132:                                              ; preds = %130
  tail call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

133:                                              ; preds = %130, %120, %113
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %188

135:                                              ; preds = %105
  %136 = load ptr, ptr %38, align 8, !tbaa !69
  store ptr %136, ptr %44, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %44, i1 noundef zeroext true) #10
  %137 = load ptr, ptr %1, align 8, !tbaa !66
  %138 = getelementptr inbounds ptr, ptr %137, i64 22
  %139 = load ptr, ptr %138, align 8
  %140 = tail call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %141 = load ptr, ptr %1, align 8, !tbaa !66
  %142 = getelementptr inbounds ptr, ptr %141, i64 24
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %145 = load ptr, ptr %0, align 8, !tbaa !66
  %146 = getelementptr inbounds ptr, ptr %145, i64 15
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef i32 %147(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %140, ptr noundef %144) #10
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %169, label %150, !prof !89

150:                                              ; preds = %135
  %151 = load ptr, ptr %1, align 8, !tbaa !66
  %152 = getelementptr inbounds ptr, ptr %151, i64 2
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %155 = load ptr, ptr %0, align 8, !tbaa !66
  %156 = getelementptr inbounds ptr, ptr %155, i64 14
  %157 = load ptr, ptr %156, align 8
  %158 = tail call noundef i32 %157(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %154) #10
  %159 = ashr i32 %158, 31
  %160 = xor i32 %159, %158
  %161 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !79
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166, !prof !90

164:                                              ; preds = %150
  %165 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %43) #10
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %165, ptr noundef %43) #10
  store ptr %165, ptr %161, align 8, !tbaa !79
  br label %166

166:                                              ; preds = %150, %164
  %167 = phi ptr [ %162, %150 ], [ %165, %164 ]
  %168 = zext nneg i32 %160 to i64
  tail call void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %167, ptr noundef nonnull %1, i64 noundef %168) #10
  br label %186

169:                                              ; preds = %135
  %170 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !79
  %172 = zext nneg i32 %148 to i64
  %173 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %171, i64 noundef %172) #10
  %174 = load ptr, ptr %170, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %174, ptr noundef nonnull %1, i64 noundef %172) #10
  %175 = icmp eq ptr %173, null
  br i1 %175, label %186, label %176, !prof !91

176:                                              ; preds = %169
  %177 = load ptr, ptr %38, align 8, !tbaa !69
  %178 = load ptr, ptr %177, align 8, !tbaa !66
  %179 = getelementptr inbounds ptr, ptr %178, i64 12
  %180 = load ptr, ptr %179, align 8
  %181 = tail call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %177) #10
  %182 = icmp eq ptr %181, null
  %183 = getelementptr inbounds i8, ptr %181, i64 24
  %184 = select i1 %182, ptr null, ptr %183
  %185 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %173) #10
  store ptr %184, ptr %185, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %185, i1 noundef zeroext false) #10
  br label %186

186:                                              ; preds = %166, %176, %169
  %187 = phi ptr [ null, %166 ], [ %173, %176 ], [ null, %169 ]
  ret ptr %187

188:                                              ; preds = %73, %103, %133, %35
  %189 = phi ptr [ %48, %73 ], [ %78, %103 ], [ %108, %133 ], [ %9, %35 ]
  %190 = phi { ptr, i32 } [ %74, %73 ], [ %104, %103 ], [ %134, %133 ], [ %36, %35 ]
  tail call void @__cxa_free_exception(ptr %189) #11
  resume { ptr, i32 } %190
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %8, align 8, !tbaa !66
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
          to label %17 unwind label %32

17:                                               ; preds = %12
  %18 = icmp eq ptr %16, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !69
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
          to label %25 unwind label %32

25:                                               ; preds = %19
  %26 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %24) #10
  br label %29

27:                                               ; preds = %17
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %25, %27, %10
  %30 = phi ptr [ %11, %10 ], [ %26, %25 ], [ %28, %27 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %30) #10
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

32:                                               ; preds = %29, %19, %12
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %112

34:                                               ; preds = %3
  %35 = load ptr, ptr %0, align 8, !tbaa !66
  %36 = getelementptr inbounds ptr, ptr %35, i64 15
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %64

47:                                               ; preds = %40
  %48 = load ptr, ptr %43, align 8, !tbaa !66
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %43) #10
          to label %52 unwind label %67

52:                                               ; preds = %47
  %53 = icmp eq ptr %51, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %42, align 8, !tbaa !69
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55) #10
          to label %60 unwind label %67

60:                                               ; preds = %54
  %61 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %59) #10
  br label %64

62:                                               ; preds = %52
  %63 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %64

64:                                               ; preds = %60, %62, %45
  %65 = phi ptr [ %46, %45 ], [ %61, %60 ], [ %63, %62 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %41, i16 noundef signext 8, ptr noundef null, ptr noundef %65) #10
          to label %66 unwind label %67

66:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

67:                                               ; preds = %64, %54, %47
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %112

69:                                               ; preds = %34
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !79
  %72 = zext nneg i32 %38 to i64
  %73 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %71, i64 noundef %72) #10
  %74 = load ptr, ptr %70, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %74, i64 noundef %72) #10
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !69
  %77 = load ptr, ptr %76, align 8, !tbaa !66
  %78 = getelementptr inbounds ptr, ptr %77, i64 12
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %76) #10
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds i8, ptr %80, i64 24
  %83 = select i1 %81, ptr null, ptr %82
  %84 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %73) #10
  store ptr %83, ptr %84, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %84, i1 noundef zeroext false) #10
  %85 = load ptr, ptr %0, align 8, !tbaa !66
  %86 = getelementptr inbounds ptr, ptr %85, i64 12
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  %89 = icmp ne ptr %73, null
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %111

91:                                               ; preds = %69
  %92 = load ptr, ptr %75, align 8, !tbaa !69
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  %94 = getelementptr inbounds ptr, ptr %93, i64 63
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(96) %92) #10
  %97 = load ptr, ptr %96, align 8, !tbaa !66
  %98 = getelementptr inbounds ptr, ptr %97, i64 7
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(25) %96, ptr noundef %1, ptr noundef %2) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %91
  %103 = load ptr, ptr %100, align 8, !tbaa !66
  %104 = getelementptr inbounds ptr, ptr %103, i64 13
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %100, i1 noundef zeroext true) #10
  %107 = load ptr, ptr %0, align 8, !tbaa !66
  %108 = getelementptr inbounds ptr, ptr %107, i64 8
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %106) #10
  br label %111

111:                                              ; preds = %91, %102, %69
  ret ptr %73

112:                                              ; preds = %67, %32
  %113 = phi ptr [ %41, %67 ], [ %6, %32 ]
  %114 = phi { ptr, i32 } [ %68, %67 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %113) #11
  resume { ptr, i32 } %114
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl12cloneContentEPKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(25) %0, ptr noundef readonly %1) unnamed_addr #1 align 2 !prof !65 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #10
  br label %24

13:                                               ; preds = %8
  %14 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  %23 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %22) #10
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef %22, i64 noundef %14) #10
  store ptr %23, ptr %9, align 8, !tbaa !79
  br label %24

24:                                               ; preds = %13, %16, %12
  %25 = load ptr, ptr %5, align 8, !tbaa !79
  %26 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %25) #10
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %43, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !79
  %33 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %31) #10
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i1 noundef zeroext true) #10
  %38 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %37) #10
  %39 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %33) #10
  %40 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %39) #10
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %38, i1 noundef zeroext %40) #10
  %41 = load ptr, ptr %29, align 8, !tbaa !69
  store ptr %41, ptr %38, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %38, i1 noundef zeroext true) #10
  %42 = load ptr, ptr %9, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef %37) #10
  %43 = add nuw i64 %31, 1
  %44 = load ptr, ptr %5, align 8, !tbaa !79
  %45 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %44) #10
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %30, label %47, !llvm.loop !92

47:                                               ; preds = %30, %24, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneAttrMapEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !65 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #10
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #10
  %5 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %4) #10
  tail call void @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds ptr, ptr %6, i64 10
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull %0) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !94, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 !prof !97 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6, !prof !99

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, -1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %32, label %11, !prof !100

11:                                               ; preds = %6, %25
  %12 = phi i32 [ %30, %25 ], [ %9, %6 ]
  %13 = phi i32 [ %29, %25 ], [ 0, %6 ]
  %14 = add nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  %16 = load ptr, ptr %3, align 8, !tbaa !79
  %17 = sext i32 %15 to i64
  %18 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %17) #10
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  %23 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %1, ptr noundef %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25, !prof !101

25:                                               ; preds = %11
  %26 = icmp slt i32 %23, 0
  %27 = add nsw i32 %15, -1
  %28 = add nsw i32 %15, 1
  %29 = select i1 %26, i32 %13, i32 %28, !prof !102
  %30 = select i1 %26, i32 %27, i32 %12, !prof !102
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %11, !prof !103, !llvm.loop !104

32:                                               ; preds = %25, %6
  %33 = phi i32 [ 0, %6 ], [ %15, %25 ]
  %34 = phi i32 [ 0, %6 ], [ %29, %25 ]
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 %33)
  %36 = xor i32 %35, -1
  br label %37

37:                                               ; preds = %11, %2, %32
  %38 = phi i32 [ -1, %2 ], [ %36, %32 ], [ %15, %11 ]
  ret i32 %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !87 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7, !prof !90

7:                                                ; preds = %3
  %8 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %43, !prof !105

11:                                               ; preds = %7
  %12 = and i64 %8, 4294967295
  br label %13

13:                                               ; preds = %11, %36
  %14 = phi i64 [ 0, %11 ], [ %37, %36 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !79
  %16 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %14) #10
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = getelementptr inbounds ptr, ptr %17, i64 22
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  %21 = load ptr, ptr %16, align 8, !tbaa !66
  %22 = getelementptr inbounds ptr, ptr %21, i64 24
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %20, ptr noundef %1) #10
  br i1 %25, label %26, label %36, !prof !106

26:                                               ; preds = %13
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %24) #10
  br i1 %27, label %39, label %28, !prof !107

28:                                               ; preds = %26
  %29 = icmp eq ptr %24, null
  br i1 %29, label %30, label %36, !prof !107

30:                                               ; preds = %28
  %31 = load ptr, ptr %16, align 8, !tbaa !66
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %34) #10
  br i1 %35, label %41, label %36

36:                                               ; preds = %30, %28, %13
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %43, label %13, !prof !108, !llvm.loop !109

39:                                               ; preds = %26
  %40 = trunc i64 %14 to i32
  br label %43

41:                                               ; preds = %30
  %42 = trunc i64 %14 to i32
  br label %43

43:                                               ; preds = %36, %39, %41, %7, %3
  %44 = phi i32 [ -1, %3 ], [ -1, %7 ], [ %40, %39 ], [ %42, %41 ], [ -1, %36 ]
  ret i32 %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemAtEm(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %28

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 8, !tbaa !66
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
          to label %16 unwind label %31

16:                                               ; preds = %11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %6, align 8, !tbaa !69
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
          to label %24 unwind label %31

24:                                               ; preds = %18
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #10
  br label %28

26:                                               ; preds = %16
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %28

28:                                               ; preds = %24, %26, %9
  %29 = phi ptr [ %10, %9 ], [ %25, %24 ], [ %27, %26 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 7, ptr noundef null, ptr noundef %29) #10
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

31:                                               ; preds = %28, %18, %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %126

33:                                               ; preds = %2
  %34 = load ptr, ptr %0, align 8, !tbaa !66
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %63

46:                                               ; preds = %39
  %47 = load ptr, ptr %42, align 8, !tbaa !66
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %42) #10
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = icmp eq ptr %50, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %41, align 8, !tbaa !69
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  %56 = getelementptr inbounds ptr, ptr %55, i64 12
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54) #10
          to label %59 unwind label %66

59:                                               ; preds = %53
  %60 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %58) #10
  br label %63

61:                                               ; preds = %51
  %62 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !75
  br label %63

63:                                               ; preds = %59, %61, %44
  %64 = phi ptr [ %45, %44 ], [ %60, %59 ], [ %62, %61 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %40, i16 noundef signext 8, ptr noundef null, ptr noundef %64) #10
          to label %65 unwind label %66

65:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

66:                                               ; preds = %63, %53, %46
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %126

68:                                               ; preds = %33
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef %1) #10
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = load ptr, ptr %72, align 8, !tbaa !66
  %74 = getelementptr inbounds ptr, ptr %73, i64 12
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %72) #10
  %77 = icmp eq ptr %76, null
  %78 = getelementptr inbounds i8, ptr %76, i64 24
  %79 = select i1 %77, ptr null, ptr %78
  %80 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %37) #10
  store ptr %79, ptr %80, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %80, i1 noundef zeroext false) #10
  %81 = load ptr, ptr %0, align 8, !tbaa !66
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  br i1 %84, label %85, label %125

85:                                               ; preds = %68
  %86 = load ptr, ptr %71, align 8, !tbaa !69
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  %88 = getelementptr inbounds ptr, ptr %87, i64 63
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(96) %86) #10
  %91 = load ptr, ptr %37, align 8, !tbaa !66
  %92 = getelementptr inbounds ptr, ptr %91, i64 24
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %37) #10
  %95 = icmp eq ptr %94, null
  %96 = load ptr, ptr %37, align 8, !tbaa !66
  br i1 %95, label %105, label %97

97:                                               ; preds = %85
  %98 = getelementptr inbounds ptr, ptr %96, i64 22
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %37) #10
  %101 = load ptr, ptr %90, align 8, !tbaa !66
  %102 = getelementptr inbounds ptr, ptr %101, i64 7
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(25) %90, ptr noundef %100, ptr noundef nonnull %94) #10
  br label %113

105:                                              ; preds = %85
  %106 = getelementptr inbounds ptr, ptr %96, i64 40
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %37) #10
  %109 = load ptr, ptr %90, align 8, !tbaa !66
  %110 = getelementptr inbounds ptr, ptr %109, i64 4
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(25) %90, ptr noundef %108) #10
  br label %113

113:                                              ; preds = %105, %97
  %114 = phi ptr [ %104, %97 ], [ %112, %105 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %114, align 8, !tbaa !66
  %118 = getelementptr inbounds ptr, ptr %117, i64 13
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %114, i1 noundef zeroext true) #10
  %121 = load ptr, ptr %0, align 8, !tbaa !66
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %120) #10
  br label %125

125:                                              ; preds = %113, %116, %68
  ret ptr %37

126:                                              ; preds = %66, %31
  %127 = phi ptr [ %40, %66 ], [ %5, %31 ]
  %128 = phi { ptr, i32 } [ %67, %66 ], [ %32, %31 ]
  tail call void @__cxa_free_exception(ptr %127) #11
  resume { ptr, i32 } %128
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !65 {
  br i1 %2, label %4, label %21

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = and i64 %9, 4294967295
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !79
  %17 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %15) #10
  %18 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %17) #10
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %18, i1 noundef zeroext %1, i1 noundef zeroext true) #10
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !110

21:                                               ; preds = %14, %8, %4, %3
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMAttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !69
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !97 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNamedNodeMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMAttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext false) #10
  %6 = icmp eq ptr %2, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(25) %2) #10
          to label %12 unwind label %22

12:                                               ; preds = %7
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !66
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext true) #10
          to label %18 unwind label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !66
  %20 = getelementptr inbounds ptr, ptr %19, i64 10
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %2) #10
          to label %24 unwind label %22

22:                                               ; preds = %18, %14, %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %23

24:                                               ; preds = %12, %18, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !112
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !115 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #10
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !116 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !112
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %10, !prof !117

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !118
  %8 = getelementptr inbounds ptr, ptr %7, i64 %1
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #5 !prof !119 !PGOFuncName !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !123
  br i1 %1, label %6, label %8, !prof !124

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !122
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !123
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !125 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !123
  br i1 %1, label %6, label %8, !prof !126

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !122
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) local_unnamed_addr #0 align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %3) #10
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !122
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !123
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !122
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !123
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !144

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !123
  %8 = load i16, ptr %1, align 2, !tbaa !123
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !145

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !146

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !123
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !147

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !148

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !123
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !149

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !150

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !123
  %28 = load i16, ptr %26, align 2, !tbaa !123
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !151, !llvm.loop !152

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(25) %0) #10
  %7 = add i64 %6, -1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %29, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !66
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext false) #10
  %13 = icmp eq ptr %1, null
  br i1 %13, label %66, label %32

14:                                               ; preds = %2, %29
  %15 = phi i64 [ %30, %29 ], [ %7, %2 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !66
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %15) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 41
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !66
  %26 = getelementptr inbounds ptr, ptr %25, i64 16
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %15) #10
  br label %29

29:                                               ; preds = %24, %14
  %30 = add nsw i64 %15, -1
  %31 = icmp sgt i64 %15, 0
  br i1 %31, label %14, label %9, !llvm.loop !153

32:                                               ; preds = %9
  %33 = load ptr, ptr %0, align 8, !tbaa !66
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext true) #10
  %36 = icmp eq i64 %6, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !66
  %39 = getelementptr inbounds ptr, ptr %38, i64 10
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %1) #10
  br label %66

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8, !tbaa !66
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i64 %44(ptr noundef nonnull align 8 dereferenceable(25) %1) #10
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %41, %47
  %48 = phi i64 [ %64, %47 ], [ 0, %41 ]
  %49 = load ptr, ptr %1, align 8, !tbaa !66
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %48) #10
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds ptr, ptr %53, i64 13
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52, i1 noundef zeroext true) #10
  %57 = load ptr, ptr %0, align 8, !tbaa !66
  %58 = getelementptr inbounds ptr, ptr %57, i64 8
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %56) #10
  %61 = load ptr, ptr %56, align 8, !tbaa !66
  %62 = getelementptr inbounds ptr, ptr %61, i64 47
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(72) %56, i1 noundef zeroext false) #10
  %64 = add nuw i64 %48, 1
  %65 = icmp eq i64 %64, %45
  br i1 %65, label %66, label %47, !llvm.loop !154

66:                                               ; preds = %47, %41, %37, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !65 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(25) %1) #10
  %7 = add i64 %6, -1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %10, label %9

9:                                                ; preds = %25, %2
  ret void

10:                                               ; preds = %2, %25
  %11 = phi i64 [ %36, %25 ], [ %7, %2 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !66
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %11) #10
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load ptr, ptr %1, align 8, !tbaa !66
  %22 = getelementptr inbounds ptr, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %11) #10
  br label %25

25:                                               ; preds = %20, %10
  %26 = load ptr, ptr %15, align 8, !tbaa !66
  %27 = getelementptr inbounds ptr, ptr %26, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %0, align 8, !tbaa !66
  %32 = select i1 %30, i64 2, i64 8
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %15) #10
  %36 = add nsw i64 %11, -1
  %37 = icmp sgt i64 %11, 0
  br i1 %37, label %10, label %9, !llvm.loop !155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!64}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!36 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm, ptr @_ZN11xercesc_2_713DOMNodeVector4sizeEv, i64 653}
!37 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm, ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm, i64 652}
!38 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt, ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm, i64 3988}
!39 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl9getLengthEv, ptr @_ZN11xercesc_2_713DOMNodeVector4sizeEv, i64 514}
!40 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @__cxa_allocate_exception, i64 4}
!41 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE, i64 4}
!42 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE, i64 650}
!43 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, i64 649}
!44 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv, i64 648}
!45 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv, i64 647}
!46 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb, i64 647}
!47 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, i64 509}
!48 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE, i64 509}
!49 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm, i64 645}
!50 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm, i64 1}
!51 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm, i64 1}
!52 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @__cxa_free_exception, i64 3}
!53 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZN11xercesc_2_713DOMNodeVector4sizeEv, i64 5016}
!54 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm, i64 6416}
!55 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_, i64 6416}
!56 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, ptr @_ZN11xercesc_2_713DOMNodeVector4sizeEv, i64 137}
!57 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm, i64 160}
!58 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 316}
!59 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev, i64 1100}
!60 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb, i64 1100}
!61 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!62 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv, ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE, i64 650}
!63 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv, i64 650}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!70, !72, i64 16}
!70 = !{!"_ZTSN11xercesc_2_714DOMAttrMapImplE", !71, i64 0, !72, i64 8, !72, i64 16, !74, i64 24}
!71 = !{!"_ZTSN11xercesc_2_715DOMNamedNodeMapE"}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !68, i64 0}
!74 = !{!"bool", !73, i64 0}
!75 = !{!72, !72, i64 0}
!76 = !{!77, !72, i64 0}
!77 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !72, i64 0, !78, i64 8}
!78 = !{!"short", !73, i64 0}
!79 = !{!70, !72, i64 8}
!80 = !{!"function_entry_count", i64 654}
!81 = !{!"branch_weights", i32 1, i32 655}
!82 = !{!"branch_weights", i32 655, i32 1}
!83 = !{!"function_entry_count", i64 5038}
!84 = !{!"branch_weights", i32 1050, i32 3990}
!85 = !{!"function_entry_count", i64 551}
!86 = !{!"branch_weights", i32 37, i32 516}
!87 = !{!"function_entry_count", i64 650}
!88 = !{!"branch_weights", i32 651, i32 1}
!89 = !{!"branch_weights", i32 1, i32 651}
!90 = !{!"branch_weights", i32 515, i32 137}
!91 = !{!"branch_weights", i32 0, i32 -2147483648}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!70, !74, i64 24}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!"function_entry_count", i64 1100}
!98 = !{!"function_entry_count", i64 5688}
!99 = !{!"branch_weights", i32 672, i32 5018}
!100 = !{!"branch_weights", i32 1, i32 1028}
!101 = !{!"branch_weights", i32 3990, i32 1473}
!102 = !{!"branch_weights", i32 985, i32 489}
!103 = !{!"branch_weights", i32 1028, i32 4434}
!104 = distinct !{!104, !93}
!105 = !{!"branch_weights", i32 136, i32 1}
!106 = !{!"branch_weights", i32 157, i32 5}
!107 = !{!"branch_weights", i32 1, i32 157}
!108 = !{!"branch_weights", i32 136, i32 25}
!109 = distinct !{!109, !93}
!110 = distinct !{!110, !93}
!111 = !{!"function_entry_count", i64 6322}
!112 = !{!113, !114, i64 16}
!113 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !72, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"long", !73, i64 0}
!115 = !{!"function_entry_count", i64 2815}
!116 = !{!"function_entry_count", i64 10264}
!117 = !{!"branch_weights", i32 10265, i32 1}
!118 = !{!113, !72, i64 0}
!119 = !{!"function_entry_count", i64 1300}
!120 = !{!"DOMAttrMapImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!121 = !{!"function_entry_count", i64 1950}
!122 = !{!77, !78, i64 8}
!123 = !{!78, !78, i64 0}
!124 = !{!"branch_weights", i32 1951, i32 1}
!125 = !{!"function_entry_count", i64 1850}
!126 = !{!"branch_weights", i32 1851, i32 1}
!127 = !{!"function_entry_count", i64 3150}
!128 = !{!"function_entry_count", i64 2954}
!129 = !{!130, !72, i64 280}
!130 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !131, i64 0, !77, i64 32, !136, i64 48, !72, i64 80, !72, i64 88, !72, i64 96, !74, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !139, i64 136, !72, i64 176, !72, i64 184, !72, i64 192, !114, i64 200, !72, i64 208, !72, i64 216, !72, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !72, i64 256, !72, i64 264, !72, i64 272, !72, i64 280, !141, i64 288, !74, i64 292}
!131 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !132, i64 0, !133, i64 8, !134, i64 16, !135, i64 24}
!132 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!133 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!134 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!135 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!136 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !72, i64 0, !72, i64 8, !137, i64 16}
!137 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !138, i64 0, !72, i64 8}
!138 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!139 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !140, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !141, i64 32, !141, i64 36}
!140 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!141 = !{!"int", !73, i64 0}
!142 = !{!"function_entry_count", i64 2562}
!143 = !{!"function_entry_count", i64 1231717351}
!144 = !{!"branch_weights", i32 621, i32 -1469098093}
!145 = !{!"branch_weights", i32 408901017, i32 1}
!146 = !{!"branch_weights", i32 267, i32 4}
!147 = !{!"branch_weights", i32 1, i32 4}
!148 = !{!"branch_weights", i32 156, i32 112}
!149 = !{!"branch_weights", i32 1, i32 112}
!150 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!151 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!152 = distinct !{!152, !93}
!153 = distinct !{!153, !93}
!154 = distinct !{!154, !93}
!155 = distinct !{!155, !93}
