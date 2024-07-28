class Items {
  final String imageUrl;
  final String bgUrl;
  final String title;
  final String desc;
  final Map<String, dynamic> detail;

  Items({
    required this.imageUrl,
    required this.bgUrl,
    required this.title,
    required this.desc,
    required this.detail,
  });
}

List<Items> items = [
  Items(
    imageUrl: "assets/cover/wedding-stories.png",
    bgUrl: "assets/image/wedding-stories-bg.png",
    title: "THE SIMS™ 4 My Wedding Stories Game Pack",
    desc:
        "The Sims 4 나의 결혼 이야기 게임팩에서 예식장 통로를 따라 걸어가세요! 특별한 날을 향한 심들의 여정에 함께하며 완벽한 예식을 계획하세요. 프러포즈에서 피로연에 이르기까지 모든 요소를 취향대로 조정하여 모든 심의 러브 스토리에 맞게 특별한 방식으로 축하하세요. 타르토사의 세계에서는 모든 것이 낭만적으로 변합니다.",
    detail: {
      "price": "22,000",
      "subTitle": [
        "파티 계획",
        "꿈을 현실로",
      ],
      "subDesc": [
        "프러포즈는 심이 앞둔 웨딩 일정의 단지 시작일 뿐입니다. 프러포즈에 동의하고 나면 흥분감과 긴장감이 느껴지기 시작하죠. 계획할 것이 너무 많습니다! 웨딩 통로를 걷는 여정을 최대한 즐겁게 만들어주는 들러리를 선택하세요. 그런 다음에는 약혼 만찬, 리허설, 싱글로서 보내는 잊지 못할 마지막 밤을 계획하세요. 그런 다음에는 약혼 만찬, 리허설, 싱글로서 보내는 잊지 못할 마지막 밤을 계획하세요.",
        "다가오는 결혼식을 세세한 부분까지 챙기세요. 결혼식 의상을 비롯하여 메뉴, 장식, 일정 등 중요한 순간에 필요한 모든 것을 선택하세요! 커뮤니티 크리에이터들이 설계한 예식장들을 구경하며 케이크를 맛보고 꽃장식을 연구하고 가장 의미 있는 날로 만들어줄 전통적인 의식을 고려하세요.",
      ],
      "subImages": [
        "assets/image/wedding-stories-desc1.png",
        "assets/image/wedding-stories-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/lovestruck.png",
    bgUrl: "assets/image/lovestruck-bg.png",
    title: "THE SIMS™ 4 Lovestruck Expansion Pack",
    desc:
        "큐피드의 조언 앱에서 가슴 떨리는 상대를 찾아보세요. 그런 다음 새로운 데이트 플랜 시스템을 이용하여 데이트를 준비하세요! 어디로 갈지, 무엇을 할지를 선택하여 설렘 가득한 로맨틱한 만남을 계획해 보세요. 심들은 게임을 하거나 침대에서 끌어안거나 낭만적인 담요를 가지고 아름다운 장소로 가서 특별한 순간을 보낼 수 있습니다.",
    detail: {
      "price": "44,000",
      "subTitle": [
        "뜨거운 데이트 계획",
        "끌림에 관한 모든 것",
      ],
      "subDesc": [
        "큐피드의 조언 앱에서 가슴 떨리는 상대를 찾아보세요. 그런 다음 새로운 데이트 플랜 시스템을 이용하여 데이트를 준비하세요! 어디로 갈지, 무엇을 할지를 선택하여 설렘 가득한 로맨틱한 만남을 계획해 보세요. 심들은 게임을 하거나 침대에서 끌어안거나 낭만적인 담요를 가지고 아름다운 장소로 가서 특별한 순간을 보낼 수 있습니다.",
        "내 심에게는 어떤 상대가 맞을까요? 매력 상승 요소와 매력 반감 요소는 심들이 서로에게 얼마나 끌릴지 결정합니다. 여기에는 관심사, 상호작용 등이 포함될 수 있습니다! 상대에 대해 알아가고, 관계를 형성하고, 연애 만족도를 유지하면서 이러한 요소들을 발견하세요. 저마다 좋아하거나 싫어하는 상호작용이 다르고, 파트너의 만족도가 서로 다를 수 있습니다. 서로의 상호작용에 따라 건강하거나, 화끈하거나, 어색하거나, 예측할 수 없는 로맨스 관계가 될 수 있습니다.",
      ],
      "subImages": [
        "assets/image/lovestruck-desc1.png",
        "assets/image/lovestruck-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/jungle-adventure.png",
    bgUrl: "assets/image/jungle-adventure-bg.png",
    title: "THE SIMS™ 4 Jungle Adventure Game Pack",
    desc:
        "독특한 야생의 자연을 탐사하면서 사원, 정글 장애물, 저주받은 유물, 보물을 발견하세요. 현지 음식을 맛보거나 새로운 춤동작을 배우는 등 셀바도라다의 문화와 풍습을 체험하세요!",
    detail: {
      "price": "22,000",
      "subTitle": [
        "셀바도라다에서 펼쳐지는 모험",
        "정글 탐사",
      ],
      "subDesc": [
        "새로운 여행지 셀바도라다로 떠나, 술집에서 현지인들과 친구가 되거나 필수적인 생존 장비를 구매하세요. 심들은 전통적인 음식을 맛보고, 새로운 음악에 맞춰 춤을 추고, 원주민 관습을 체험하고, 그들의 장식물을 구매할 수 있습니다. 화려한 패턴의 의상부터 정글에 맞는 내구성 좋은 복장에 이르기까지 심에게 현지 의상을 입히세요!",
        "위험에 대비하여 복장을 갖추고 정글 깊숙이 들어가세요. 숨겨진 연못을 발견하거나 고대의 유적지와 폐허를 발견할지도 모릅니다. 치명적인 벌에서 독거미에 이르기까지 자연의 위험과 장애물을 만날 수 있으니 정신을 바짝 차리세요!",
      ],
      "subImages": [
        "assets/image/jungle-adventure-desc1.png",
        "assets/image/jungle-adventure-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/horse-ranch.png",
    bgUrl: "assets/image/horse-ranch-bg.png",
    title: "THE SIMS™ 4 Horse Ranch Expansion Pack",
    desc:
        "이른 아침에 눈을 뜨고 탁 트인 대자연을 바라보며 그 동안 땀 흘린 가치를 느껴보세요. 동물을 행복하고 깨끗하게 키우고, 초원의 풀을 수확해 먹이로 주고, 말 분뇨를 모아 식물에 비료를 주고, 나만의 과즙을 판매하며 일상을 보내세요. 전통적인 오두막, 크고 빨간 헛간 등 직접 설계한 목장에서 이 모든 일을 해보세요.",
    detail: {
      "price": "44,000",
      "subTitle": [
        "동물과의 유대감",
        "말 키우기",
      ],
      "subDesc": [
        "목장을 동물 친구들로 채우고 함께 삶을 개척하세요. 사랑스러운 망아지를 포함한 말들은 가족 구성원 중 하나가 되며, 심들을 비롯해 다른 말과도 특별한 상호작용을 주고받습니다. 또한 미니 염소와 미니 양을 돌보고 이웃을 초대하여 귀여운 모습을 자랑해 보세요.",
        "말은 가족의 일원입니다. 심 만들기에서 발굽 달린 친구를 만들거나, 말을 구조하거나 구입하여 새로운 말을 얻으세요. 목장에서 망아지가 태어날 수도 있습니다. 심은 승마 기술을 배울 수 있고 말은 민첩성과 점프 기술을 훈련할 수 있습니다. 숙련된 말과 기수는 승마 센터에서 상을 받을 수도 있습니다.",
      ],
      "subImages": [
        "assets/image/horse-ranch-desc1.png",
        "assets/image/horse-ranch-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/paranormal.png",
    bgUrl: "assets/image/paranormal-bg.png",
    title: "THE SIMS™ 4 Paranormal Stuff Pack",
    desc:
        "The Sims™ 4 파라노멀 아이템팩에서 촛불을 켜고 새로운 유령 동거인을 달래는 의식을 준비하세요. 유령 불청객이 유령의 집 부지에서 장난을 치고 소동을 일으키지만 심들은 영혼 의식을 수행하거나 유령 귀드리와 친구가 되거나 초자연 현상 조사관이 되어 질서를 회복할 수 있습니다.",
    detail: {
      "price": "11,000",
      "subTitle": [
        "유령 동거인 만나기",
        "집 정화하기",
      ],
      "subDesc": [
        "새로 입주한 집에 이미 누군가가 살고 있을지도 모릅니다. 그곳이 새로운 유령의 집 부지라면요! 장난꾸러기 유령들을 달래서 잠잠하게 만들거나 밤낮으로 겁을 주려고 요란하게 돌아다니게 만드세요!",
        "새로운 유령 동거인들을 쫓아내고 싶다면 유령 귀드리가 기꺼이 조언해 줄 겁니다. 저주 받은 물건을 제거하거나 영혼 의식을 수행하거나 망자와 대화하거나 유령이 주는 선물을 받으세요! 심지어 해골 가정부 본힐다를 소환할 수도 있습니다.",
      ],
      "subImages": [
        "assets/image/paranormal-desc1.png",
        "assets/image/paranormal-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/cats-and-dogs.png",
    bgUrl: "assets/image/cats-and-dogs-bg.png",
    title: "THE SIMS™ 4 Cats & Dogs Expansion Pack",
    desc:
        "강력한 반려동물 만들기 도구를 이용하여 독특한 외모와 개성 넘치는 성격을 가진 고양이와 강아지를 만들어 보세요. 시리즈 사상 처음으로 반려동물에게 옷도 입힐 수 있습니다! 이 근사한 반려동물들은 심들의 인생을 새롭고 특별한 방식으로 바꿔 놓을 것입니다. 심들과 반려동물이 새로운 인생을 시작할 멋진 해안 마을도 추가됩니다. 이 아름다운 마을에서 수의사가 되어 동물의 질병을 치료하고 동물 병원을 운영해 보세요.",
    detail: {
      "price": "44,000",
      "subTitle": [
        "고양이와 강아지 만들기",
        "수의사가 되어 동물병원 운영하기",
      ],
      "subDesc": [
        "강력한 반려동물 만들기 도구로 창의력을 발휘해 나만의 고양이와 강아지를 만들어 보세요. 다양한 품종 중에서 선택하여 성격을 부여하고 외모를 직접 편집할 수 있습니다. 독특한 패턴으로 털을 조정하여 현실의 반려동물이나, 꿈꾸던 반려동물이나, 환상적인 반려동물까지 자유자재로 만들어 보세요. 그리고 시리즈 사상 처음으로 멋진 의상과 액세서리로 반려동물의 외모를 꾸밀 수 있습니다.",
        "동물 병원을 짓고, 직원을 고용하여 마을에서 가장 전도유망한 수의사로서의 커리어를 시작해 보세요. 어떤 서비스를 제공할지, 비용을 얼마나 청구할지 등 병원의 모든 운영을 여러분이 컨트롤하게 됩니다. 간단한 약물 처방에서부터 벼룩잡기, 반려동물의 질병 진단하기, 수술로 반려동물 치료하기 등 수의사로서의 다양한 활동이 기다립니다.",
      ],
      "subImages": [
        "assets/image/cats-and-dogs-desc1.png",
        "assets/image/cats-and-dogs-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/high-school-years.png",
    bgUrl: "assets/image/high-school-years-bg.png",
    title: "THE SIMS™ 4 High School Years Expansion Pack",
    desc:
        "The Sims 4 하이스쿨 라이프 확장팩으로 모범생이나 문제아가 되거나, 클럽에 가입하거나, 트렌드를 이끌며 10대 시절을 최대한 즐기세요! 프롬에 참석하거나, 고약한 장난을 치거나, 정체성과 트렌드를 탐색하거나, 방과 후 활동을 통해 친구나 경쟁자를 만드는 등 청소년기의 다양한 활동을 경험하세요. 졸업하기 전까지 할 수 있는 일이 무척 많습니다. 청소년 심은 수업에 출석하거나, 선생님들과 교류하거나, 스타일 인플루언서나 스트리머가 되어 시몰레온을 벌 수도 있습니다!",
    detail: {
      "price": "44,000",
      "subTitle": [
        "즐거운 고등학교",
        "청소년기의 중요한 순간",
      ],
      "subDesc": [
        "고교 시절의 온갖 우여곡절을 경험하세요. 직접 수업에 출석하고, 선생님과 친해지고, 매점에서 친구들과 어울리고, 사물함을 멋지게 꾸미세요. 하지만 오랫동안 잊지 못할 순간은 방과 후에 친구들과 어울릴 때 찾아올 수도 있습니다.",
        "프롬에서 밤새 춤을 추고, (학업에 충실했다면) 가족, 친구들과 함께 졸업식을 축하하세요. 그런 중요한 순간 외에도 심들은 평생의 친구를 사귀거나, 방과 후 활동에 참여하며 롤러코스터처럼 기복이 심한 사춘기의 혼란을 경험할 수 있습니다.",
      ],
      "subImages": [
        "assets/image/high-school-years-desc1.png",
        "assets/image/high-school-years-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/laundry-day.png",
    bgUrl: "assets/image/laundry-day-bg.png",
    title: "THE SIMS™ 4 Laundry Day Stuff Pack",
    desc:
        "이제 심들은 옷을 세탁하고, 컨트리 스타일 장식으로 집을 꾸밀 수 있습니다. The Sims™ 4 빨래하는 날 아이템팩으로 시골풍의 집에서 목가적인 삶을 즐기며, 더러운 옷에 작별을 고하고 티 없이 깨끗하고 뽀송뽀송한 옷을 과시하세요.",
    detail: {
      "price": "11,000",
      "subTitle": [
        "오늘도 빨래 끝!",
        "시골 분위기의 집",
      ],
      "subDesc": [
        "세탁물을 모아 세탁기에 넣고 빨래가 다 되면 건조기에 넣어서 돌리세요. 세탁 가전을 업그레이드하면 세탁 속도가 빨라지거나 소음이 줄어듭니다. 제대로 된 시골 생활을 즐기고 싶습니까? 그렇다면 커다란 빨래통에 옷을 넣고 직접 손빨래한 후에 빨랫줄에 널어 말려 보세요!",
        "심들의 유유자적한 생활에 잘 어울리는 컨트리 스타일 아이템으로 집을 멋지게 꾸미세요. 원목 테이블이나 고리버들로 만든 가구를 이용하여 공간을 장식하세요. 형형색색의 화려한 러그, 꽃이 가득한 바구니, 활력 넘치는 다육식물 등 다양한 장식 아이템을 곳곳에 추가하세요!",
      ],
      "subImages": [
        "assets/image/laundry-day-desc1.png",
        "assets/image/laundry-day-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/spa-day.png",
    bgUrl: "assets/image/spa-day-bg.png",
    title: "THE SIMS™ 4 Spa Day Game Pack",
    desc:
        "The Sims 4 스파 데이 게임팩 리프레시*로 최고의 호사를 누리세요. 요가와 명상을 통해 심신을 이완하고 고급스러운 서비스를 받으며 휴식하세요. 사우나에서 스트레스를 해소하거나 활력 충전 마사지, 머드 목욕, 손톱 및 발톱 관리로 심들을 호강시켜주세요. 아이들도 데려오세요. 스파 테마의 아이템과 장식으로 집에서도 평온함과 휴식을 누리세요.",
    detail: {
      "price": "22,000",
      "subTitle": [
        "스파에 가기",
        "웰빙에 집중",
      ],
      "subDesc": [
        "새로운 편의시설이 조용하고 친근한 분위기를 제공합니다. 스트레스가 아무리 심해도 활력을 충전시킬 다양한 활동과 부대시설이 준비되어 있습니다. 기존 스파 건물을 이용하거나 나만의 스파를 짓거나 아니면 집에 휴식을 위한 설비를 갖춰보세요! 리프레시: 새로운 특성이 추가됩니다! 손이 많이 가는 심들은 일상의 사소한 문제로 고군분투할 수 있지만, 스파에 가면 카타르시스에 도달하고 많은 문제가 저절로 풀리게 됩니다.",
        "새로운 웰빙 기술로 몸, 마음, 감정의 주인이 되세요. 요가와 명상을 통해 레벨을 올리세요. 웰빙 기술이 높아지면 공중 부양과 순간 이동의 비밀이 열립니다. 리프레시: 아이들을 초대하는 것을 잊지 마세요(네, 이제 아이들도 웰빙 활동에 참여할 수 있어요). 또한, 다른 심에게 마음 챙김으로 절제하는 법을 가르치면서 부수입을 올릴 수 있습니다. 또한, 웰빙 레벨을 높여 참선 현자 또는 셀프 케어 전문가가 될 수도 있습니다.",
      ],
      "subImages": [
        "assets/image/spa-day-desc1.png",
        "assets/image/spa-day-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/perfect-patio.png",
    bgUrl: "assets/image/perfect-patio-bg.png",
    title: "THE SIMS™ 4 Perfect Patio Stuff Pack",
    desc:
        "The Sims™ 4 완벽한 테라스 아이템팩의 새로운 온수 욕조, 가구, 장식, 헤어스타일 등으로 심들이 좋아할 멋진 실외 공간을 만드세요. 바비큐 그릴에 불을 피우고 세련된 스타일로 편히 휴식할 수 있는 캐주얼한 의상으로 갈아입으세요. 새로운 테라스 바에서 시원한 음료를 만들어 대접하거나 온수 욕조에서 공기 방울 마사지를 즐기세요. 뜨겁지만 지나치게 뜨겁지는 않습니다.",
    detail: {
      "price": "11,000",
      "subTitle": [
        "온수 욕조에서 휴식하세요",
        "테라스에서 즐기는 바비큐",
      ],
      "subDesc": [
        "야외 테라스에 온수 욕조를 추가하세요! 공기 방울 마사지를 받으며 휴식하거나 친구들과 물장구를 치며 즐기세요. 손재주가 있는 심들은 스테레오나 아로마테라피 기능을 추가할 수 있습니다!",
        "다양하고 세련된 야외용 가구와 장식으로 수영장 주변에 노천 휴식 공간을 만드세요. 바비큐 그릴에서 군침 도는 음식을 조리하거나 테라스 바에서 시원한 음료를 만들어도 좋습니다.",
      ],
      "subImages": [
        "assets/image/perfect-patio-desc1.png",
        "assets/image/perfect-patio-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/vampires.png",
    bgUrl: "assets/image/vampires-bg.png",
    title: "THE SIMS™ 4 Vampires Game Pack",
    desc:
        "The Sims™ 4 뱀파이어에서 강력한 능력을 갖춘 뱀파이어가 되어 음산한 기운이 흐르는 새로운 마을에서 영생을 누리세요. 새로운 기능으로 다양한 뱀파이어를 만들고, 초자연적인 능력을 주는 독특한 파워를 해제하세요. 포가튼 할로우로 가서 영원의 안식처를 짓고 다른 뱀파이어와 교류하세요.",
    detail: {
      "price": "22,000",
      "subTitle": [
        "초자연적인 능력",
        "영원한 생명",
      ],
      "subDesc": [
        "다른 심의 마음을 조종하고 영적인 에너지를 사용할 수 있는 다양한 힘을 획득하세요. 하지만 힘을 얻으면 균형을 이루기 위해 약점도 생깁니다. 웅장한 결투에서 승리하여 랭크가 상승하면 새로운 파워가 해제됩니다.",
        "뱀파이어의 삶을 체험하고 어떤 방식으로 살아갈지 선택하세요. 갈증을 달래기 위해 다른 심의 피를 마실까요? 아니면 혈장 과일을 섭취할까요? 사악한 악행에 몰두할까요? 아니면 주변과 조화를 이룬 뱀파이어 가족으로 살아갈까요? 어떤 선택을 하든, 마늘이 들어간 음식과 햇빛은 피하세요!",
      ],
      "subImages": [
        "assets/image/vampires-desc1.png",
        "assets/image/vampires-desc2.png",
      ],
    },
  ),
  Items(
    imageUrl: "assets/cover/my-first-pet.png",
    bgUrl: "assets/image/my-first-pet-bg.png",
    title: "THE SIMS™ 4 My First Pet Stuff Pack",
    desc:
        "The Sims™ 4 나의 첫 반려동물 아이템으로 새로운 작은 동물 친구를 집에 맞아들이고 고양이와 강아지에 대한 애정을 보여주세요. 소형 반려동물을 키우는 법을 배우고 반려동물 테마의 가구로 집을 장식하고 반려동물에게 멋진 옷을 입혀주세요!",
    detail: {
      "price": "11,000",
      "subTitle": [
        "새로운 반려동물 키우기",
        "반려동물 프린트로 장식하기",
      ],
      "subDesc": [
        "햄스터, 쥐, 피그미 고슴도치, 미니 버발루스 같은 새로운 소형 반려동물의 사육장을 추가하세요! 새로운 반려동물의 이름을 지어주고, 놀이, 청결, 건강 관리 등 반려동물을 보살피는 방법을 배우세요. 심들이 배워야 할 것이 아주 많답니다!",
        "독특한 디자인의 장식으로 거실을 장식하거나 반려동물 테마 가구로 아이 방을 꾸며주세요. 심을 위한 귀여운 고양이 베개부터 고양이와 강아지를 위한 화려한 침대에 이르기까지 모두를 위한 아이템이 준비되어 있습니다.",
      ],
      "subImages": [
        "assets/image/my-first-pet-desc1.png",
        "assets/image/my-first-pet-desc2.png",
      ],
    },
  ),
];
