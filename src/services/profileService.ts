export function getProfiles() {
  return JSON.parse(localStorage.getItem("profiles") || "[]");
}

export function saveProfiles(profiles: any[]) {
  localStorage.setItem("profiles", JSON.stringify(profiles));
}
